// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RateInfo {

 String? get rateId; String? get shippingId; String? get destinationId; String? get baseRate;
/// Create a copy of RateInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RateInfoCopyWith<RateInfo> get copyWith => _$RateInfoCopyWithImpl<RateInfo>(this as RateInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RateInfo&&(identical(other.rateId, rateId) || other.rateId == rateId)&&(identical(other.shippingId, shippingId) || other.shippingId == shippingId)&&(identical(other.destinationId, destinationId) || other.destinationId == destinationId)&&(identical(other.baseRate, baseRate) || other.baseRate == baseRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rateId,shippingId,destinationId,baseRate);

@override
String toString() {
  return 'RateInfo(rateId: $rateId, shippingId: $shippingId, destinationId: $destinationId, baseRate: $baseRate)';
}


}

/// @nodoc
abstract mixin class $RateInfoCopyWith<$Res>  {
  factory $RateInfoCopyWith(RateInfo value, $Res Function(RateInfo) _then) = _$RateInfoCopyWithImpl;
@useResult
$Res call({
 String? rateId, String? shippingId, String? destinationId, String? baseRate
});




}
/// @nodoc
class _$RateInfoCopyWithImpl<$Res>
    implements $RateInfoCopyWith<$Res> {
  _$RateInfoCopyWithImpl(this._self, this._then);

  final RateInfo _self;
  final $Res Function(RateInfo) _then;

/// Create a copy of RateInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rateId = freezed,Object? shippingId = freezed,Object? destinationId = freezed,Object? baseRate = freezed,}) {
  return _then(_self.copyWith(
rateId: freezed == rateId ? _self.rateId : rateId // ignore: cast_nullable_to_non_nullable
as String?,shippingId: freezed == shippingId ? _self.shippingId : shippingId // ignore: cast_nullable_to_non_nullable
as String?,destinationId: freezed == destinationId ? _self.destinationId : destinationId // ignore: cast_nullable_to_non_nullable
as String?,baseRate: freezed == baseRate ? _self.baseRate : baseRate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RateInfo].
extension RateInfoPatterns on RateInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RateInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RateInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RateInfo value)  $default,){
final _that = this;
switch (_that) {
case _RateInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RateInfo value)?  $default,){
final _that = this;
switch (_that) {
case _RateInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? rateId,  String? shippingId,  String? destinationId,  String? baseRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RateInfo() when $default != null:
return $default(_that.rateId,_that.shippingId,_that.destinationId,_that.baseRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? rateId,  String? shippingId,  String? destinationId,  String? baseRate)  $default,) {final _that = this;
switch (_that) {
case _RateInfo():
return $default(_that.rateId,_that.shippingId,_that.destinationId,_that.baseRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? rateId,  String? shippingId,  String? destinationId,  String? baseRate)?  $default,) {final _that = this;
switch (_that) {
case _RateInfo() when $default != null:
return $default(_that.rateId,_that.shippingId,_that.destinationId,_that.baseRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _RateInfo implements RateInfo {
   _RateInfo({this.rateId, this.shippingId, this.destinationId, this.baseRate});
  factory _RateInfo.fromJson(Map<String, dynamic> json) => _$RateInfoFromJson(json);

@override final  String? rateId;
@override final  String? shippingId;
@override final  String? destinationId;
@override final  String? baseRate;

/// Create a copy of RateInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RateInfoCopyWith<_RateInfo> get copyWith => __$RateInfoCopyWithImpl<_RateInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RateInfo&&(identical(other.rateId, rateId) || other.rateId == rateId)&&(identical(other.shippingId, shippingId) || other.shippingId == shippingId)&&(identical(other.destinationId, destinationId) || other.destinationId == destinationId)&&(identical(other.baseRate, baseRate) || other.baseRate == baseRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rateId,shippingId,destinationId,baseRate);

@override
String toString() {
  return 'RateInfo(rateId: $rateId, shippingId: $shippingId, destinationId: $destinationId, baseRate: $baseRate)';
}


}

/// @nodoc
abstract mixin class _$RateInfoCopyWith<$Res> implements $RateInfoCopyWith<$Res> {
  factory _$RateInfoCopyWith(_RateInfo value, $Res Function(_RateInfo) _then) = __$RateInfoCopyWithImpl;
@override @useResult
$Res call({
 String? rateId, String? shippingId, String? destinationId, String? baseRate
});




}
/// @nodoc
class __$RateInfoCopyWithImpl<$Res>
    implements _$RateInfoCopyWith<$Res> {
  __$RateInfoCopyWithImpl(this._self, this._then);

  final _RateInfo _self;
  final $Res Function(_RateInfo) _then;

/// Create a copy of RateInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rateId = freezed,Object? shippingId = freezed,Object? destinationId = freezed,Object? baseRate = freezed,}) {
  return _then(_RateInfo(
rateId: freezed == rateId ? _self.rateId : rateId // ignore: cast_nullable_to_non_nullable
as String?,shippingId: freezed == shippingId ? _self.shippingId : shippingId // ignore: cast_nullable_to_non_nullable
as String?,destinationId: freezed == destinationId ? _self.destinationId : destinationId // ignore: cast_nullable_to_non_nullable
as String?,baseRate: freezed == baseRate ? _self.baseRate : baseRate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
