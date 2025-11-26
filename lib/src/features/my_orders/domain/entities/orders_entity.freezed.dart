// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrdersEntity {

@JsonKey(name: "order_id") String get orderId;@JsonKey(name: "timestamp") String get orderDate;@JsonKey(name: "total") String get orderTotalCost;@JsonKey(name: "shipping_cost") String get shippingCost; String get status; List<OrderProduct> get products;
/// Create a copy of OrdersEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersEntityCopyWith<OrdersEntity> get copyWith => _$OrdersEntityCopyWithImpl<OrdersEntity>(this as OrdersEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersEntity&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.orderTotalCost, orderTotalCost) || other.orderTotalCost == orderTotalCost)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,orderDate,orderTotalCost,shippingCost,status,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'OrdersEntity(orderId: $orderId, orderDate: $orderDate, orderTotalCost: $orderTotalCost, shippingCost: $shippingCost, status: $status, products: $products)';
}


}

/// @nodoc
abstract mixin class $OrdersEntityCopyWith<$Res>  {
  factory $OrdersEntityCopyWith(OrdersEntity value, $Res Function(OrdersEntity) _then) = _$OrdersEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "order_id") String orderId,@JsonKey(name: "timestamp") String orderDate,@JsonKey(name: "total") String orderTotalCost,@JsonKey(name: "shipping_cost") String shippingCost, String status, List<OrderProduct> products
});




}
/// @nodoc
class _$OrdersEntityCopyWithImpl<$Res>
    implements $OrdersEntityCopyWith<$Res> {
  _$OrdersEntityCopyWithImpl(this._self, this._then);

  final OrdersEntity _self;
  final $Res Function(OrdersEntity) _then;

/// Create a copy of OrdersEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? orderDate = null,Object? orderTotalCost = null,Object? shippingCost = null,Object? status = null,Object? products = null,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String,orderTotalCost: null == orderTotalCost ? _self.orderTotalCost : orderTotalCost // ignore: cast_nullable_to_non_nullable
as String,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<OrderProduct>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrdersEntity].
extension OrdersEntityPatterns on OrdersEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersEntity value)  $default,){
final _that = this;
switch (_that) {
case _OrdersEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "order_id")  String orderId, @JsonKey(name: "timestamp")  String orderDate, @JsonKey(name: "total")  String orderTotalCost, @JsonKey(name: "shipping_cost")  String shippingCost,  String status,  List<OrderProduct> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersEntity() when $default != null:
return $default(_that.orderId,_that.orderDate,_that.orderTotalCost,_that.shippingCost,_that.status,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "order_id")  String orderId, @JsonKey(name: "timestamp")  String orderDate, @JsonKey(name: "total")  String orderTotalCost, @JsonKey(name: "shipping_cost")  String shippingCost,  String status,  List<OrderProduct> products)  $default,) {final _that = this;
switch (_that) {
case _OrdersEntity():
return $default(_that.orderId,_that.orderDate,_that.orderTotalCost,_that.shippingCost,_that.status,_that.products);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "order_id")  String orderId, @JsonKey(name: "timestamp")  String orderDate, @JsonKey(name: "total")  String orderTotalCost, @JsonKey(name: "shipping_cost")  String shippingCost,  String status,  List<OrderProduct> products)?  $default,) {final _that = this;
switch (_that) {
case _OrdersEntity() when $default != null:
return $default(_that.orderId,_that.orderDate,_that.orderTotalCost,_that.shippingCost,_that.status,_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _OrdersEntity implements OrdersEntity {
  const _OrdersEntity({@JsonKey(name: "order_id") required this.orderId, @JsonKey(name: "timestamp") required this.orderDate, @JsonKey(name: "total") required this.orderTotalCost, @JsonKey(name: "shipping_cost") required this.shippingCost, required this.status, required final  List<OrderProduct> products}): _products = products;
  factory _OrdersEntity.fromJson(Map<String, dynamic> json) => _$OrdersEntityFromJson(json);

@override@JsonKey(name: "order_id") final  String orderId;
@override@JsonKey(name: "timestamp") final  String orderDate;
@override@JsonKey(name: "total") final  String orderTotalCost;
@override@JsonKey(name: "shipping_cost") final  String shippingCost;
@override final  String status;
 final  List<OrderProduct> _products;
@override List<OrderProduct> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of OrdersEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersEntityCopyWith<_OrdersEntity> get copyWith => __$OrdersEntityCopyWithImpl<_OrdersEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersEntity&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.orderTotalCost, orderTotalCost) || other.orderTotalCost == orderTotalCost)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,orderDate,orderTotalCost,shippingCost,status,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'OrdersEntity(orderId: $orderId, orderDate: $orderDate, orderTotalCost: $orderTotalCost, shippingCost: $shippingCost, status: $status, products: $products)';
}


}

/// @nodoc
abstract mixin class _$OrdersEntityCopyWith<$Res> implements $OrdersEntityCopyWith<$Res> {
  factory _$OrdersEntityCopyWith(_OrdersEntity value, $Res Function(_OrdersEntity) _then) = __$OrdersEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "order_id") String orderId,@JsonKey(name: "timestamp") String orderDate,@JsonKey(name: "total") String orderTotalCost,@JsonKey(name: "shipping_cost") String shippingCost, String status, List<OrderProduct> products
});




}
/// @nodoc
class __$OrdersEntityCopyWithImpl<$Res>
    implements _$OrdersEntityCopyWith<$Res> {
  __$OrdersEntityCopyWithImpl(this._self, this._then);

  final _OrdersEntity _self;
  final $Res Function(_OrdersEntity) _then;

/// Create a copy of OrdersEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? orderDate = null,Object? orderTotalCost = null,Object? shippingCost = null,Object? status = null,Object? products = null,}) {
  return _then(_OrdersEntity(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String,orderTotalCost: null == orderTotalCost ? _self.orderTotalCost : orderTotalCost // ignore: cast_nullable_to_non_nullable
as String,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<OrderProduct>,
  ));
}


}

// dart format on
