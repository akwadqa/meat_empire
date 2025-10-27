// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_reviews_sorting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductReviewsSorting _$ProductReviewsSortingFromJson(
  Map<String, dynamic> json,
) {
  return _ProductReviewsSorting.fromJson(json);
}

/// @nodoc
mixin _$ProductReviewsSorting {
  String get name => throw _privateConstructorUsedError;
  String get sortBy => throw _privateConstructorUsedError;
  String get sortOrder => throw _privateConstructorUsedError;

  /// Create a copy of ProductReviewsSorting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductReviewsSortingCopyWith<ProductReviewsSorting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductReviewsSortingCopyWith<$Res> {
  factory $ProductReviewsSortingCopyWith(
    ProductReviewsSorting value,
    $Res Function(ProductReviewsSorting) then,
  ) = _$ProductReviewsSortingCopyWithImpl<$Res, ProductReviewsSorting>;
  @useResult
  $Res call({String name, String sortBy, String sortOrder});
}

/// @nodoc
class _$ProductReviewsSortingCopyWithImpl<
  $Res,
  $Val extends ProductReviewsSorting
>
    implements $ProductReviewsSortingCopyWith<$Res> {
  _$ProductReviewsSortingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductReviewsSorting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sortBy = null,
    Object? sortOrder = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            sortBy: null == sortBy
                ? _value.sortBy
                : sortBy // ignore: cast_nullable_to_non_nullable
                      as String,
            sortOrder: null == sortOrder
                ? _value.sortOrder
                : sortOrder // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductReviewsSortingImplCopyWith<$Res>
    implements $ProductReviewsSortingCopyWith<$Res> {
  factory _$$ProductReviewsSortingImplCopyWith(
    _$ProductReviewsSortingImpl value,
    $Res Function(_$ProductReviewsSortingImpl) then,
  ) = __$$ProductReviewsSortingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String sortBy, String sortOrder});
}

/// @nodoc
class __$$ProductReviewsSortingImplCopyWithImpl<$Res>
    extends
        _$ProductReviewsSortingCopyWithImpl<$Res, _$ProductReviewsSortingImpl>
    implements _$$ProductReviewsSortingImplCopyWith<$Res> {
  __$$ProductReviewsSortingImplCopyWithImpl(
    _$ProductReviewsSortingImpl _value,
    $Res Function(_$ProductReviewsSortingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductReviewsSorting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sortBy = null,
    Object? sortOrder = null,
  }) {
    return _then(
      _$ProductReviewsSortingImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        sortBy: null == sortBy
            ? _value.sortBy
            : sortBy // ignore: cast_nullable_to_non_nullable
                  as String,
        sortOrder: null == sortOrder
            ? _value.sortOrder
            : sortOrder // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ProductReviewsSortingImpl implements _ProductReviewsSorting {
  _$ProductReviewsSortingImpl({
    required this.name,
    required this.sortBy,
    required this.sortOrder,
  });

  factory _$ProductReviewsSortingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductReviewsSortingImplFromJson(json);

  @override
  final String name;
  @override
  final String sortBy;
  @override
  final String sortOrder;

  @override
  String toString() {
    return 'ProductReviewsSorting(name: $name, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductReviewsSortingImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, sortBy, sortOrder);

  /// Create a copy of ProductReviewsSorting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductReviewsSortingImplCopyWith<_$ProductReviewsSortingImpl>
  get copyWith =>
      __$$ProductReviewsSortingImplCopyWithImpl<_$ProductReviewsSortingImpl>(
        this,
        _$identity,
      );
}

abstract class _ProductReviewsSorting implements ProductReviewsSorting {
  factory _ProductReviewsSorting({
    required final String name,
    required final String sortBy,
    required final String sortOrder,
  }) = _$ProductReviewsSortingImpl;

  factory _ProductReviewsSorting.fromJson(Map<String, dynamic> json) =
      _$ProductReviewsSortingImpl.fromJson;

  @override
  String get name;
  @override
  String get sortBy;
  @override
  String get sortOrder;

  /// Create a copy of ProductReviewsSorting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductReviewsSortingImplCopyWith<_$ProductReviewsSortingImpl>
  get copyWith => throw _privateConstructorUsedError;
}
