// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailsResponse _$ProductDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsResponse {
  String get appAction => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  ProductDetails get product => throw _privateConstructorUsedError;
  Currency get currency => throw _privateConstructorUsedError;
  List<ProductsBlock> get productsBlock => throw _privateConstructorUsedError;
  dynamic get totalProducts => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailsResponseCopyWith<ProductDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsResponseCopyWith<$Res> {
  factory $ProductDetailsResponseCopyWith(ProductDetailsResponse value,
          $Res Function(ProductDetailsResponse) then) =
      _$ProductDetailsResponseCopyWithImpl<$Res, ProductDetailsResponse>;
  @useResult
  $Res call(
      {String appAction,
      String timezone,
      ProductDetails product,
      Currency currency,
      List<ProductsBlock> productsBlock,
      dynamic totalProducts,
      String message,
      bool success});

  $ProductDetailsCopyWith<$Res> get product;
  $CurrencyCopyWith<$Res> get currency;
}

/// @nodoc
class _$ProductDetailsResponseCopyWithImpl<$Res,
        $Val extends ProductDetailsResponse>
    implements $ProductDetailsResponseCopyWith<$Res> {
  _$ProductDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appAction = null,
    Object? timezone = null,
    Object? product = null,
    Object? currency = null,
    Object? productsBlock = null,
    Object? totalProducts = freezed,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      appAction: null == appAction
          ? _value.appAction
          : appAction // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetails,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      productsBlock: null == productsBlock
          ? _value.productsBlock
          : productsBlock // ignore: cast_nullable_to_non_nullable
              as List<ProductsBlock>,
      totalProducts: freezed == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ProductDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDetailsCopyWith<$Res> get product {
    return $ProductDetailsCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of ProductDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res> get currency {
    return $CurrencyCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailsResponseImplCopyWith<$Res>
    implements $ProductDetailsResponseCopyWith<$Res> {
  factory _$$ProductDetailsResponseImplCopyWith(
          _$ProductDetailsResponseImpl value,
          $Res Function(_$ProductDetailsResponseImpl) then) =
      __$$ProductDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String appAction,
      String timezone,
      ProductDetails product,
      Currency currency,
      List<ProductsBlock> productsBlock,
      dynamic totalProducts,
      String message,
      bool success});

  @override
  $ProductDetailsCopyWith<$Res> get product;
  @override
  $CurrencyCopyWith<$Res> get currency;
}

/// @nodoc
class __$$ProductDetailsResponseImplCopyWithImpl<$Res>
    extends _$ProductDetailsResponseCopyWithImpl<$Res,
        _$ProductDetailsResponseImpl>
    implements _$$ProductDetailsResponseImplCopyWith<$Res> {
  __$$ProductDetailsResponseImplCopyWithImpl(
      _$ProductDetailsResponseImpl _value,
      $Res Function(_$ProductDetailsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appAction = null,
    Object? timezone = null,
    Object? product = null,
    Object? currency = null,
    Object? productsBlock = null,
    Object? totalProducts = freezed,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_$ProductDetailsResponseImpl(
      appAction: null == appAction
          ? _value.appAction
          : appAction // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetails,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      productsBlock: null == productsBlock
          ? _value._productsBlock
          : productsBlock // ignore: cast_nullable_to_non_nullable
              as List<ProductsBlock>,
      totalProducts: freezed == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ProductDetailsResponseImpl implements _ProductDetailsResponse {
  _$ProductDetailsResponseImpl(
      {required this.appAction,
      required this.timezone,
      required this.product,
      required this.currency,
      required final List<ProductsBlock> productsBlock,
      required this.totalProducts,
      required this.message,
      required this.success})
      : _productsBlock = productsBlock;

  factory _$ProductDetailsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailsResponseImplFromJson(json);

  @override
  final String appAction;
  @override
  final String timezone;
  @override
  final ProductDetails product;
  @override
  final Currency currency;
  final List<ProductsBlock> _productsBlock;
  @override
  List<ProductsBlock> get productsBlock {
    if (_productsBlock is EqualUnmodifiableListView) return _productsBlock;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsBlock);
  }

  @override
  final dynamic totalProducts;
  @override
  final String message;
  @override
  final bool success;

  @override
  String toString() {
    return 'ProductDetailsResponse(appAction: $appAction, timezone: $timezone, product: $product, currency: $currency, productsBlock: $productsBlock, totalProducts: $totalProducts, message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsResponseImpl &&
            (identical(other.appAction, appAction) ||
                other.appAction == appAction) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality()
                .equals(other._productsBlock, _productsBlock) &&
            const DeepCollectionEquality()
                .equals(other.totalProducts, totalProducts) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      appAction,
      timezone,
      product,
      currency,
      const DeepCollectionEquality().hash(_productsBlock),
      const DeepCollectionEquality().hash(totalProducts),
      message,
      success);

  /// Create a copy of ProductDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsResponseImplCopyWith<_$ProductDetailsResponseImpl>
      get copyWith => __$$ProductDetailsResponseImplCopyWithImpl<
          _$ProductDetailsResponseImpl>(this, _$identity);
}

abstract class _ProductDetailsResponse implements ProductDetailsResponse {
  factory _ProductDetailsResponse(
      {required final String appAction,
      required final String timezone,
      required final ProductDetails product,
      required final Currency currency,
      required final List<ProductsBlock> productsBlock,
      required final dynamic totalProducts,
      required final String message,
      required final bool success}) = _$ProductDetailsResponseImpl;

  factory _ProductDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$ProductDetailsResponseImpl.fromJson;

  @override
  String get appAction;
  @override
  String get timezone;
  @override
  ProductDetails get product;
  @override
  Currency get currency;
  @override
  List<ProductsBlock> get productsBlock;
  @override
  dynamic get totalProducts;
  @override
  String get message;
  @override
  bool get success;

  /// Create a copy of ProductDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailsResponseImplCopyWith<_$ProductDetailsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
