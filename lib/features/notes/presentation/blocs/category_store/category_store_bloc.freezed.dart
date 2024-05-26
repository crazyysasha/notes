// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_store_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryStoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Category payload) changed,
    required TResult Function() requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category payload)? changed,
    TResult? Function()? requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category payload)? changed,
    TResult Function()? requested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Changed value) changed,
    required TResult Function(_Requested value) requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Requested value)? requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Changed value)? changed,
    TResult Function(_Requested value)? requested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStoreEventCopyWith<$Res> {
  factory $CategoryStoreEventCopyWith(
          CategoryStoreEvent value, $Res Function(CategoryStoreEvent) then) =
      _$CategoryStoreEventCopyWithImpl<$Res, CategoryStoreEvent>;
}

/// @nodoc
class _$CategoryStoreEventCopyWithImpl<$Res, $Val extends CategoryStoreEvent>
    implements $CategoryStoreEventCopyWith<$Res> {
  _$CategoryStoreEventCopyWithImpl(this._value, this._then);

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
    extends _$CategoryStoreEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CategoryStoreEvent.started()';
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
    required TResult Function(Category payload) changed,
    required TResult Function() requested,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category payload)? changed,
    TResult? Function()? requested,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category payload)? changed,
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
    required TResult Function(_Changed value) changed,
    required TResult Function(_Requested value) requested,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Requested value)? requested,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Changed value)? changed,
    TResult Function(_Requested value)? requested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CategoryStoreEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangedImplCopyWith<$Res> {
  factory _$$ChangedImplCopyWith(
          _$ChangedImpl value, $Res Function(_$ChangedImpl) then) =
      __$$ChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category payload});

  $CategoryCopyWith<$Res> get payload;
}

/// @nodoc
class __$$ChangedImplCopyWithImpl<$Res>
    extends _$CategoryStoreEventCopyWithImpl<$Res, _$ChangedImpl>
    implements _$$ChangedImplCopyWith<$Res> {
  __$$ChangedImplCopyWithImpl(
      _$ChangedImpl _value, $Res Function(_$ChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$ChangedImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get payload {
    return $CategoryCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc

class _$ChangedImpl implements _Changed {
  const _$ChangedImpl({required this.payload});

  @override
  final Category payload;

  @override
  String toString() {
    return 'CategoryStoreEvent.changed(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedImplCopyWith<_$ChangedImpl> get copyWith =>
      __$$ChangedImplCopyWithImpl<_$ChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Category payload) changed,
    required TResult Function() requested,
  }) {
    return changed(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category payload)? changed,
    TResult? Function()? requested,
  }) {
    return changed?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category payload)? changed,
    TResult Function()? requested,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Changed value) changed,
    required TResult Function(_Requested value) requested,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Requested value)? requested,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Changed value)? changed,
    TResult Function(_Requested value)? requested,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _Changed implements CategoryStoreEvent {
  const factory _Changed({required final Category payload}) = _$ChangedImpl;

  Category get payload;
  @JsonKey(ignore: true)
  _$$ChangedImplCopyWith<_$ChangedImpl> get copyWith =>
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
    extends _$CategoryStoreEventCopyWithImpl<$Res, _$RequestedImpl>
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
    return 'CategoryStoreEvent.requested()';
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
    required TResult Function(Category payload) changed,
    required TResult Function() requested,
  }) {
    return requested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category payload)? changed,
    TResult? Function()? requested,
  }) {
    return requested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category payload)? changed,
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
    required TResult Function(_Changed value) changed,
    required TResult Function(_Requested value) requested,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Requested value)? requested,
  }) {
    return requested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Changed value)? changed,
    TResult Function(_Requested value)? requested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class _Requested implements CategoryStoreEvent {
  const factory _Requested() = _$RequestedImpl;
}

/// @nodoc
mixin _$CategoryStoreState {
  bool get inProcess => throw _privateConstructorUsedError;
  Category get payload => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStoreStateCopyWith<CategoryStoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStoreStateCopyWith<$Res> {
  factory $CategoryStoreStateCopyWith(
          CategoryStoreState value, $Res Function(CategoryStoreState) then) =
      _$CategoryStoreStateCopyWithImpl<$Res, CategoryStoreState>;
  @useResult
  $Res call(
      {bool inProcess, Category payload, bool success, String? failureMessage});

  $CategoryCopyWith<$Res> get payload;
}

/// @nodoc
class _$CategoryStoreStateCopyWithImpl<$Res, $Val extends CategoryStoreState>
    implements $CategoryStoreStateCopyWith<$Res> {
  _$CategoryStoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProcess = null,
    Object? payload = null,
    Object? success = null,
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
              as Category,
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
  $CategoryCopyWith<$Res> get payload {
    return $CategoryCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryStoreStateImplCopyWith<$Res>
    implements $CategoryStoreStateCopyWith<$Res> {
  factory _$$CategoryStoreStateImplCopyWith(_$CategoryStoreStateImpl value,
          $Res Function(_$CategoryStoreStateImpl) then) =
      __$$CategoryStoreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool inProcess, Category payload, bool success, String? failureMessage});

  @override
  $CategoryCopyWith<$Res> get payload;
}

/// @nodoc
class __$$CategoryStoreStateImplCopyWithImpl<$Res>
    extends _$CategoryStoreStateCopyWithImpl<$Res, _$CategoryStoreStateImpl>
    implements _$$CategoryStoreStateImplCopyWith<$Res> {
  __$$CategoryStoreStateImplCopyWithImpl(_$CategoryStoreStateImpl _value,
      $Res Function(_$CategoryStoreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProcess = null,
    Object? payload = null,
    Object? success = null,
    Object? failureMessage = freezed,
  }) {
    return _then(_$CategoryStoreStateImpl(
      inProcess: null == inProcess
          ? _value.inProcess
          : inProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Category,
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

class _$CategoryStoreStateImpl implements _CategoryStoreState {
  const _$CategoryStoreStateImpl(
      {this.inProcess = false,
      this.payload = const Category(name: ''),
      this.success = false,
      this.failureMessage});

  @override
  @JsonKey()
  final bool inProcess;
  @override
  @JsonKey()
  final Category payload;
  @override
  @JsonKey()
  final bool success;
  @override
  final String? failureMessage;

  @override
  String toString() {
    return 'CategoryStoreState(inProcess: $inProcess, payload: $payload, success: $success, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStoreStateImpl &&
            (identical(other.inProcess, inProcess) ||
                other.inProcess == inProcess) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, inProcess, payload, success, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStoreStateImplCopyWith<_$CategoryStoreStateImpl> get copyWith =>
      __$$CategoryStoreStateImplCopyWithImpl<_$CategoryStoreStateImpl>(
          this, _$identity);
}

abstract class _CategoryStoreState implements CategoryStoreState {
  const factory _CategoryStoreState(
      {final bool inProcess,
      final Category payload,
      final bool success,
      final String? failureMessage}) = _$CategoryStoreStateImpl;

  @override
  bool get inProcess;
  @override
  Category get payload;
  @override
  bool get success;
  @override
  String? get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStoreStateImplCopyWith<_$CategoryStoreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
