// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Shipping {

 String? get shippingId; String? get shipping; String? get description; String? get serviceDeliveryTime; double? get rate; String? get formatRate;
/// Create a copy of Shipping
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingCopyWith<Shipping> get copyWith => _$ShippingCopyWithImpl<Shipping>(this as Shipping, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Shipping&&(identical(other.shippingId, shippingId) || other.shippingId == shippingId)&&(identical(other.shipping, shipping) || other.shipping == shipping)&&(identical(other.description, description) || other.description == description)&&(identical(other.serviceDeliveryTime, serviceDeliveryTime) || other.serviceDeliveryTime == serviceDeliveryTime)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.formatRate, formatRate) || other.formatRate == formatRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shippingId,shipping,description,serviceDeliveryTime,rate,formatRate);

@override
String toString() {
  return 'Shipping(shippingId: $shippingId, shipping: $shipping, description: $description, serviceDeliveryTime: $serviceDeliveryTime, rate: $rate, formatRate: $formatRate)';
}


}

/// @nodoc
abstract mixin class $ShippingCopyWith<$Res>  {
  factory $ShippingCopyWith(Shipping value, $Res Function(Shipping) _then) = _$ShippingCopyWithImpl;
@useResult
$Res call({
 String? shippingId, String? shipping, String? description, String? serviceDeliveryTime, double? rate, String? formatRate
});




}
/// @nodoc
class _$ShippingCopyWithImpl<$Res>
    implements $ShippingCopyWith<$Res> {
  _$ShippingCopyWithImpl(this._self, this._then);

  final Shipping _self;
  final $Res Function(Shipping) _then;

/// Create a copy of Shipping
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shippingId = freezed,Object? shipping = freezed,Object? description = freezed,Object? serviceDeliveryTime = freezed,Object? rate = freezed,Object? formatRate = freezed,}) {
  return _then(_self.copyWith(
shippingId: freezed == shippingId ? _self.shippingId : shippingId // ignore: cast_nullable_to_non_nullable
as String?,shipping: freezed == shipping ? _self.shipping : shipping // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,serviceDeliveryTime: freezed == serviceDeliveryTime ? _self.serviceDeliveryTime : serviceDeliveryTime // ignore: cast_nullable_to_non_nullable
as String?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double?,formatRate: freezed == formatRate ? _self.formatRate : formatRate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Shipping].
extension ShippingPatterns on Shipping {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Shipping value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Shipping() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Shipping value)  $default,){
final _that = this;
switch (_that) {
case _Shipping():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Shipping value)?  $default,){
final _that = this;
switch (_that) {
case _Shipping() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? shippingId,  String? shipping,  String? description,  String? serviceDeliveryTime,  double? rate,  String? formatRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Shipping() when $default != null:
return $default(_that.shippingId,_that.shipping,_that.description,_that.serviceDeliveryTime,_that.rate,_that.formatRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? shippingId,  String? shipping,  String? description,  String? serviceDeliveryTime,  double? rate,  String? formatRate)  $default,) {final _that = this;
switch (_that) {
case _Shipping():
return $default(_that.shippingId,_that.shipping,_that.description,_that.serviceDeliveryTime,_that.rate,_that.formatRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? shippingId,  String? shipping,  String? description,  String? serviceDeliveryTime,  double? rate,  String? formatRate)?  $default,) {final _that = this;
switch (_that) {
case _Shipping() when $default != null:
return $default(_that.shippingId,_that.shipping,_that.description,_that.serviceDeliveryTime,_that.rate,_that.formatRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Shipping implements Shipping {
   _Shipping({this.shippingId, this.shipping, this.description, this.serviceDeliveryTime, this.rate, this.formatRate});
  factory _Shipping.fromJson(Map<String, dynamic> json) => _$ShippingFromJson(json);

@override final  String? shippingId;
@override final  String? shipping;
@override final  String? description;
@override final  String? serviceDeliveryTime;
@override final  double? rate;
@override final  String? formatRate;

/// Create a copy of Shipping
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingCopyWith<_Shipping> get copyWith => __$ShippingCopyWithImpl<_Shipping>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Shipping&&(identical(other.shippingId, shippingId) || other.shippingId == shippingId)&&(identical(other.shipping, shipping) || other.shipping == shipping)&&(identical(other.description, description) || other.description == description)&&(identical(other.serviceDeliveryTime, serviceDeliveryTime) || other.serviceDeliveryTime == serviceDeliveryTime)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.formatRate, formatRate) || other.formatRate == formatRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shippingId,shipping,description,serviceDeliveryTime,rate,formatRate);

@override
String toString() {
  return 'Shipping(shippingId: $shippingId, shipping: $shipping, description: $description, serviceDeliveryTime: $serviceDeliveryTime, rate: $rate, formatRate: $formatRate)';
}


}

/// @nodoc
abstract mixin class _$ShippingCopyWith<$Res> implements $ShippingCopyWith<$Res> {
  factory _$ShippingCopyWith(_Shipping value, $Res Function(_Shipping) _then) = __$ShippingCopyWithImpl;
@override @useResult
$Res call({
 String? shippingId, String? shipping, String? description, String? serviceDeliveryTime, double? rate, String? formatRate
});




}
/// @nodoc
class __$ShippingCopyWithImpl<$Res>
    implements _$ShippingCopyWith<$Res> {
  __$ShippingCopyWithImpl(this._self, this._then);

  final _Shipping _self;
  final $Res Function(_Shipping) _then;

/// Create a copy of Shipping
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shippingId = freezed,Object? shipping = freezed,Object? description = freezed,Object? serviceDeliveryTime = freezed,Object? rate = freezed,Object? formatRate = freezed,}) {
  return _then(_Shipping(
shippingId: freezed == shippingId ? _self.shippingId : shippingId // ignore: cast_nullable_to_non_nullable
as String?,shipping: freezed == shipping ? _self.shipping : shipping // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,serviceDeliveryTime: freezed == serviceDeliveryTime ? _self.serviceDeliveryTime : serviceDeliveryTime // ignore: cast_nullable_to_non_nullable
as String?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double?,formatRate: freezed == formatRate ? _self.formatRate : formatRate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
