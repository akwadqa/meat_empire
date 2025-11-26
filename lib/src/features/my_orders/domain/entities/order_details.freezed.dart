// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDetails {

 bool? get showShipments; List<OrderDetailsShipment> get shipments; String get message; bool get success;
/// Create a copy of OrderDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailsCopyWith<OrderDetails> get copyWith => _$OrderDetailsCopyWithImpl<OrderDetails>(this as OrderDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetails&&(identical(other.showShipments, showShipments) || other.showShipments == showShipments)&&const DeepCollectionEquality().equals(other.shipments, shipments)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,showShipments,const DeepCollectionEquality().hash(shipments),message,success);

@override
String toString() {
  return 'OrderDetails(showShipments: $showShipments, shipments: $shipments, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $OrderDetailsCopyWith<$Res>  {
  factory $OrderDetailsCopyWith(OrderDetails value, $Res Function(OrderDetails) _then) = _$OrderDetailsCopyWithImpl;
@useResult
$Res call({
 bool? showShipments, List<OrderDetailsShipment> shipments, String message, bool success
});




}
/// @nodoc
class _$OrderDetailsCopyWithImpl<$Res>
    implements $OrderDetailsCopyWith<$Res> {
  _$OrderDetailsCopyWithImpl(this._self, this._then);

  final OrderDetails _self;
  final $Res Function(OrderDetails) _then;

/// Create a copy of OrderDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? showShipments = freezed,Object? shipments = null,Object? message = null,Object? success = null,}) {
  return _then(_self.copyWith(
showShipments: freezed == showShipments ? _self.showShipments : showShipments // ignore: cast_nullable_to_non_nullable
as bool?,shipments: null == shipments ? _self.shipments : shipments // ignore: cast_nullable_to_non_nullable
as List<OrderDetailsShipment>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderDetails].
extension OrderDetailsPatterns on OrderDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetails value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetails value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? showShipments,  List<OrderDetailsShipment> shipments,  String message,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetails() when $default != null:
return $default(_that.showShipments,_that.shipments,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? showShipments,  List<OrderDetailsShipment> shipments,  String message,  bool success)  $default,) {final _that = this;
switch (_that) {
case _OrderDetails():
return $default(_that.showShipments,_that.shipments,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? showShipments,  List<OrderDetailsShipment> shipments,  String message,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetails() when $default != null:
return $default(_that.showShipments,_that.shipments,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _OrderDetails implements OrderDetails {
  const _OrderDetails({this.showShipments, required final  List<OrderDetailsShipment> shipments, required this.message, required this.success}): _shipments = shipments;
  factory _OrderDetails.fromJson(Map<String, dynamic> json) => _$OrderDetailsFromJson(json);

@override final  bool? showShipments;
 final  List<OrderDetailsShipment> _shipments;
@override List<OrderDetailsShipment> get shipments {
  if (_shipments is EqualUnmodifiableListView) return _shipments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_shipments);
}

@override final  String message;
@override final  bool success;

/// Create a copy of OrderDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailsCopyWith<_OrderDetails> get copyWith => __$OrderDetailsCopyWithImpl<_OrderDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetails&&(identical(other.showShipments, showShipments) || other.showShipments == showShipments)&&const DeepCollectionEquality().equals(other._shipments, _shipments)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,showShipments,const DeepCollectionEquality().hash(_shipments),message,success);

@override
String toString() {
  return 'OrderDetails(showShipments: $showShipments, shipments: $shipments, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailsCopyWith<$Res> implements $OrderDetailsCopyWith<$Res> {
  factory _$OrderDetailsCopyWith(_OrderDetails value, $Res Function(_OrderDetails) _then) = __$OrderDetailsCopyWithImpl;
@override @useResult
$Res call({
 bool? showShipments, List<OrderDetailsShipment> shipments, String message, bool success
});




}
/// @nodoc
class __$OrderDetailsCopyWithImpl<$Res>
    implements _$OrderDetailsCopyWith<$Res> {
  __$OrderDetailsCopyWithImpl(this._self, this._then);

  final _OrderDetails _self;
  final $Res Function(_OrderDetails) _then;

/// Create a copy of OrderDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showShipments = freezed,Object? shipments = null,Object? message = null,Object? success = null,}) {
  return _then(_OrderDetails(
showShipments: freezed == showShipments ? _self.showShipments : showShipments // ignore: cast_nullable_to_non_nullable
as bool?,shipments: null == shipments ? _self._shipments : shipments // ignore: cast_nullable_to_non_nullable
as List<OrderDetailsShipment>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
