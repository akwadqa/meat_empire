// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variation_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VariationFeature {

 String get featureId; String get featureStyle; String get position; String get purpose; String get displayOnCatalog; String get description; String get internalName; String get prefix; String get suffix; String get purposePosition; String get productFeaturePurpose; String get variant; String get variantId; String get variantPosition;
/// Create a copy of VariationFeature
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariationFeatureCopyWith<VariationFeature> get copyWith => _$VariationFeatureCopyWithImpl<VariationFeature>(this as VariationFeature, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariationFeature&&(identical(other.featureId, featureId) || other.featureId == featureId)&&(identical(other.featureStyle, featureStyle) || other.featureStyle == featureStyle)&&(identical(other.position, position) || other.position == position)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.displayOnCatalog, displayOnCatalog) || other.displayOnCatalog == displayOnCatalog)&&(identical(other.description, description) || other.description == description)&&(identical(other.internalName, internalName) || other.internalName == internalName)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.suffix, suffix) || other.suffix == suffix)&&(identical(other.purposePosition, purposePosition) || other.purposePosition == purposePosition)&&(identical(other.productFeaturePurpose, productFeaturePurpose) || other.productFeaturePurpose == productFeaturePurpose)&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.variantPosition, variantPosition) || other.variantPosition == variantPosition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,featureId,featureStyle,position,purpose,displayOnCatalog,description,internalName,prefix,suffix,purposePosition,productFeaturePurpose,variant,variantId,variantPosition);

@override
String toString() {
  return 'VariationFeature(featureId: $featureId, featureStyle: $featureStyle, position: $position, purpose: $purpose, displayOnCatalog: $displayOnCatalog, description: $description, internalName: $internalName, prefix: $prefix, suffix: $suffix, purposePosition: $purposePosition, productFeaturePurpose: $productFeaturePurpose, variant: $variant, variantId: $variantId, variantPosition: $variantPosition)';
}


}

/// @nodoc
abstract mixin class $VariationFeatureCopyWith<$Res>  {
  factory $VariationFeatureCopyWith(VariationFeature value, $Res Function(VariationFeature) _then) = _$VariationFeatureCopyWithImpl;
@useResult
$Res call({
 String featureId, String featureStyle, String position, String purpose, String displayOnCatalog, String description, String internalName, String prefix, String suffix, String purposePosition, String productFeaturePurpose, String variant, String variantId, String variantPosition
});




}
/// @nodoc
class _$VariationFeatureCopyWithImpl<$Res>
    implements $VariationFeatureCopyWith<$Res> {
  _$VariationFeatureCopyWithImpl(this._self, this._then);

  final VariationFeature _self;
  final $Res Function(VariationFeature) _then;

/// Create a copy of VariationFeature
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? featureId = null,Object? featureStyle = null,Object? position = null,Object? purpose = null,Object? displayOnCatalog = null,Object? description = null,Object? internalName = null,Object? prefix = null,Object? suffix = null,Object? purposePosition = null,Object? productFeaturePurpose = null,Object? variant = null,Object? variantId = null,Object? variantPosition = null,}) {
  return _then(_self.copyWith(
featureId: null == featureId ? _self.featureId : featureId // ignore: cast_nullable_to_non_nullable
as String,featureStyle: null == featureStyle ? _self.featureStyle : featureStyle // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,purpose: null == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String,displayOnCatalog: null == displayOnCatalog ? _self.displayOnCatalog : displayOnCatalog // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,internalName: null == internalName ? _self.internalName : internalName // ignore: cast_nullable_to_non_nullable
as String,prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String,suffix: null == suffix ? _self.suffix : suffix // ignore: cast_nullable_to_non_nullable
as String,purposePosition: null == purposePosition ? _self.purposePosition : purposePosition // ignore: cast_nullable_to_non_nullable
as String,productFeaturePurpose: null == productFeaturePurpose ? _self.productFeaturePurpose : productFeaturePurpose // ignore: cast_nullable_to_non_nullable
as String,variant: null == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as String,variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,variantPosition: null == variantPosition ? _self.variantPosition : variantPosition // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VariationFeature].
extension VariationFeaturePatterns on VariationFeature {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VariationFeature value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VariationFeature() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VariationFeature value)  $default,){
final _that = this;
switch (_that) {
case _VariationFeature():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VariationFeature value)?  $default,){
final _that = this;
switch (_that) {
case _VariationFeature() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String featureId,  String featureStyle,  String position,  String purpose,  String displayOnCatalog,  String description,  String internalName,  String prefix,  String suffix,  String purposePosition,  String productFeaturePurpose,  String variant,  String variantId,  String variantPosition)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VariationFeature() when $default != null:
return $default(_that.featureId,_that.featureStyle,_that.position,_that.purpose,_that.displayOnCatalog,_that.description,_that.internalName,_that.prefix,_that.suffix,_that.purposePosition,_that.productFeaturePurpose,_that.variant,_that.variantId,_that.variantPosition);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String featureId,  String featureStyle,  String position,  String purpose,  String displayOnCatalog,  String description,  String internalName,  String prefix,  String suffix,  String purposePosition,  String productFeaturePurpose,  String variant,  String variantId,  String variantPosition)  $default,) {final _that = this;
switch (_that) {
case _VariationFeature():
return $default(_that.featureId,_that.featureStyle,_that.position,_that.purpose,_that.displayOnCatalog,_that.description,_that.internalName,_that.prefix,_that.suffix,_that.purposePosition,_that.productFeaturePurpose,_that.variant,_that.variantId,_that.variantPosition);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String featureId,  String featureStyle,  String position,  String purpose,  String displayOnCatalog,  String description,  String internalName,  String prefix,  String suffix,  String purposePosition,  String productFeaturePurpose,  String variant,  String variantId,  String variantPosition)?  $default,) {final _that = this;
switch (_that) {
case _VariationFeature() when $default != null:
return $default(_that.featureId,_that.featureStyle,_that.position,_that.purpose,_that.displayOnCatalog,_that.description,_that.internalName,_that.prefix,_that.suffix,_that.purposePosition,_that.productFeaturePurpose,_that.variant,_that.variantId,_that.variantPosition);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _VariationFeature implements VariationFeature {
   _VariationFeature({required this.featureId, required this.featureStyle, required this.position, required this.purpose, required this.displayOnCatalog, required this.description, required this.internalName, required this.prefix, required this.suffix, required this.purposePosition, required this.productFeaturePurpose, required this.variant, required this.variantId, required this.variantPosition});
  factory _VariationFeature.fromJson(Map<String, dynamic> json) => _$VariationFeatureFromJson(json);

@override final  String featureId;
@override final  String featureStyle;
@override final  String position;
@override final  String purpose;
@override final  String displayOnCatalog;
@override final  String description;
@override final  String internalName;
@override final  String prefix;
@override final  String suffix;
@override final  String purposePosition;
@override final  String productFeaturePurpose;
@override final  String variant;
@override final  String variantId;
@override final  String variantPosition;

/// Create a copy of VariationFeature
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariationFeatureCopyWith<_VariationFeature> get copyWith => __$VariationFeatureCopyWithImpl<_VariationFeature>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariationFeature&&(identical(other.featureId, featureId) || other.featureId == featureId)&&(identical(other.featureStyle, featureStyle) || other.featureStyle == featureStyle)&&(identical(other.position, position) || other.position == position)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.displayOnCatalog, displayOnCatalog) || other.displayOnCatalog == displayOnCatalog)&&(identical(other.description, description) || other.description == description)&&(identical(other.internalName, internalName) || other.internalName == internalName)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.suffix, suffix) || other.suffix == suffix)&&(identical(other.purposePosition, purposePosition) || other.purposePosition == purposePosition)&&(identical(other.productFeaturePurpose, productFeaturePurpose) || other.productFeaturePurpose == productFeaturePurpose)&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.variantPosition, variantPosition) || other.variantPosition == variantPosition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,featureId,featureStyle,position,purpose,displayOnCatalog,description,internalName,prefix,suffix,purposePosition,productFeaturePurpose,variant,variantId,variantPosition);

