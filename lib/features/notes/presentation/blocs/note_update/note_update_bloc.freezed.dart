// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteUpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Note payload) payloadChanged,
    required TResult Function() requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Note payload)? payloadChanged,
    TResult? Function()? requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Note payload)? payloadChanged,
    TResult Function()? requested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PayloadChanged value) payloadChanged,
    required TResult Function(_Requested value) requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PayloadChanged value)? payloadChanged,
    TResult? Function(_Requested value)? requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PayloadChanged value)? payloadChanged,
    TResult Function(_Requested value)? requested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteUpdateEventCopyWith<$Res> {
  factory $NoteUpdateEventCopyWith(
          NoteUpdateEvent value, $Res Function(NoteUpdateEvent) then) =
      _$NoteUpdateEventCopyWithImpl<$Res, NoteUpdateEvent>;
}

/// @nodoc
class _$NoteUpdateEventCopyWithImpl<$Res, $Val extends NoteUpdateEvent>
    implements $NoteUpdateEventCopyWith<$Res> {
  _$NoteUpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$NoteUpdateEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'NoteUpdateEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Note payload) payloadChanged,
    required TResult Function() requested,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Note payload)? payloadChanged,
    TResult? Function()? requested,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Note payload)? payloadChanged,
    TResult Function()? requested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PayloadChanged value) payloadChanged,
    required TResult Function(_Requested value) requested,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PayloadChanged value)? payloadChanged,
    TResult? Function(_Requested value)? requested,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PayloadChanged value)? payloadChanged,
    TResult Function(_Requested value)? requested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NoteUpdateEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$PayloadChangedImplCopyWith<$Res> {
  factory _$$PayloadChangedImplCopyWith(_$PayloadChangedImpl value,
          $Res Function(_$PayloadChangedImpl) then) =
      __$$PayloadChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Note payload});

  $NoteCopyWith<$Res> get payload;
}

/// @nodoc
class __$$PayloadChangedImplCopyWithImpl<$Res>
    extends _$NoteUpdateEventCopyWithImpl<$Res, _$PayloadChangedImpl>
    implements _$$PayloadChangedImplCopyWith<$Res> {
  __$$PayloadChangedImplCopyWithImpl(
      _$PayloadChangedImpl _value, $Res Function(_$PayloadChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$PayloadChangedImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get payload {
    return $NoteCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc

class _$PayloadChangedImpl implements _PayloadChanged {
  const _$PayloadChangedImpl({required this.payload});

  @override
  final Note payload;

  @override
  String toString() {
    return 'NoteUpdateEvent.payloadChanged(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayloadChangedImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayloadChangedImplCopyWith<_$PayloadChangedImpl> get copyWith =>
      __$$PayloadChangedImplCopyWithImpl<_$PayloadChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Note payload) payloadChanged,
    required TResult Function() requested,
  }) {
    return payloadChanged(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Note payload)? payloadChanged,
    TResult? Function()? requested,
  }) {
    return payloadChanged?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Note payload)? payloadChanged,
    TResult Function()? requested,
    required TResult orElse(),
  }) {
    if (payloadChanged != null) {
      return payloadChanged(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PayloadChanged value) payloadChanged,
    required TResult Function(_Requested value) requested,
  }) {
    return payloadChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PayloadChanged value)? payloadChanged,
    TResult? Function(_Requested value)? requested,
  }) {
    return payloadChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PayloadChanged value)? payloadChanged,
    TResult Function(_Requested value)? requested,
    required TResult orElse(),
  }) {
    if (payloadChanged != null) {
      return payloadChanged(this);
    }
    return orElse();
  }
}

abstract class _PayloadChanged implements NoteUpdateEvent {
  const factory _PayloadChanged({required final Note payload}) =
      _$PayloadChangedImpl;

