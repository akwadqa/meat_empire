// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Variant {

 String get variantId; String get modifier; String get variantName; String get modifierType; String get formatModifier;
/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantCopyWith<Variant> get copyWith => _$VariantCopyWithImpl<Variant>(this as Variant, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Variant&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.modifier, modifier) || other.modifier == modifier)&&(identical(other.variantName, variantName) || other.variantName == variantName)&&(identical(other.modifierType, modifierType) || other.modifierType == modifierType)&&(identical(other.formatModifier, formatModifier) || other.formatModifier == formatModifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,variantId,modifier,variantName,modifierType,formatModifier);

@override
String toString() {
  return 'Variant(variantId: $variantId, modifier: $modifier, variantName: $variantName, modifierType: $modifierType, formatModifier: $formatModifier)';
}


}

/// @nodoc
abstract mixin class $VariantCopyWith<$Res>  {
  factory $VariantCopyWith(Variant value, $Res Function(Variant) _then) = _$VariantCopyWithImpl;
@useResult
$Res call({
 String variantId, String modifier, String variantName, String modifierType, String formatModifier
});




}
/// @nodoc
class _$VariantCopyWithImpl<$Res>
    implements $VariantCopyWith<$Res> {
  _$VariantCopyWithImpl(this._self, this._then);

  final Variant _self;
  final $Res Function(Variant) _then;

/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variantId = null,Object? modifier = null,Object? variantName = null,Object? modifierType = null,Object? formatModifier = null,}) {
  return _then(_self.copyWith(
variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,modifier: null == modifier ? _self.modifier : modifier // ignore: cast_nullable_to_non_nullable
as String,variantName: null == variantName ? _self.variantName : variantName // ignore: cast_nullable_to_non_nullable
as String,modifierType: null == modifierType ? _self.modifierType : modifierType // ignore: cast_nullable_to_non_nullable
as String,formatModifier: null == formatModifier ? _self.formatModifier : formatModifier // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Variant].
extension VariantPatterns on Variant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Variant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Variant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Variant value)  $default,){
final _that = this;
switch (_that) {
case _Variant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Variant value)?  $default,){
final _that = this;
switch (_that) {
case _Variant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String variantId,  String modifier,  String variantName,  String modifierType,  String formatModifier)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Variant() when $default != null:
return $default(_that.variantId,_that.modifier,_that.variantName,_that.modifierType,_that.formatModifier);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String variantId,  String modifier,  String variantName,  String modifierType,  String formatModifier)  $default,) {final _that = this;
switch (_that) {
case _Variant():
return $default(_that.variantId,_that.modifier,_that.variantName,_that.modifierType,_that.formatModifier);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String variantId,  String modifier,  String variantName,  String modifierType,  String formatModifier)?  $default,) {final _that = this;
switch (_that) {
case _Variant() when $default != null:
return $default(_that.variantId,_that.modifier,_that.variantName,_that.modifierType,_that.formatModifier);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Variant implements Variant {
   _Variant({required this.variantId, required this.modifier, required this.variantName, required this.modifierType, required this.formatModifier});
  factory _Variant.fromJson(Map<String, dynamic> json) => _$VariantFromJson(json);

@override final  String variantId;
@override final  String modifier;
@override final  String variantName;
@override final  String modifierType;
@override final  String formatModifier;

/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantCopyWith<_Variant> get copyWith => __$VariantCopyWithImpl<_Variant>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Variant&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.modifier, modifier) || other.modifier == modifier)&&(identical(other.variantName, variantName) || other.variantName == variantName)&&(identical(other.modifierType, modifierType) || other.modifierType == modifierType)&&(identical(other.formatModifier, formatModifier) || other.formatModifier == formatModifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,variantId,modifier,variantName,modifierType,formatModifier);

@override
String toString() {
  return 'Variant(variantId: $variantId, modifier: $modifier, variantName: $variantName, modifierType: $modifierType, formatModifier: $formatModifier)';
}


}

/// @nodoc
abstract mixin class _$VariantCopyWith<$Res> implements $VariantCopyWith<$Res> {
  factory _$VariantCopyWith(_Variant value, $Res Function(_Variant) _then) = __$VariantCopyWithImpl;
@override @useResult
$Res call({
 String variantId, String modifier, String variantName, String modifierType, String formatModifier
});




}
/// @nodoc
class __$VariantCopyWithImpl<$Res>
    implements _$VariantCopyWith<$Res> {
  __$VariantCopyWithImpl(this._self, this._then);

  final _Variant _self;
  final $Res Function(_Variant) _then;

/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variantId = null,Object? modifier = null,Object? variantName = null,Object? modifierType = null,Object? formatModifier = null,}) {
  return _then(_Variant(
variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,modifier: null == modifier ? _self.modifier : modifier // ignore: cast_nullable_to_non_nullable
as String,variantName: null == variantName ? _self.variantName : variantName // ignore: cast_nullable_to_non_nullable
as String,modifierType: null == modifierType ? _self.modifierType : modifierType // ignore: cast_nullable_to_non_nullable
as String,formatModifier: null == formatModifier ? _self.formatModifier : formatModifier // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
