// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderProduct {

 String get productId;@JsonKey(name: "order_id") String get orderId;@JsonKey(name: "image_url") String get imageUrl; String get product; int get amount;
/// Create a copy of OrderProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderProductCopyWith<OrderProduct> get copyWith => _$OrderProductCopyWithImpl<OrderProduct>(this as OrderProduct, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderProduct&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.product, product) || other.product == product)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,orderId,imageUrl,product,amount);

@override
String toString() {
  return 'OrderProduct(productId: $productId, orderId: $orderId, imageUrl: $imageUrl, product: $product, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $OrderProductCopyWith<$Res>  {
  factory $OrderProductCopyWith(OrderProduct value, $Res Function(OrderProduct) _then) = _$OrderProductCopyWithImpl;
@useResult
$Res call({
 String productId,@JsonKey(name: "order_id") String orderId,@JsonKey(name: "image_url") String imageUrl, String product, int amount
});




}
/// @nodoc
class _$OrderProductCopyWithImpl<$Res>
    implements $OrderProductCopyWith<$Res> {
  _$OrderProductCopyWithImpl(this._self, this._then);

  final OrderProduct _self;
  final $Res Function(OrderProduct) _then;

/// Create a copy of OrderProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? orderId = null,Object? imageUrl = null,Object? product = null,Object? amount = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderProduct].
extension OrderProductPatterns on OrderProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderProduct value)  $default,){
final _that = this;
switch (_that) {
case _OrderProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderProduct value)?  $default,){
final _that = this;
switch (_that) {
case _OrderProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId, @JsonKey(name: "order_id")  String orderId, @JsonKey(name: "image_url")  String imageUrl,  String product,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderProduct() when $default != null:
return $default(_that.productId,_that.orderId,_that.imageUrl,_that.product,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId, @JsonKey(name: "order_id")  String orderId, @JsonKey(name: "image_url")  String imageUrl,  String product,  int amount)  $default,) {final _that = this;
switch (_that) {
case _OrderProduct():
return $default(_that.productId,_that.orderId,_that.imageUrl,_that.product,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId, @JsonKey(name: "order_id")  String orderId, @JsonKey(name: "image_url")  String imageUrl,  String product,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _OrderProduct() when $default != null:
return $default(_that.productId,_that.orderId,_that.imageUrl,_that.product,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _OrderProduct implements OrderProduct {
  const _OrderProduct({required this.productId, @JsonKey(name: "order_id") required this.orderId, @JsonKey(name: "image_url") required this.imageUrl, required this.product, required this.amount});
  factory _OrderProduct.fromJson(Map<String, dynamic> json) => _$OrderProductFromJson(json);

@override final  String productId;
@override@JsonKey(name: "order_id") final  String orderId;
@override@JsonKey(name: "image_url") final  String imageUrl;
@override final  String product;
@override final  int amount;

/// Create a copy of OrderProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderProductCopyWith<_OrderProduct> get copyWith => __$OrderProductCopyWithImpl<_OrderProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderProduct&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.product, product) || other.product == product)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,orderId,imageUrl,product,amount);

@override
String toString() {
  return 'OrderProduct(productId: $productId, orderId: $orderId, imageUrl: $imageUrl, product: $product, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$OrderProductCopyWith<$Res> implements $OrderProductCopyWith<$Res> {
  factory _$OrderProductCopyWith(_OrderProduct value, $Res Function(_OrderProduct) _then) = __$OrderProductCopyWithImpl;
@override @useResult
$Res call({
 String productId,@JsonKey(name: "order_id") String orderId,@JsonKey(name: "image_url") String imageUrl, String product, int amount
});




}
/// @nodoc
class __$OrderProductCopyWithImpl<$Res>
    implements _$OrderProductCopyWith<$Res> {
  __$OrderProductCopyWithImpl(this._self, this._then);

  final _OrderProduct _self;
  final $Res Function(_OrderProduct) _then;

/// Create a copy of OrderProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? orderId = null,Object? imageUrl = null,Object? product = null,Object? amount = null,}) {
  return _then(_OrderProduct(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
