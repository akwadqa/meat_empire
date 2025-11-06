// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductOption {

 dynamic get optionId; dynamic get optionType; String? get optionName; String? get optionTypeName; dynamic get selectedVariant; String? get value;
/// Create a copy of ProductOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductOptionCopyWith<ProductOption> get copyWith => _$ProductOptionCopyWithImpl<ProductOption>(this as ProductOption, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductOption&&const DeepCollectionEquality().equals(other.optionId, optionId)&&const DeepCollectionEquality().equals(other.optionType, optionType)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.optionTypeName, optionTypeName) || other.optionTypeName == optionTypeName)&&const DeepCollectionEquality().equals(other.selectedVariant, selectedVariant)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(optionId),const DeepCollectionEquality().hash(optionType),optionName,optionTypeName,const DeepCollectionEquality().hash(selectedVariant),value);

@override
String toString() {
  return 'ProductOption(optionId: $optionId, optionType: $optionType, optionName: $optionName, optionTypeName: $optionTypeName, selectedVariant: $selectedVariant, value: $value)';
}


}

/// @nodoc
abstract mixin class $ProductOptionCopyWith<$Res>  {
  factory $ProductOptionCopyWith(ProductOption value, $Res Function(ProductOption) _then) = _$ProductOptionCopyWithImpl;
@useResult
$Res call({
 dynamic optionId, dynamic optionType, String? optionName, String? optionTypeName, dynamic selectedVariant, String? value
});




}
/// @nodoc
class _$ProductOptionCopyWithImpl<$Res>
    implements $ProductOptionCopyWith<$Res> {
  _$ProductOptionCopyWithImpl(this._self, this._then);

  final ProductOption _self;
  final $Res Function(ProductOption) _then;

/// Create a copy of ProductOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? optionId = freezed,Object? optionType = freezed,Object? optionName = freezed,Object? optionTypeName = freezed,Object? selectedVariant = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
optionId: freezed == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as dynamic,optionType: freezed == optionType ? _self.optionType : optionType // ignore: cast_nullable_to_non_nullable
as dynamic,optionName: freezed == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String?,optionTypeName: freezed == optionTypeName ? _self.optionTypeName : optionTypeName // ignore: cast_nullable_to_non_nullable
as String?,selectedVariant: freezed == selectedVariant ? _self.selectedVariant : selectedVariant // ignore: cast_nullable_to_non_nullable
as dynamic,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductOption].
extension ProductOptionPatterns on ProductOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductOption value)  $default,){
final _that = this;
switch (_that) {
case _ProductOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductOption value)?  $default,){
final _that = this;
switch (_that) {
case _ProductOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic optionId,  dynamic optionType,  String? optionName,  String? optionTypeName,  dynamic selectedVariant,  String? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductOption() when $default != null:
return $default(_that.optionId,_that.optionType,_that.optionName,_that.optionTypeName,_that.selectedVariant,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic optionId,  dynamic optionType,  String? optionName,  String? optionTypeName,  dynamic selectedVariant,  String? value)  $default,) {final _that = this;
switch (_that) {
case _ProductOption():
return $default(_that.optionId,_that.optionType,_that.optionName,_that.optionTypeName,_that.selectedVariant,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic optionId,  dynamic optionType,  String? optionName,  String? optionTypeName,  dynamic selectedVariant,  String? value)?  $default,) {final _that = this;
switch (_that) {
case _ProductOption() when $default != null:
return $default(_that.optionId,_that.optionType,_that.optionName,_that.optionTypeName,_that.selectedVariant,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _ProductOption implements ProductOption {
   _ProductOption({this.optionId, this.optionType, this.optionName, this.optionTypeName, this.selectedVariant, this.value});
  factory _ProductOption.fromJson(Map<String, dynamic> json) => _$ProductOptionFromJson(json);

@override final  dynamic optionId;
@override final  dynamic optionType;
@override final  String? optionName;
@override final  String? optionTypeName;
@override final  dynamic selectedVariant;
@override final  String? value;

/// Create a copy of ProductOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductOptionCopyWith<_ProductOption> get copyWith => __$ProductOptionCopyWithImpl<_ProductOption>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductOption&&const DeepCollectionEquality().equals(other.optionId, optionId)&&const DeepCollectionEquality().equals(other.optionType, optionType)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.optionTypeName, optionTypeName) || other.optionTypeName == optionTypeName)&&const DeepCollectionEquality().equals(other.selectedVariant, selectedVariant)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(optionId),const DeepCollectionEquality().hash(optionType),optionName,optionTypeName,const DeepCollectionEquality().hash(selectedVariant),value);

@override
String toString() {
  return 'ProductOption(optionId: $optionId, optionType: $optionType, optionName: $optionName, optionTypeName: $optionTypeName, selectedVariant: $selectedVariant, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ProductOptionCopyWith<$Res> implements $ProductOptionCopyWith<$Res> {
  factory _$ProductOptionCopyWith(_ProductOption value, $Res Function(_ProductOption) _then) = __$ProductOptionCopyWithImpl;
@override @useResult
$Res call({
 dynamic optionId, dynamic optionType, String? optionName, String? optionTypeName, dynamic selectedVariant, String? value
});




}
/// @nodoc
class __$ProductOptionCopyWithImpl<$Res>
    implements _$ProductOptionCopyWith<$Res> {
  __$ProductOptionCopyWithImpl(this._self, this._then);

  final _ProductOption _self;
  final $Res Function(_ProductOption) _then;

/// Create a copy of ProductOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? optionId = freezed,Object? optionType = freezed,Object? optionName = freezed,Object? optionTypeName = freezed,Object? selectedVariant = freezed,Object? value = freezed,}) {
  return _then(_ProductOption(
optionId: freezed == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as dynamic,optionType: freezed == optionType ? _self.optionType : optionType // ignore: cast_nullable_to_non_nullable
as dynamic,optionName: freezed == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String?,optionTypeName: freezed == optionTypeName ? _self.optionTypeName : optionTypeName // ignore: cast_nullable_to_non_nullable
as String?,selectedVariant: freezed == selectedVariant ? _self.selectedVariant : selectedVariant // ignore: cast_nullable_to_non_nullable
as dynamic,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
