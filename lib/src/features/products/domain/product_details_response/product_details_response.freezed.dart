// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDetailsResponse {

 String get appAction; String get timezone; ProductDetails get product; Currency get currency; List<ProductsBlock> get productsBlock; dynamic get totalProducts; String get message; bool get success;
/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailsResponseCopyWith<ProductDetailsResponse> get copyWith => _$ProductDetailsResponseCopyWithImpl<ProductDetailsResponse>(this as ProductDetailsResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailsResponse&&(identical(other.appAction, appAction) || other.appAction == appAction)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.product, product) || other.product == product)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.productsBlock, productsBlock)&&const DeepCollectionEquality().equals(other.totalProducts, totalProducts)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appAction,timezone,product,currency,const DeepCollectionEquality().hash(productsBlock),const DeepCollectionEquality().hash(totalProducts),message,success);

@override
String toString() {
  return 'ProductDetailsResponse(appAction: $appAction, timezone: $timezone, product: $product, currency: $currency, productsBlock: $productsBlock, totalProducts: $totalProducts, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $ProductDetailsResponseCopyWith<$Res>  {
  factory $ProductDetailsResponseCopyWith(ProductDetailsResponse value, $Res Function(ProductDetailsResponse) _then) = _$ProductDetailsResponseCopyWithImpl;
@useResult
$Res call({
 String appAction, String timezone, ProductDetails product, Currency currency, List<ProductsBlock> productsBlock, dynamic totalProducts, String message, bool success
});


$ProductDetailsCopyWith<$Res> get product;$CurrencyCopyWith<$Res> get currency;

}
/// @nodoc
class _$ProductDetailsResponseCopyWithImpl<$Res>
    implements $ProductDetailsResponseCopyWith<$Res> {
  _$ProductDetailsResponseCopyWithImpl(this._self, this._then);

  final ProductDetailsResponse _self;
  final $Res Function(ProductDetailsResponse) _then;

/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appAction = null,Object? timezone = null,Object? product = null,Object? currency = null,Object? productsBlock = null,Object? totalProducts = freezed,Object? message = null,Object? success = null,}) {
  return _then(_self.copyWith(
appAction: null == appAction ? _self.appAction : appAction // ignore: cast_nullable_to_non_nullable
as String,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductDetails,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency,productsBlock: null == productsBlock ? _self.productsBlock : productsBlock // ignore: cast_nullable_to_non_nullable
as List<ProductsBlock>,totalProducts: freezed == totalProducts ? _self.totalProducts : totalProducts // ignore: cast_nullable_to_non_nullable
as dynamic,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDetailsCopyWith<$Res> get product {
  
  return $ProductDetailsCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyCopyWith<$Res> get currency {
  
  return $CurrencyCopyWith<$Res>(_self.currency, (value) {
    return _then(_self.copyWith(currency: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductDetailsResponse].
extension ProductDetailsResponsePatterns on ProductDetailsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetailsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetailsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetailsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetailsResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetailsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetailsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String appAction,  String timezone,  ProductDetails product,  Currency currency,  List<ProductsBlock> productsBlock,  dynamic totalProducts,  String message,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailsResponse() when $default != null:
return $default(_that.appAction,_that.timezone,_that.product,_that.currency,_that.productsBlock,_that.totalProducts,_that.message,_that.success);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String appAction,  String timezone,  ProductDetails product,  Currency currency,  List<ProductsBlock> productsBlock,  dynamic totalProducts,  String message,  bool success)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailsResponse():
return $default(_that.appAction,_that.timezone,_that.product,_that.currency,_that.productsBlock,_that.totalProducts,_that.message,_that.success);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String appAction,  String timezone,  ProductDetails product,  Currency currency,  List<ProductsBlock> productsBlock,  dynamic totalProducts,  String message,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailsResponse() when $default != null:
return $default(_that.appAction,_that.timezone,_that.product,_that.currency,_that.productsBlock,_that.totalProducts,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _ProductDetailsResponse implements ProductDetailsResponse {
   _ProductDetailsResponse({required this.appAction, required this.timezone, required this.product, required this.currency, required final  List<ProductsBlock> productsBlock, required this.totalProducts, required this.message, required this.success}): _productsBlock = productsBlock;
  factory _ProductDetailsResponse.fromJson(Map<String, dynamic> json) => _$ProductDetailsResponseFromJson(json);

@override final  String appAction;
@override final  String timezone;
@override final  ProductDetails product;
@override final  Currency currency;
 final  List<ProductsBlock> _productsBlock;
@override List<ProductsBlock> get productsBlock {
  if (_productsBlock is EqualUnmodifiableListView) return _productsBlock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productsBlock);
}

@override final  dynamic totalProducts;
@override final  String message;
@override final  bool success;

/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailsResponseCopyWith<_ProductDetailsResponse> get copyWith => __$ProductDetailsResponseCopyWithImpl<_ProductDetailsResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailsResponse&&(identical(other.appAction, appAction) || other.appAction == appAction)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.product, product) || other.product == product)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._productsBlock, _productsBlock)&&const DeepCollectionEquality().equals(other.totalProducts, totalProducts)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appAction,timezone,product,currency,const DeepCollectionEquality().hash(_productsBlock),const DeepCollectionEquality().hash(totalProducts),message,success);

@override
String toString() {
  return 'ProductDetailsResponse(appAction: $appAction, timezone: $timezone, product: $product, currency: $currency, productsBlock: $productsBlock, totalProducts: $totalProducts, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailsResponseCopyWith<$Res> implements $ProductDetailsResponseCopyWith<$Res> {
  factory _$ProductDetailsResponseCopyWith(_ProductDetailsResponse value, $Res Function(_ProductDetailsResponse) _then) = __$ProductDetailsResponseCopyWithImpl;
@override @useResult
$Res call({
 String appAction, String timezone, ProductDetails product, Currency currency, List<ProductsBlock> productsBlock, dynamic totalProducts, String message, bool success
});


@override $ProductDetailsCopyWith<$Res> get product;@override $CurrencyCopyWith<$Res> get currency;

}
/// @nodoc
class __$ProductDetailsResponseCopyWithImpl<$Res>
    implements _$ProductDetailsResponseCopyWith<$Res> {
  __$ProductDetailsResponseCopyWithImpl(this._self, this._then);

  final _ProductDetailsResponse _self;
  final $Res Function(_ProductDetailsResponse) _then;

/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appAction = null,Object? timezone = null,Object? product = null,Object? currency = null,Object? productsBlock = null,Object? totalProducts = freezed,Object? message = null,Object? success = null,}) {
  return _then(_ProductDetailsResponse(
appAction: null == appAction ? _self.appAction : appAction // ignore: cast_nullable_to_non_nullable
as String,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductDetails,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency,productsBlock: null == productsBlock ? _self._productsBlock : productsBlock // ignore: cast_nullable_to_non_nullable
as List<ProductsBlock>,totalProducts: freezed == totalProducts ? _self.totalProducts : totalProducts // ignore: cast_nullable_to_non_nullable
as dynamic,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDetailsCopyWith<$Res> get product {
  
  return $ProductDetailsCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyCopyWith<$Res> get currency {
  
  return $CurrencyCopyWith<$Res>(_self.currency, (value) {
    return _then(_self.copyWith(currency: value));
  });
}
}

// dart format on
