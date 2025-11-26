// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_shipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDetailsShipment {

 String? get shipmentId; String? get comments; String get status; String get orderId; String get userId; String? get shippingId; String? get shipping; String? get trackingNumber;
/// Create a copy of OrderDetailsShipment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailsShipmentCopyWith<OrderDetailsShipment> get copyWith => _$OrderDetailsShipmentCopyWithImpl<OrderDetailsShipment>(this as OrderDetailsShipment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailsShipment&&(identical(other.shipmentId, shipmentId) || other.shipmentId == shipmentId)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.status, status) || other.status == status)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.shippingId, shippingId) || other.shippingId == shippingId)&&(identical(other.shipping, shipping) || other.shipping == shipping)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shipmentId,comments,status,orderId,userId,shippingId,shipping,trackingNumber);

@override
String toString() {
  return 'OrderDetailsShipment(shipmentId: $shipmentId, comments: $comments, status: $status, orderId: $orderId, userId: $userId, shippingId: $shippingId, shipping: $shipping, trackingNumber: $trackingNumber)';
}


}

/// @nodoc
abstract mixin class $OrderDetailsShipmentCopyWith<$Res>  {
  factory $OrderDetailsShipmentCopyWith(OrderDetailsShipment value, $Res Function(OrderDetailsShipment) _then) = _$OrderDetailsShipmentCopyWithImpl;
@useResult
$Res call({
 String? shipmentId, String? comments, String status, String orderId, String userId, String? shippingId, String? shipping, String? trackingNumber
});




}
/// @nodoc
class _$OrderDetailsShipmentCopyWithImpl<$Res>
    implements $OrderDetailsShipmentCopyWith<$Res> {
  _$OrderDetailsShipmentCopyWithImpl(this._self, this._then);

  final OrderDetailsShipment _self;
  final $Res Function(OrderDetailsShipment) _then;

/// Create a copy of OrderDetailsShipment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shipmentId = freezed,Object? comments = freezed,Object? status = null,Object? orderId = null,Object? userId = null,Object? shippingId = freezed,Object? shipping = freezed,Object? trackingNumber = freezed,}) {
  return _then(_self.copyWith(
shipmentId: freezed == shipmentId ? _self.shipmentId : shipmentId // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,shippingId: freezed == shippingId ? _self.shippingId : shippingId // ignore: cast_nullable_to_non_nullable
as String?,shipping: freezed == shipping ? _self.shipping : shipping // ignore: cast_nullable_to_non_nullable
as String?,trackingNumber: freezed == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderDetailsShipment].
extension OrderDetailsShipmentPatterns on OrderDetailsShipment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailsShipment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailsShipment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailsShipment value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailsShipment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailsShipment value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailsShipment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? shipmentId,  String? comments,  String status,  String orderId,  String userId,  String? shippingId,  String? shipping,  String? trackingNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailsShipment() when $default != null:
return $default(_that.shipmentId,_that.comments,_that.status,_that.orderId,_that.userId,_that.shippingId,_that.shipping,_that.trackingNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? shipmentId,  String? comments,  String status,  String orderId,  String userId,  String? shippingId,  String? shipping,  String? trackingNumber)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailsShipment():
return $default(_that.shipmentId,_that.comments,_that.status,_that.orderId,_that.userId,_that.shippingId,_that.shipping,_that.trackingNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? shipmentId,  String? comments,  String status,  String orderId,  String userId,  String? shippingId,  String? shipping,  String? trackingNumber)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailsShipment() when $default != null:
return $default(_that.shipmentId,_that.comments,_that.status,_that.orderId,_that.userId,_that.shippingId,_that.shipping,_that.trackingNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _OrderDetailsShipment implements OrderDetailsShipment {
  const _OrderDetailsShipment({this.shipmentId, this.comments, required this.status, required this.orderId, required this.userId, this.shippingId, this.shipping, this.trackingNumber});
  factory _OrderDetailsShipment.fromJson(Map<String, dynamic> json) => _$OrderDetailsShipmentFromJson(json);

@override final  String? shipmentId;
@override final  String? comments;
@override final  String status;
@override final  String orderId;
@override final  String userId;
@override final  String? shippingId;
@override final  String? shipping;
@override final  String? trackingNumber;

/// Create a copy of OrderDetailsShipment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailsShipmentCopyWith<_OrderDetailsShipment> get copyWith => __$OrderDetailsShipmentCopyWithImpl<_OrderDetailsShipment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailsShipment&&(identical(other.shipmentId, shipmentId) || other.shipmentId == shipmentId)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.status, status) || other.status == status)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.shippingId, shippingId) || other.shippingId == shippingId)&&(identical(other.shipping, shipping) || other.shipping == shipping)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shipmentId,comments,status,orderId,userId,shippingId,shipping,trackingNumber);

@override
String toString() {
  return 'OrderDetailsShipment(shipmentId: $shipmentId, comments: $comments, status: $status, orderId: $orderId, userId: $userId, shippingId: $shippingId, shipping: $shipping, trackingNumber: $trackingNumber)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailsShipmentCopyWith<$Res> implements $OrderDetailsShipmentCopyWith<$Res> {
  factory _$OrderDetailsShipmentCopyWith(_OrderDetailsShipment value, $Res Function(_OrderDetailsShipment) _then) = __$OrderDetailsShipmentCopyWithImpl;
@override @useResult
$Res call({
 String? shipmentId, String? comments, String status, String orderId, String userId, String? shippingId, String? shipping, String? trackingNumber
});




}
/// @nodoc
class __$OrderDetailsShipmentCopyWithImpl<$Res>
    implements _$OrderDetailsShipmentCopyWith<$Res> {
  __$OrderDetailsShipmentCopyWithImpl(this._self, this._then);

  final _OrderDetailsShipment _self;
  final $Res Function(_OrderDetailsShipment) _then;

/// Create a copy of OrderDetailsShipment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shipmentId = freezed,Object? comments = freezed,Object? status = null,Object? orderId = null,Object? userId = null,Object? shippingId = freezed,Object? shipping = freezed,Object? trackingNumber = freezed,}) {
  return _then(_OrderDetailsShipment(
shipmentId: freezed == shipmentId ? _self.shipmentId : shipmentId // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,shippingId: freezed == shippingId ? _self.shippingId : shippingId // ignore: cast_nullable_to_non_nullable
as String?,shipping: freezed == shipping ? _self.shipping : shipping // ignore: cast_nullable_to_non_nullable
as String?,trackingNumber: freezed == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
