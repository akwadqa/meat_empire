// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrdersResponse {

 List<OrdersEntity> get orders;@JsonKey(name: "order_statuses") List<OrderStatuses> get orderStatuses; String get message; bool get success;
/// Create a copy of OrdersResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersResponseCopyWith<OrdersResponse> get copyWith => _$OrdersResponseCopyWithImpl<OrdersResponse>(this as OrdersResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersResponse&&const DeepCollectionEquality().equals(other.orders, orders)&&const DeepCollectionEquality().equals(other.orderStatuses, orderStatuses)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(orders),const DeepCollectionEquality().hash(orderStatuses),message,success);

@override
String toString() {
  return 'OrdersResponse(orders: $orders, orderStatuses: $orderStatuses, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $OrdersResponseCopyWith<$Res>  {
  factory $OrdersResponseCopyWith(OrdersResponse value, $Res Function(OrdersResponse) _then) = _$OrdersResponseCopyWithImpl;
@useResult
$Res call({
 List<OrdersEntity> orders,@JsonKey(name: "order_statuses") List<OrderStatuses> orderStatuses, String message, bool success
});




}
/// @nodoc
class _$OrdersResponseCopyWithImpl<$Res>
    implements $OrdersResponseCopyWith<$Res> {
  _$OrdersResponseCopyWithImpl(this._self, this._then);

  final OrdersResponse _self;
  final $Res Function(OrdersResponse) _then;

/// Create a copy of OrdersResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orders = null,Object? orderStatuses = null,Object? message = null,Object? success = null,}) {
  return _then(_self.copyWith(
orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrdersEntity>,orderStatuses: null == orderStatuses ? _self.orderStatuses : orderStatuses // ignore: cast_nullable_to_non_nullable
as List<OrderStatuses>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OrdersResponse].
extension OrdersResponsePatterns on OrdersResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersResponse value)  $default,){
final _that = this;
switch (_that) {
case _OrdersResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OrdersEntity> orders, @JsonKey(name: "order_statuses")  List<OrderStatuses> orderStatuses,  String message,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersResponse() when $default != null:
return $default(_that.orders,_that.orderStatuses,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OrdersEntity> orders, @JsonKey(name: "order_statuses")  List<OrderStatuses> orderStatuses,  String message,  bool success)  $default,) {final _that = this;
switch (_that) {
case _OrdersResponse():
return $default(_that.orders,_that.orderStatuses,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OrdersEntity> orders, @JsonKey(name: "order_statuses")  List<OrderStatuses> orderStatuses,  String message,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _OrdersResponse() when $default != null:
return $default(_that.orders,_that.orderStatuses,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _OrdersResponse implements OrdersResponse {
  const _OrdersResponse({required final  List<OrdersEntity> orders, @JsonKey(name: "order_statuses") required final  List<OrderStatuses> orderStatuses, required this.message, required this.success}): _orders = orders,_orderStatuses = orderStatuses;
  factory _OrdersResponse.fromJson(Map<String, dynamic> json) => _$OrdersResponseFromJson(json);

 final  List<OrdersEntity> _orders;
@override List<OrdersEntity> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}

 final  List<OrderStatuses> _orderStatuses;
@override@JsonKey(name: "order_statuses") List<OrderStatuses> get orderStatuses {
  if (_orderStatuses is EqualUnmodifiableListView) return _orderStatuses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orderStatuses);
}

@override final  String message;
@override final  bool success;

/// Create a copy of OrdersResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersResponseCopyWith<_OrdersResponse> get copyWith => __$OrdersResponseCopyWithImpl<_OrdersResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersResponse&&const DeepCollectionEquality().equals(other._orders, _orders)&&const DeepCollectionEquality().equals(other._orderStatuses, _orderStatuses)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders),const DeepCollectionEquality().hash(_orderStatuses),message,success);

@override
String toString() {
  return 'OrdersResponse(orders: $orders, orderStatuses: $orderStatuses, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$OrdersResponseCopyWith<$Res> implements $OrdersResponseCopyWith<$Res> {
  factory _$OrdersResponseCopyWith(_OrdersResponse value, $Res Function(_OrdersResponse) _then) = __$OrdersResponseCopyWithImpl;
@override @useResult
$Res call({
 List<OrdersEntity> orders,@JsonKey(name: "order_statuses") List<OrderStatuses> orderStatuses, String message, bool success
});




}
/// @nodoc
class __$OrdersResponseCopyWithImpl<$Res>
    implements _$OrdersResponseCopyWith<$Res> {
  __$OrdersResponseCopyWithImpl(this._self, this._then);

  final _OrdersResponse _self;
  final $Res Function(_OrdersResponse) _then;

/// Create a copy of OrdersResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orders = null,Object? orderStatuses = null,Object? message = null,Object? success = null,}) {
  return _then(_OrdersResponse(
orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrdersEntity>,orderStatuses: null == orderStatuses ? _self._orderStatuses : orderStatuses // ignore: cast_nullable_to_non_nullable
as List<OrderStatuses>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
