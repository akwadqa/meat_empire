// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'points_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PointsInfo {

 int? get rawTotalPrice; int? get totalPrice;
/// Create a copy of PointsInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointsInfoCopyWith<PointsInfo> get copyWith => _$PointsInfoCopyWithImpl<PointsInfo>(this as PointsInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PointsInfo&&(identical(other.rawTotalPrice, rawTotalPrice) || other.rawTotalPrice == rawTotalPrice)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawTotalPrice,totalPrice);

@override
String toString() {
  return 'PointsInfo(rawTotalPrice: $rawTotalPrice, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class $PointsInfoCopyWith<$Res>  {
  factory $PointsInfoCopyWith(PointsInfo value, $Res Function(PointsInfo) _then) = _$PointsInfoCopyWithImpl;
@useResult
$Res call({
 int? rawTotalPrice, int? totalPrice
});




}
/// @nodoc
class _$PointsInfoCopyWithImpl<$Res>
    implements $PointsInfoCopyWith<$Res> {
  _$PointsInfoCopyWithImpl(this._self, this._then);

  final PointsInfo _self;
  final $Res Function(PointsInfo) _then;

/// Create a copy of PointsInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rawTotalPrice = freezed,Object? totalPrice = freezed,}) {
  return _then(_self.copyWith(
rawTotalPrice: freezed == rawTotalPrice ? _self.rawTotalPrice : rawTotalPrice // ignore: cast_nullable_to_non_nullable
as int?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PointsInfo].
extension PointsInfoPatterns on PointsInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PointsInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PointsInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PointsInfo value)  $default,){
final _that = this;
switch (_that) {
case _PointsInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PointsInfo value)?  $default,){
final _that = this;
switch (_that) {
case _PointsInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? rawTotalPrice,  int? totalPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PointsInfo() when $default != null:
return $default(_that.rawTotalPrice,_that.totalPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? rawTotalPrice,  int? totalPrice)  $default,) {final _that = this;
switch (_that) {
case _PointsInfo():
return $default(_that.rawTotalPrice,_that.totalPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? rawTotalPrice,  int? totalPrice)?  $default,) {final _that = this;
switch (_that) {
case _PointsInfo() when $default != null:
return $default(_that.rawTotalPrice,_that.totalPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _PointsInfo implements PointsInfo {
   _PointsInfo({this.rawTotalPrice, this.totalPrice});
  factory _PointsInfo.fromJson(Map<String, dynamic> json) => _$PointsInfoFromJson(json);

@override final  int? rawTotalPrice;
@override final  int? totalPrice;

/// Create a copy of PointsInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PointsInfoCopyWith<_PointsInfo> get copyWith => __$PointsInfoCopyWithImpl<_PointsInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PointsInfo&&(identical(other.rawTotalPrice, rawTotalPrice) || other.rawTotalPrice == rawTotalPrice)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawTotalPrice,totalPrice);

@override
String toString() {
  return 'PointsInfo(rawTotalPrice: $rawTotalPrice, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class _$PointsInfoCopyWith<$Res> implements $PointsInfoCopyWith<$Res> {
  factory _$PointsInfoCopyWith(_PointsInfo value, $Res Function(_PointsInfo) _then) = __$PointsInfoCopyWithImpl;
@override @useResult
$Res call({
 int? rawTotalPrice, int? totalPrice
});




}
/// @nodoc
class __$PointsInfoCopyWithImpl<$Res>
    implements _$PointsInfoCopyWith<$Res> {
  __$PointsInfoCopyWithImpl(this._self, this._then);

  final _PointsInfo _self;
  final $Res Function(_PointsInfo) _then;

/// Create a copy of PointsInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rawTotalPrice = freezed,Object? totalPrice = freezed,}) {
  return _then(_PointsInfo(
rawTotalPrice: freezed == rawTotalPrice ? _self.rawTotalPrice : rawTotalPrice // ignore: cast_nullable_to_non_nullable
as int?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
