import 'package:app_creaty/models/app_creaty_project.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'editor_bloc.freezed.dart';
part 'editor_event.dart';
part 'editor_state.dart';

class EditorBloc extends Bloc<EditorEvent, EditorState> {
  EditorBloc({required AppCreatyProject project})
      : super(
          EditorState(
            currentDevice: Devices.android.samsungGalaxyA50,
            currentProject: project,
          ),
        ) {
    on<EditorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
