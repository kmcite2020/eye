// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Categories _$CategoriesFromJson(Map<String, dynamic> json) {
  return _Categories.fromJson(json);
}

/// @nodoc
mixin _$Categories {
  Iterable<Category> get categories => throw _privateConstructorUsedError;

  /// Serializes this Categories to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesCopyWith<Categories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesCopyWith<$Res> {
  factory $CategoriesCopyWith(
          Categories value, $Res Function(Categories) then) =
      _$CategoriesCopyWithImpl<$Res, Categories>;
  @useResult
  $Res call({Iterable<Category> categories});
}

/// @nodoc
class _$CategoriesCopyWithImpl<$Res, $Val extends Categories>
    implements $CategoriesCopyWith<$Res> {
  _$CategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Iterable<Category>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesImplCopyWith<$Res>
    implements $CategoriesCopyWith<$Res> {
  factory _$$CategoriesImplCopyWith(
          _$CategoriesImpl value, $Res Function(_$CategoriesImpl) then) =
      __$$CategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<Category> categories});
}

/// @nodoc
class __$$CategoriesImplCopyWithImpl<$Res>
    extends _$CategoriesCopyWithImpl<$Res, _$CategoriesImpl>
    implements _$$CategoriesImplCopyWith<$Res> {
  __$$CategoriesImplCopyWithImpl(
      _$CategoriesImpl _value, $Res Function(_$CategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoriesImpl(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Iterable<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesImpl with DiagnosticableTreeMixin implements _Categories {
  const _$CategoriesImpl({this.categories = const <Category>[]});

  factory _$CategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesImplFromJson(json);

  @override
  @JsonKey()
  final Iterable<Category> categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Categories(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Categories'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesImpl &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesImplCopyWith<_$CategoriesImpl> get copyWith =>
      __$$CategoriesImplCopyWithImpl<_$CategoriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesImplToJson(
      this,
    );
  }
}

abstract class _Categories implements Categories {
  const factory _Categories({final Iterable<Category> categories}) =
      _$CategoriesImpl;

  factory _Categories.fromJson(Map<String, dynamic> json) =
      _$CategoriesImpl.fromJson;

  @override
  Iterable<Category> get categories;

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesImplCopyWith<_$CategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
