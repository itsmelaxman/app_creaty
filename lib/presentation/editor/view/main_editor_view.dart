import 'package:app_creaty/commons/router/app_router.dart';
import 'package:app_creaty/l10n/l10n.dart';
import 'package:app_creaty/models/app_creaty_project.dart';
import 'package:app_creaty/presentation/editor/bloc/editor_bloc.dart';
import 'package:app_creaty/presentation/editor/editor.dart';
import 'package:app_creaty/presentation/virtual_app/virtual_app.dart';
import 'package:app_creaty/presentation/widgets/app_confirmation_alert_dialog.dart';
import 'package:app_creaty/presentation/widgets/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MainEditorPage extends StatelessWidget {
  const MainEditorPage({super.key, required this.project});

  final AppCreatyProject project;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => EditorBloc(project: project),
        ),
        BlocProvider<VirtualAppBloc>(
          create: (context) => VirtualAppBloc(
            editorBloc: context.read<EditorBloc>(),
          ),
        ),
      ],
      child: const MainEditorView(),
    );
  }
}

class MainEditorView extends StatefulWidget {
  const MainEditorView({super.key});

  @override
  State<MainEditorView> createState() => _MainEditorViewState();
}

class _MainEditorViewState extends State<MainEditorView> {
  late final ValueNotifier<int> _currentTabNotifier;

  @override
  void initState() {
    super.initState();
    _currentTabNotifier = ValueNotifier(0);
  }

  void _onHomeButtonPressed() {
    showConfirmationDialog<void>(
      context,
      title: context.l10n.returnHomeQuestion,
      description: context.l10n.returnHomeQuestionDescription,
      onConfirmPressed: () => context.go(AppRouter.routePathHomePage),
      onCancelPressed: () => context.pop(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final loadingStatus =
        context.select((VirtualAppBloc bloc) => bloc.state.loadingStatus);
    if (loadingStatus.isLoading) {
      final loadingView = const LoadingView()
          .animate()
          .fadeIn(duration: 500.ms)
          .then(delay: 3.5.seconds)
          .fadeOut(duration: 500.ms);
      return Scaffold(
        body: Center(
          child: loadingView,
        ),
      );
    }
    if (loadingStatus.isInitial) {
      return Container();
    }
    if (loadingStatus.isError) {
      return const Center(
        child: Text('Editor Error'),
      );
    }
    final mainEditorView = BlocListener<VirtualAppBloc, VirtualAppState>(
      listenWhen: (previous, current) =>
          previous.handleRequest != current.handleRequest,
      listener: (context, state) {
        if (state.handleRequest?.isHasChild ?? false) {
          final handleRequest = state.handleRequest!;
          showConfirmationDialog<void>(
            context,
            title: 'Are you want to override?',
            description: 'Yes/No',
            onCancelPressed: () => context.pop(),
            onConfirmPressed: () => context
              ..pop()
              ..read<VirtualAppBloc>().add(
                AddWidgetToTree(
                  widget: handleRequest.childWidget,
                  overwriteIfHasChild: true,
                  parent: handleRequest.parentWidget,
                ),
              ),
          );
        }
      },
      child: Scaffold(
        appBar: EditorAppBar(
          onHomeButtonPressed: _onHomeButtonPressed,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Row(
            children: [
              AppEditorNavigationRail(
                onIndexChanged: (onIndexChanged) =>
                    _currentTabNotifier.value = onIndexChanged,
              ),
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: _currentTabNotifier,
                  builder: (context, currentIndex, _) {
                    return EditorPanel(
                      currentIndex: currentIndex,
                    );
                  },
                ),
              ),
            ],
          ),
        ).animate().fadeIn(duration: 200.ms),
      ),
    );
    return mainEditorView;
  }
}
