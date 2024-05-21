// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRequested value) loadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRequested value)? loadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListEventCopyWith<$Res> {
  factory $NoteListEventCopyWith(
          NoteListEvent value, $Res Function(NoteListEvent) then) =
      _$NoteListEventCopyWithImpl<$Res, NoteListEvent>;
}

/// @nodoc
class _$NoteListEventCopyWithImpl<$Res, $Val extends NoteListEvent>
    implements $NoteListEventCopyWith<$Res> {
  _$NoteListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadRequestedImplCopyWith<$Res> {
  factory _$$LoadRequestedImplCopyWith(
          _$LoadRequestedImpl value, $Res Function(_$LoadRequestedImpl) then) =
      __$$LoadRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRequestedImplCopyWithImpl<$Res>
    extends _$NoteListEventCopyWithImpl<$Res, _$LoadRequestedImpl>
    implements _$$LoadRequestedImplCopyWith<$Res> {
  __$$LoadRequestedImplCopyWithImpl(
      _$LoadRequestedImpl _value, $Res Function(_$LoadRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadRequestedImpl implements _LoadRequested {
  const _$LoadRequestedImpl();

  @override
  String toString() {
    return 'NoteListEvent.loadRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
  }) {
    return loadRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
  }) {
    return loadRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRequested value) loadRequested,
  }) {
    return loadRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRequested value)? loadRequested,
  }) {
    return loadRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested(this);
    }
    return orElse();
  }
}

abstract class _LoadRequested implements NoteListEvent {
  const factory _LoadRequested() = _$LoadRequestedImpl;
}

/// @nodoc
mixin _$NoteListState {
  List<Note> get data => throw _privateConstructorUsedError;
  bool get inProcess => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteListStateCopyWith<NoteListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListStateCopyWith<$Res> {
  factory $NoteListStateCopyWith(
          NoteListState value, $Res Function(NoteListState) then) =
      _$NoteListStateCopyWithImpl<$Res, NoteListState>;
  @useResult
  $Res call(
      {List<Note> data, bool inProcess, bool success, String? failureMessage});
}

/// @nodoc
class _$NoteListStateCopyWithImpl<$Res, $Val extends NoteListState>
    implements $NoteListStateCopyWith<$Res> {
  _$NoteListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? inProcess = null,
    Object? success = null,
    Object? failureMessage = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      inProcess: null == inProcess
          ? _value.inProcess
          : inProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteListStateImplCopyWith<$Res>
    implements $NoteListStateCopyWith<$Res> {
  factory _$$NoteListStateImplCopyWith(
          _$NoteListStateImpl value, $Res Function(_$NoteListStateImpl) then) =
      __$$NoteListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Note> data, bool inProcess, bool success, String? failureMessage});
}

/// @nodoc
class __$$NoteListStateImplCopyWithImpl<$Res>
    extends _$NoteListStateCopyWithImpl<$Res, _$NoteListStateImpl>
    implements _$$NoteListStateImplCopyWith<$Res> {
  __$$NoteListStateImplCopyWithImpl(
      _$NoteListStateImpl _value, $Res Function(_$NoteListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? inProcess = null,
    Object? success = null,
    Object? failureMessage = freezed,
  }) {
    return _then(_$NoteListStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      inProcess: null == inProcess
          ? _value.inProcess
          : inProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoteListStateImpl implements _NoteListState {
  const _$NoteListStateImpl(
      {final List<Note> data = const [],
      this.inProcess = false,
      this.success = false,
      this.failureMessage})
      : _data = data;

  final List<Note> _data;
  @override
  @JsonKey()
  List<Note> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool inProcess;
  @override
  @JsonKey()
  final bool success;
  @override
  final String? failureMessage;

  @override
  String toString() {
    return 'NoteListState(data: $data, inProcess: $inProcess, success: $success, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.inProcess, inProcess) ||
                other.inProcess == inProcess) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      inProcess,
      success,
      failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteListStateImplCopyWith<_$NoteListStateImpl> get copyWith =>
      __$$NoteListStateImplCopyWithImpl<_$NoteListStateImpl>(this, _$identity);
}

abstract class _NoteListState implements NoteListState {
  const factory _NoteListState(
      {final List<Note> data,
      final bool inProcess,
      final bool success,
      final String? failureMessage}) = _$NoteListStateImpl;

  @override
  List<Note> get data;
  @override
  bool get inProcess;
  @override
  bool get success;
  @override
  String? get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$NoteListStateImplCopyWith<_$NoteListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
