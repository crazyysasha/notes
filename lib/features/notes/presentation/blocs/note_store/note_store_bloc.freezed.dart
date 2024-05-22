// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_store_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteStoreEvent {
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
abstract class $NoteStoreEventCopyWith<$Res> {
  factory $NoteStoreEventCopyWith(
          NoteStoreEvent value, $Res Function(NoteStoreEvent) then) =
      _$NoteStoreEventCopyWithImpl<$Res, NoteStoreEvent>;
}

/// @nodoc
class _$NoteStoreEventCopyWithImpl<$Res, $Val extends NoteStoreEvent>
    implements $NoteStoreEventCopyWith<$Res> {
  _$NoteStoreEventCopyWithImpl(this._value, this._then);

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
    extends _$NoteStoreEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'NoteStoreEvent.started()';
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

abstract class _Started implements NoteStoreEvent {
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
    extends _$NoteStoreEventCopyWithImpl<$Res, _$PayloadChangedImpl>
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
    return 'NoteStoreEvent.payloadChanged(payload: $payload)';
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

abstract class _PayloadChanged implements NoteStoreEvent {
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
    extends _$NoteStoreEventCopyWithImpl<$Res, _$RequestedImpl>
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
    return 'NoteStoreEvent.requested()';
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

abstract class _Requested implements NoteStoreEvent {
  const factory _Requested() = _$RequestedImpl;
}

/// @nodoc
mixin _$NoteStoreState {
  dynamic get inProcess => throw _privateConstructorUsedError;
  Note get payload => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteStoreStateCopyWith<NoteStoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteStoreStateCopyWith<$Res> {
  factory $NoteStoreStateCopyWith(
          NoteStoreState value, $Res Function(NoteStoreState) then) =
      _$NoteStoreStateCopyWithImpl<$Res, NoteStoreState>;
  @useResult
  $Res call(
      {dynamic inProcess, Note payload, bool success, String? failureMessage});

  $NoteCopyWith<$Res> get payload;
}

/// @nodoc
class _$NoteStoreStateCopyWithImpl<$Res, $Val extends NoteStoreState>
    implements $NoteStoreStateCopyWith<$Res> {
  _$NoteStoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProcess = freezed,
    Object? payload = null,
    Object? success = null,
    Object? failureMessage = freezed,
  }) {
    return _then(_value.copyWith(
      inProcess: freezed == inProcess
          ? _value.inProcess
          : inProcess // ignore: cast_nullable_to_non_nullable
              as dynamic,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Note,
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

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get payload {
    return $NoteCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteStoreStateImplCopyWith<$Res>
    implements $NoteStoreStateCopyWith<$Res> {
  factory _$$NoteStoreStateImplCopyWith(_$NoteStoreStateImpl value,
          $Res Function(_$NoteStoreStateImpl) then) =
      __$$NoteStoreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic inProcess, Note payload, bool success, String? failureMessage});

  @override
  $NoteCopyWith<$Res> get payload;
}

/// @nodoc
class __$$NoteStoreStateImplCopyWithImpl<$Res>
    extends _$NoteStoreStateCopyWithImpl<$Res, _$NoteStoreStateImpl>
    implements _$$NoteStoreStateImplCopyWith<$Res> {
  __$$NoteStoreStateImplCopyWithImpl(
      _$NoteStoreStateImpl _value, $Res Function(_$NoteStoreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProcess = freezed,
    Object? payload = null,
    Object? success = null,
    Object? failureMessage = freezed,
  }) {
    return _then(_$NoteStoreStateImpl(
      inProcess: freezed == inProcess ? _value.inProcess! : inProcess,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Note,
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

class _$NoteStoreStateImpl implements _NoteStoreState {
  const _$NoteStoreStateImpl(
      {this.inProcess = false,
      this.payload = const Note(title: '', content: ''),
      this.success = false,
      this.failureMessage});

  @override
  @JsonKey()
  final dynamic inProcess;
  @override
  @JsonKey()
  final Note payload;
  @override
  @JsonKey()
  final bool success;
  @override
  final String? failureMessage;

  @override
  String toString() {
    return 'NoteStoreState(inProcess: $inProcess, payload: $payload, success: $success, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteStoreStateImpl &&
            const DeepCollectionEquality().equals(other.inProcess, inProcess) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(inProcess),
      payload,
      success,
      failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteStoreStateImplCopyWith<_$NoteStoreStateImpl> get copyWith =>
      __$$NoteStoreStateImplCopyWithImpl<_$NoteStoreStateImpl>(
          this, _$identity);
}

abstract class _NoteStoreState implements NoteStoreState {
  const factory _NoteStoreState(
      {final dynamic inProcess,
      final Note payload,
      final bool success,
      final String? failureMessage}) = _$NoteStoreStateImpl;

  @override
  dynamic get inProcess;
  @override
  Note get payload;
  @override
  bool get success;
  @override
  String? get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$NoteStoreStateImplCopyWith<_$NoteStoreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