@override
String toString() {
  return 'VariationFeature(featureId: $featureId, featureStyle: $featureStyle, position: $position, purpose: $purpose, displayOnCatalog: $displayOnCatalog, description: $description, internalName: $internalName, prefix: $prefix, suffix: $suffix, purposePosition: $purposePosition, productFeaturePurpose: $productFeaturePurpose, variant: $variant, variantId: $variantId, variantPosition: $variantPosition)';
}


}

/// @nodoc
abstract mixin class _$VariationFeatureCopyWith<$Res> implements $VariationFeatureCopyWith<$Res> {
  factory _$VariationFeatureCopyWith(_VariationFeature value, $Res Function(_VariationFeature) _then) = __$VariationFeatureCopyWithImpl;
@override @useResult
$Res call({
 String featureId, String featureStyle, String position, String purpose, String displayOnCatalog, String description, String internalName, String prefix, String suffix, String purposePosition, String productFeaturePurpose, String variant, String variantId, String variantPosition
});




}
/// @nodoc
class __$VariationFeatureCopyWithImpl<$Res>
    implements _$VariationFeatureCopyWith<$Res> {
  __$VariationFeatureCopyWithImpl(this._self, this._then);

  final _VariationFeature _self;
  final $Res Function(_VariationFeature) _then;

/// Create a copy of VariationFeature
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? featureId = null,Object? featureStyle = null,Object? position = null,Object? purpose = null,Object? displayOnCatalog = null,Object? description = null,Object? internalName = null,Object? prefix = null,Object? suffix = null,Object? purposePosition = null,Object? productFeaturePurpose = null,Object? variant = null,Object? variantId = null,Object? variantPosition = null,}) {
  return _then(_VariationFeature(
featureId: null == featureId ? _self.featureId : featureId // ignore: cast_nullable_to_non_nullable
as String,featureStyle: null == featureStyle ? _self.featureStyle : featureStyle // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,purpose: null == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String,displayOnCatalog: null == displayOnCatalog ? _self.displayOnCatalog : displayOnCatalog // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,internalName: null == internalName ? _self.internalName : internalName // ignore: cast_nullable_to_non_nullable
as String,prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String,suffix: null == suffix ? _self.suffix : suffix // ignore: cast_nullable_to_non_nullable
as String,purposePosition: null == purposePosition ? _self.purposePosition : purposePosition // ignore: cast_nullable_to_non_nullable
as String,productFeaturePurpose: null == productFeaturePurpose ? _self.productFeaturePurpose : productFeaturePurpose // ignore: cast_nullable_to_non_nullable
as String,variant: null == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as String,variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,variantPosition: null == variantPosition ? _self.variantPosition : variantPosition // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
