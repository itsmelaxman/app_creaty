// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'virtual_app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VirtualAppState {
  Map<String, dynamic> get virtualAppWidgetData =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> get selectedWidgetData =>
      throw _privateConstructorUsedError;
  List<AppCreatyPage> get pages => throw _privateConstructorUsedError;
  LoadingStatus get loadingStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VirtualAppStateCopyWith<VirtualAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VirtualAppStateCopyWith<$Res> {
  factory $VirtualAppStateCopyWith(
          VirtualAppState value, $Res Function(VirtualAppState) then) =
      _$VirtualAppStateCopyWithImpl<$Res, VirtualAppState>;
  @useResult
  $Res call(
      {Map<String, dynamic> virtualAppWidgetData,
      Map<String, dynamic> selectedWidgetData,
      List<AppCreatyPage> pages,
      LoadingStatus loadingStatus});
}

/// @nodoc
class _$VirtualAppStateCopyWithImpl<$Res, $Val extends VirtualAppState>
    implements $VirtualAppStateCopyWith<$Res> {
  _$VirtualAppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? virtualAppWidgetData = null,
    Object? selectedWidgetData = null,
    Object? pages = null,
    Object? loadingStatus = null,
  }) {
    return _then(_value.copyWith(
      virtualAppWidgetData: null == virtualAppWidgetData
          ? _value.virtualAppWidgetData
          : virtualAppWidgetData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      selectedWidgetData: null == selectedWidgetData
          ? _value.selectedWidgetData
          : selectedWidgetData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<AppCreatyPage>,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VirtualAppStateCopyWith<$Res>
    implements $VirtualAppStateCopyWith<$Res> {
  factory _$$_VirtualAppStateCopyWith(
          _$_VirtualAppState value, $Res Function(_$_VirtualAppState) then) =
      __$$_VirtualAppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> virtualAppWidgetData,
      Map<String, dynamic> selectedWidgetData,
      List<AppCreatyPage> pages,
      LoadingStatus loadingStatus});
}

/// @nodoc
class __$$_VirtualAppStateCopyWithImpl<$Res>
    extends _$VirtualAppStateCopyWithImpl<$Res, _$_VirtualAppState>
    implements _$$_VirtualAppStateCopyWith<$Res> {
  __$$_VirtualAppStateCopyWithImpl(
      _$_VirtualAppState _value, $Res Function(_$_VirtualAppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? virtualAppWidgetData = null,
    Object? selectedWidgetData = null,
    Object? pages = null,
    Object? loadingStatus = null,
  }) {
    return _then(_$_VirtualAppState(
      virtualAppWidgetData: null == virtualAppWidgetData
          ? _value._virtualAppWidgetData
          : virtualAppWidgetData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      selectedWidgetData: null == selectedWidgetData
          ? _value._selectedWidgetData
          : selectedWidgetData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<AppCreatyPage>,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
    ));
  }
}

/// @nodoc

class _$_VirtualAppState implements _VirtualAppState {
  const _$_VirtualAppState(
      {required final Map<String, dynamic> virtualAppWidgetData,
      required final Map<String, dynamic> selectedWidgetData,
      final List<AppCreatyPage> pages = const [],
      this.loadingStatus = LoadingStatus.initial})
      : _virtualAppWidgetData = virtualAppWidgetData,
        _selectedWidgetData = selectedWidgetData,
        _pages = pages;

  final Map<String, dynamic> _virtualAppWidgetData;
  @override
  Map<String, dynamic> get virtualAppWidgetData {
    if (_virtualAppWidgetData is EqualUnmodifiableMapView)
      return _virtualAppWidgetData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_virtualAppWidgetData);
  }

  final Map<String, dynamic> _selectedWidgetData;
  @override
  Map<String, dynamic> get selectedWidgetData {
    if (_selectedWidgetData is EqualUnmodifiableMapView)
      return _selectedWidgetData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedWidgetData);
  }

  final List<AppCreatyPage> _pages;
  @override
  @JsonKey()
  List<AppCreatyPage> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  @JsonKey()
  final LoadingStatus loadingStatus;

  @override
  String toString() {
    return 'VirtualAppState(virtualAppWidgetData: $virtualAppWidgetData, selectedWidgetData: $selectedWidgetData, pages: $pages, loadingStatus: $loadingStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VirtualAppState &&
            const DeepCollectionEquality()
                .equals(other._virtualAppWidgetData, _virtualAppWidgetData) &&
            const DeepCollectionEquality()
                .equals(other._selectedWidgetData, _selectedWidgetData) &&
            const DeepCollectionEquality().equals(other._pages, _pages) &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_virtualAppWidgetData),
      const DeepCollectionEquality().hash(_selectedWidgetData),
      const DeepCollectionEquality().hash(_pages),
      loadingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VirtualAppStateCopyWith<_$_VirtualAppState> get copyWith =>
      __$$_VirtualAppStateCopyWithImpl<_$_VirtualAppState>(this, _$identity);
}

abstract class _VirtualAppState implements VirtualAppState {
  const factory _VirtualAppState(
      {required final Map<String, dynamic> virtualAppWidgetData,
      required final Map<String, dynamic> selectedWidgetData,
      final List<AppCreatyPage> pages,
      final LoadingStatus loadingStatus}) = _$_VirtualAppState;

  @override
  Map<String, dynamic> get virtualAppWidgetData;
  @override
  Map<String, dynamic> get selectedWidgetData;
  @override
  List<AppCreatyPage> get pages;
  @override
  LoadingStatus get loadingStatus;
  @override
  @JsonKey(ignore: true)
  _$$_VirtualAppStateCopyWith<_$_VirtualAppState> get copyWith =>
      throw _privateConstructorUsedError;
}
