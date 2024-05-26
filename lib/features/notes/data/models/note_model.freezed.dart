// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteModel {
  @HiveField(0)
  String get title => throw _privateConstructorUsedError;
  @HiveField(0)
  set title(String value) => throw _privateConstructorUsedError;
  @HiveField(1)
  String get content => throw _privateConstructorUsedError;
  @HiveField(1)
  set content(String value) => throw _privateConstructorUsedError;
  @HiveField(2)
  CategoryModel? get category => throw _privateConstructorUsedError;
  @HiveField(2)
  set category(CategoryModel? value) => throw _privateConstructorUsedError;
  @HiveField(4)
  List<TagModel> get tags => throw _privateConstructorUsedError;
  @HiveField(4)
  set tags(List<TagModel> value) => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get color => throw _privateConstructorUsedError;
  @HiveField(5)
  set color(int? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteModelCopyWith<NoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteModelCopyWith<$Res> {
  factory $NoteModelCopyWith(NoteModel value, $Res Function(NoteModel) then) =
      _$NoteModelCopyWithImpl<$Res, NoteModel>;
  @useResult
  $Res call(
      {@HiveField(0) String title,
      @HiveField(1) String content,
      @HiveField(2) CategoryModel? category,
      @HiveField(4) List<TagModel> tags,
      @HiveField(5) int? color});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$NoteModelCopyWithImpl<$Res, $Val extends NoteModel>
    implements $NoteModelCopyWith<$Res> {
  _$NoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? category = freezed,
    Object? tags = null,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteModelImplCopyWith<$Res>
    implements $NoteModelCopyWith<$Res> {
  factory _$$NoteModelImplCopyWith(
          _$NoteModelImpl value, $Res Function(_$NoteModelImpl) then) =
      __$$NoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String title,
      @HiveField(1) String content,
      @HiveField(2) CategoryModel? category,
      @HiveField(4) List<TagModel> tags,
      @HiveField(5) int? color});

  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$NoteModelImplCopyWithImpl<$Res>
    extends _$NoteModelCopyWithImpl<$Res, _$NoteModelImpl>
    implements _$$NoteModelImplCopyWith<$Res> {
  __$$NoteModelImplCopyWithImpl(
      _$NoteModelImpl _value, $Res Function(_$NoteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? category = freezed,
    Object? tags = null,
    Object? color = freezed,
  }) {
    return _then(_$NoteModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 0, adapterName: 'NoteModelAdapter')
class _$NoteModelImpl extends _NoteModel {
  _$NoteModelImpl(
      {@HiveField(0) required this.title,
      @HiveField(1) required this.content,
      @HiveField(2) this.category,
      @HiveField(4) List<TagModel> tags = const [],
      @HiveField(5) this.color})
      : _tags = tags,
        super._();

  @override
  @HiveField(0)
  String title;
  @override
  @HiveField(1)
  String content;
  @override
  @HiveField(2)
  CategoryModel? category;
  List<TagModel> _tags;
  @override
  @JsonKey()
  @HiveField(4)
  List<TagModel> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @HiveField(5)
  int? color;

  @override
  String toString() {
    return 'NoteModel(title: $title, content: $content, category: $category, tags: $tags, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, content, category,
      const DeepCollectionEquality().hash(_tags), color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteModelImplCopyWith<_$NoteModelImpl> get copyWith =>
      __$$NoteModelImplCopyWithImpl<_$NoteModelImpl>(this, _$identity);
}

abstract class _NoteModel extends NoteModel {
  factory _NoteModel(
      {@HiveField(0) required String title,
      @HiveField(1) required String content,
      @HiveField(2) CategoryModel? category,
      @HiveField(4) List<TagModel> tags,
      @HiveField(5) int? color}) = _$NoteModelImpl;
  _NoteModel._() : super._();

  @override
  @HiveField(0)
  String get title;
  @HiveField(0)
  set title(String value);
  @override
  @HiveField(1)
  String get content;
  @HiveField(1)
  set content(String value);
  @override
  @HiveField(2)
  CategoryModel? get category;
  @HiveField(2)
  set category(CategoryModel? value);
  @override
  @HiveField(4)
  List<TagModel> get tags;
  @HiveField(4)
  set tags(List<TagModel> value);
  @override
  @HiveField(5)
  int? get color;
  @HiveField(5)
  set color(int? value);
  @override
  @JsonKey(ignore: true)
  _$$NoteModelImplCopyWith<_$NoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