  Note get payload;
  @JsonKey(ignore: true)
  _$$PayloadChangedImplCopyWith<_$PayloadChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestedImplCopyWith<$Res> {
  factory _$$RequestedImplCopyWith(
          _$RequestedImpl value, $Res Function(_$RequestedImpl) then) =
      __$$RequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestedImplCopyWithImpl<$Res>
    extends _$NoteUpdateEventCopyWithImpl<$Res, _$RequestedImpl>
    implements _$$RequestedImplCopyWith<$Res> {
  __$$RequestedImplCopyWithImpl(
      _$RequestedImpl _value, $Res Function(_$RequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestedImpl implements _Requested {
  const _$RequestedImpl();

  @override
  String toString() {
    return 'NoteUpdateEvent.requested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Note payload) payloadChanged,
    required TResult Function() requested,
  }) {
    return requested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Note payload)? payloadChanged,
    TResult? Function()? requested,
  }) {
    return requested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Note payload)? payloadChanged,
    TResult Function()? requested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PayloadChanged value) payloadChanged,
    required TResult Function(_Requested value) requested,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PayloadChanged value)? payloadChanged,
    TResult? Function(_Requested value)? requested,
  }) {
    return requested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PayloadChanged value)? payloadChanged,
    TResult Function(_Requested value)? requested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class _Requested implements NoteUpdateEvent {
  const factory _Requested() = _$RequestedImpl;
}

/// @nodoc
mixin _$NoteUpdateState {
  bool get inProcess => throw _privateConstructorUsedError;
  Note get payload => throw _privateConstructorUsedError;
  dynamic get success => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteUpdateStateCopyWith<NoteUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteUpdateStateCopyWith<$Res> {
  factory $NoteUpdateStateCopyWith(
          NoteUpdateState value, $Res Function(NoteUpdateState) then) =
      _$NoteUpdateStateCopyWithImpl<$Res, NoteUpdateState>;
  @useResult
  $Res call(
      {bool inProcess, Note payload, dynamic success, String? failureMessage});

  $NoteCopyWith<$Res> get payload;
}

/// @nodoc
class _$NoteUpdateStateCopyWithImpl<$Res, $Val extends NoteUpdateState>
    implements $NoteUpdateStateCopyWith<$Res> {
  _$NoteUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProcess = null,
    Object? payload = null,
    Object? success = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_value.copyWith(
      inProcess: null == inProcess
          ? _value.inProcess
          : inProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Note,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as dynamic,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get payload {
    return $NoteCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteUpdateStateImplCopyWith<$Res>
    implements $NoteUpdateStateCopyWith<$Res> {
  factory _$$NoteUpdateStateImplCopyWith(_$NoteUpdateStateImpl value,
          $Res Function(_$NoteUpdateStateImpl) then) =
      __$$NoteUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool inProcess, Note payload, dynamic success, String? failureMessage});

  @override
  $NoteCopyWith<$Res> get payload;
}

/// @nodoc
class __$$NoteUpdateStateImplCopyWithImpl<$Res>
    extends _$NoteUpdateStateCopyWithImpl<$Res, _$NoteUpdateStateImpl>
    implements _$$NoteUpdateStateImplCopyWith<$Res> {
  __$$NoteUpdateStateImplCopyWithImpl(
      _$NoteUpdateStateImpl _value, $Res Function(_$NoteUpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProcess = null,
    Object? payload = null,
    Object? success = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_$NoteUpdateStateImpl(
      inProcess: null == inProcess
          ? _value.inProcess
          : inProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Note,
      success: freezed == success ? _value.success! : success,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoteUpdateStateImpl implements _NoteUpdateState {
  const _$NoteUpdateStateImpl(
      {this.inProcess = false,
      required this.payload,
      this.success = false,
      this.failureMessage});

  @override
  @JsonKey()
  final bool inProcess;
  @override
  final Note payload;
  @override
  @JsonKey()
  final dynamic success;
  @override
  final String? failureMessage;

  @override
  String toString() {
    return 'NoteUpdateState(inProcess: $inProcess, payload: $payload, success: $success, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteUpdateStateImpl &&
            (identical(other.inProcess, inProcess) ||
                other.inProcess == inProcess) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inProcess, payload,
      const DeepCollectionEquality().hash(success), failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteUpdateStateImplCopyWith<_$NoteUpdateStateImpl> get copyWith =>
      __$$NoteUpdateStateImplCopyWithImpl<_$NoteUpdateStateImpl>(
          this, _$identity);
}

abstract class _NoteUpdateState implements NoteUpdateState {
  const factory _NoteUpdateState(
      {final bool inProcess,
      required final Note payload,
      final dynamic success,
      final String? failureMessage}) = _$NoteUpdateStateImpl;

  @override
  bool get inProcess;
  @override
  Note get payload;
  @override
  dynamic get success;
  @override
  String? get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$NoteUpdateStateImplCopyWith<_$NoteUpdateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
