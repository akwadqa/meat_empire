// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShippingParams {

 int? get minItemsInBox; int? get maxItemsInBox; int? get boxLength; int? get boxWidth; int? get boxHeight;
/// Create a copy of ShippingParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingParamsCopyWith<ShippingParams> get copyWith => _$ShippingParamsCopyWithImpl<ShippingParams>(this as ShippingParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShippingParams&&(identical(other.minItemsInBox, minItemsInBox) || other.minItemsInBox == minItemsInBox)&&(identical(other.maxItemsInBox, maxItemsInBox) || other.maxItemsInBox == maxItemsInBox)&&(identical(other.boxLength, boxLength) || other.boxLength == boxLength)&&(identical(other.boxWidth, boxWidth) || other.boxWidth == boxWidth)&&(identical(other.boxHeight, boxHeight) || other.boxHeight == boxHeight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minItemsInBox,maxItemsInBox,boxLength,boxWidth,boxHeight);

@override
String toString() {
  return 'ShippingParams(minItemsInBox: $minItemsInBox, maxItemsInBox: $maxItemsInBox, boxLength: $boxLength, boxWidth: $boxWidth, boxHeight: $boxHeight)';
}


}

/// @nodoc
abstract mixin class $ShippingParamsCopyWith<$Res>  {
  factory $ShippingParamsCopyWith(ShippingParams value, $Res Function(ShippingParams) _then) = _$ShippingParamsCopyWithImpl;
@useResult
$Res call({
 int? minItemsInBox, int? maxItemsInBox, int? boxLength, int? boxWidth, int? boxHeight
});




}
/// @nodoc
class _$ShippingParamsCopyWithImpl<$Res>
    implements $ShippingParamsCopyWith<$Res> {
  _$ShippingParamsCopyWithImpl(this._self, this._then);

  final ShippingParams _self;
  final $Res Function(ShippingParams) _then;

/// Create a copy of ShippingParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minItemsInBox = freezed,Object? maxItemsInBox = freezed,Object? boxLength = freezed,Object? boxWidth = freezed,Object? boxHeight = freezed,}) {
  return _then(_self.copyWith(
minItemsInBox: freezed == minItemsInBox ? _self.minItemsInBox : minItemsInBox // ignore: cast_nullable_to_non_nullable
as int?,maxItemsInBox: freezed == maxItemsInBox ? _self.maxItemsInBox : maxItemsInBox // ignore: cast_nullable_to_non_nullable
as int?,boxLength: freezed == boxLength ? _self.boxLength : boxLength // ignore: cast_nullable_to_non_nullable
as int?,boxWidth: freezed == boxWidth ? _self.boxWidth : boxWidth // ignore: cast_nullable_to_non_nullable
as int?,boxHeight: freezed == boxHeight ? _self.boxHeight : boxHeight // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShippingParams].
extension ShippingParamsPatterns on ShippingParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShippingParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShippingParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShippingParams value)  $default,){
final _that = this;
switch (_that) {
case _ShippingParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShippingParams value)?  $default,){
final _that = this;
switch (_that) {
case _ShippingParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? minItemsInBox,  int? maxItemsInBox,  int? boxLength,  int? boxWidth,  int? boxHeight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShippingParams() when $default != null:
return $default(_that.minItemsInBox,_that.maxItemsInBox,_that.boxLength,_that.boxWidth,_that.boxHeight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? minItemsInBox,  int? maxItemsInBox,  int? boxLength,  int? boxWidth,  int? boxHeight)  $default,) {final _that = this;
switch (_that) {
case _ShippingParams():
return $default(_that.minItemsInBox,_that.maxItemsInBox,_that.boxLength,_that.boxWidth,_that.boxHeight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? minItemsInBox,  int? maxItemsInBox,  int? boxLength,  int? boxWidth,  int? boxHeight)?  $default,) {final _that = this;
switch (_that) {
case _ShippingParams() when $default != null:
return $default(_that.minItemsInBox,_that.maxItemsInBox,_that.boxLength,_that.boxWidth,_that.boxHeight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _ShippingParams implements ShippingParams {
   _ShippingParams({this.minItemsInBox, this.maxItemsInBox, this.boxLength, this.boxWidth, this.boxHeight});
  factory _ShippingParams.fromJson(Map<String, dynamic> json) => _$ShippingParamsFromJson(json);

@override final  int? minItemsInBox;
@override final  int? maxItemsInBox;
@override final  int? boxLength;
@override final  int? boxWidth;
@override final  int? boxHeight;

/// Create a copy of ShippingParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingParamsCopyWith<_ShippingParams> get copyWith => __$ShippingParamsCopyWithImpl<_ShippingParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShippingParams&&(identical(other.minItemsInBox, minItemsInBox) || other.minItemsInBox == minItemsInBox)&&(identical(other.maxItemsInBox, maxItemsInBox) || other.maxItemsInBox == maxItemsInBox)&&(identical(other.boxLength, boxLength) || other.boxLength == boxLength)&&(identical(other.boxWidth, boxWidth) || other.boxWidth == boxWidth)&&(identical(other.boxHeight, boxHeight) || other.boxHeight == boxHeight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minItemsInBox,maxItemsInBox,boxLength,boxWidth,boxHeight);

@override
String toString() {
  return 'ShippingParams(minItemsInBox: $minItemsInBox, maxItemsInBox: $maxItemsInBox, boxLength: $boxLength, boxWidth: $boxWidth, boxHeight: $boxHeight)';
}


}

/// @nodoc
abstract mixin class _$ShippingParamsCopyWith<$Res> implements $ShippingParamsCopyWith<$Res> {
  factory _$ShippingParamsCopyWith(_ShippingParams value, $Res Function(_ShippingParams) _then) = __$ShippingParamsCopyWithImpl;
@override @useResult
$Res call({
 int? minItemsInBox, int? maxItemsInBox, int? boxLength, int? boxWidth, int? boxHeight
});




}
/// @nodoc
class __$ShippingParamsCopyWithImpl<$Res>
    implements _$ShippingParamsCopyWith<$Res> {
  __$ShippingParamsCopyWithImpl(this._self, this._then);

  final _ShippingParams _self;
  final $Res Function(_ShippingParams) _then;

/// Create a copy of ShippingParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minItemsInBox = freezed,Object? maxItemsInBox = freezed,Object? boxLength = freezed,Object? boxWidth = freezed,Object? boxHeight = freezed,}) {
  return _then(_ShippingParams(
minItemsInBox: freezed == minItemsInBox ? _self.minItemsInBox : minItemsInBox // ignore: cast_nullable_to_non_nullable
as int?,maxItemsInBox: freezed == maxItemsInBox ? _self.maxItemsInBox : maxItemsInBox // ignore: cast_nullable_to_non_nullable
as int?,boxLength: freezed == boxLength ? _self.boxLength : boxLength // ignore: cast_nullable_to_non_nullable
as int?,boxWidth: freezed == boxWidth ? _self.boxWidth : boxWidth // ignore: cast_nullable_to_non_nullable
as int?,boxHeight: freezed == boxHeight ? _self.boxHeight : boxHeight // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
