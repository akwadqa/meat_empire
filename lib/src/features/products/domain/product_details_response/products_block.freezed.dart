// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductsBlock _$ProductsBlockFromJson(Map<String, dynamic> json) {
  return _ProductsBlock.fromJson(json);
}

/// @nodoc
mixin _$ProductsBlock {
  String get title => throw _privateConstructorUsedError;
  String get viewType => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  String? get requestParam => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  /// Create a copy of ProductsBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsBlockCopyWith<ProductsBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsBlockCopyWith<$Res> {
  factory $ProductsBlockCopyWith(
    ProductsBlock value,
    $Res Function(ProductsBlock) then,
  ) = _$ProductsBlockCopyWithImpl<$Res, ProductsBlock>;
  @useResult
  $Res call({
    String title,
    String viewType,
    List<Product> products,
    int? categoryId,
    String? requestParam,
    String? sortBy,
    String? sortOrder,
  });
}

/// @nodoc
class _$ProductsBlockCopyWithImpl<$Res, $Val extends ProductsBlock>
    implements $ProductsBlockCopyWith<$Res> {
  _$ProductsBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? viewType = null,
    Object? products = null,
    Object? categoryId = freezed,
    Object? requestParam = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            viewType: null == viewType
                ? _value.viewType
                : viewType // ignore: cast_nullable_to_non_nullable
                      as String,
            products: null == products
                ? _value.products
                : products // ignore: cast_nullable_to_non_nullable
                      as List<Product>,
            categoryId: freezed == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as int?,
            requestParam: freezed == requestParam
                ? _value.requestParam
                : requestParam // ignore: cast_nullable_to_non_nullable
                      as String?,
            sortBy: freezed == sortBy
                ? _value.sortBy
                : sortBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            sortOrder: freezed == sortOrder
                ? _value.sortOrder
                : sortOrder // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsBlockImplCopyWith<$Res>
    implements $ProductsBlockCopyWith<$Res> {
  factory _$$ProductsBlockImplCopyWith(
    _$ProductsBlockImpl value,
    $Res Function(_$ProductsBlockImpl) then,
  ) = __$$ProductsBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String viewType,
    List<Product> products,
    int? categoryId,
    String? requestParam,
    String? sortBy,
    String? sortOrder,
  });
}

/// @nodoc
class __$$ProductsBlockImplCopyWithImpl<$Res>
    extends _$ProductsBlockCopyWithImpl<$Res, _$ProductsBlockImpl>
    implements _$$ProductsBlockImplCopyWith<$Res> {
  __$$ProductsBlockImplCopyWithImpl(
    _$ProductsBlockImpl _value,
    $Res Function(_$ProductsBlockImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? viewType = null,
    Object? products = null,
    Object? categoryId = freezed,
    Object? requestParam = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(
      _$ProductsBlockImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        viewType: null == viewType
            ? _value.viewType
            : viewType // ignore: cast_nullable_to_non_nullable
                  as String,
        products: null == products
            ? _value._products
            : products // ignore: cast_nullable_to_non_nullable
                  as List<Product>,
        categoryId: freezed == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as int?,
        requestParam: freezed == requestParam
            ? _value.requestParam
            : requestParam // ignore: cast_nullable_to_non_nullable
                  as String?,
        sortBy: freezed == sortBy
            ? _value.sortBy
            : sortBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        sortOrder: freezed == sortOrder
            ? _value.sortOrder
            : sortOrder // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ProductsBlockImpl implements _ProductsBlock {
  _$ProductsBlockImpl({
    required this.title,
    required this.viewType,
    required final List<Product> products,
    required this.categoryId,
    required this.requestParam,
    required this.sortBy,
    required this.sortOrder,
  }) : _products = products;

  factory _$ProductsBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsBlockImplFromJson(json);

  @override
  final String title;
  @override
  final String viewType;
  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int? categoryId;
  @override
  final String? requestParam;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  @override
  String toString() {
    return 'ProductsBlock(title: $title, viewType: $viewType, products: $products, categoryId: $categoryId, requestParam: $requestParam, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsBlockImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.requestParam, requestParam) ||
                other.requestParam == requestParam) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    viewType,
    const DeepCollectionEquality().hash(_products),
    categoryId,
    requestParam,
    sortBy,
    sortOrder,
  );

  /// Create a copy of ProductsBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsBlockImplCopyWith<_$ProductsBlockImpl> get copyWith =>
      __$$ProductsBlockImplCopyWithImpl<_$ProductsBlockImpl>(this, _$identity);
}

abstract class _ProductsBlock implements ProductsBlock {
  factory _ProductsBlock({
    required final String title,
    required final String viewType,
    required final List<Product> products,
    required final int? categoryId,
    required final String? requestParam,
    required final String? sortBy,
    required final String? sortOrder,
  }) = _$ProductsBlockImpl;

  factory _ProductsBlock.fromJson(Map<String, dynamic> json) =
      _$ProductsBlockImpl.fromJson;

  @override
  String get title;
  @override
  String get viewType;
  @override
  List<Product> get products;
  @override
  int? get categoryId;
  @override
  String? get requestParam;
  @override
  String? get sortBy;
  @override
  String? get sortOrder;

  /// Create a copy of ProductsBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsBlockImplCopyWith<_$ProductsBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
