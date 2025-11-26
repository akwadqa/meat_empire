// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Option {

 List<Variant> get variants; int get optionId; String get optionType; String get optionName;@JsonKey(name: 'required') String get isRequired; bool get inventory; String get innerHint; int get textModifier;
/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionCopyWith<Option> get copyWith => _$OptionCopyWithImpl<Option>(this as Option, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Option&&const DeepCollectionEquality().equals(other.variants, variants)&&(identical(other.optionId, optionId) || other.optionId == optionId)&&(identical(other.optionType, optionType) || other.optionType == optionType)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.inventory, inventory) || other.inventory == inventory)&&(identical(other.innerHint, innerHint) || other.innerHint == innerHint)&&(identical(other.textModifier, textModifier) || other.textModifier == textModifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(variants),optionId,optionType,optionName,isRequired,inventory,innerHint,textModifier);

@override
String toString() {
  return 'Option(variants: $variants, optionId: $optionId, optionType: $optionType, optionName: $optionName, isRequired: $isRequired, inventory: $inventory, innerHint: $innerHint, textModifier: $textModifier)';
}


}

/// @nodoc
abstract mixin class $OptionCopyWith<$Res>  {
  factory $OptionCopyWith(Option value, $Res Function(Option) _then) = _$OptionCopyWithImpl;
@useResult
$Res call({
 List<Variant> variants, int optionId, String optionType, String optionName,@JsonKey(name: 'required') String isRequired, bool inventory, String innerHint, int textModifier
});




}
/// @nodoc
class _$OptionCopyWithImpl<$Res>
    implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._self, this._then);

  final Option _self;
  final $Res Function(Option) _then;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variants = null,Object? optionId = null,Object? optionType = null,Object? optionName = null,Object? isRequired = null,Object? inventory = null,Object? innerHint = null,Object? textModifier = null,}) {
  return _then(_self.copyWith(
variants: null == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as List<Variant>,optionId: null == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as int,optionType: null == optionType ? _self.optionType : optionType // ignore: cast_nullable_to_non_nullable
as String,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as String,inventory: null == inventory ? _self.inventory : inventory // ignore: cast_nullable_to_non_nullable
as bool,innerHint: null == innerHint ? _self.innerHint : innerHint // ignore: cast_nullable_to_non_nullable
as String,textModifier: null == textModifier ? _self.textModifier : textModifier // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Option].
extension OptionPatterns on Option {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Option value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Option() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Option value)  $default,){
final _that = this;
switch (_that) {
case _Option():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Option value)?  $default,){
final _that = this;
switch (_that) {
case _Option() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Variant> variants,  int optionId,  String optionType,  String optionName, @JsonKey(name: 'required')  String isRequired,  bool inventory,  String innerHint,  int textModifier)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Option() when $default != null:
return $default(_that.variants,_that.optionId,_that.optionType,_that.optionName,_that.isRequired,_that.inventory,_that.innerHint,_that.textModifier);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Variant> variants,  int optionId,  String optionType,  String optionName, @JsonKey(name: 'required')  String isRequired,  bool inventory,  String innerHint,  int textModifier)  $default,) {final _that = this;
switch (_that) {
case _Option():
return $default(_that.variants,_that.optionId,_that.optionType,_that.optionName,_that.isRequired,_that.inventory,_that.innerHint,_that.textModifier);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Variant> variants,  int optionId,  String optionType,  String optionName, @JsonKey(name: 'required')  String isRequired,  bool inventory,  String innerHint,  int textModifier)?  $default,) {final _that = this;
switch (_that) {
case _Option() when $default != null:
return $default(_that.variants,_that.optionId,_that.optionType,_that.optionName,_that.isRequired,_that.inventory,_that.innerHint,_that.textModifier);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Option implements Option {
   _Option({required final  List<Variant> variants, required this.optionId, required this.optionType, required this.optionName, @JsonKey(name: 'required') required this.isRequired, required this.inventory, required this.innerHint, required this.textModifier}): _variants = variants;
  factory _Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);

 final  List<Variant> _variants;
@override List<Variant> get variants {
  if (_variants is EqualUnmodifiableListView) return _variants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_variants);
}

@override final  int optionId;
@override final  String optionType;
@override final  String optionName;
@override@JsonKey(name: 'required') final  String isRequired;
@override final  bool inventory;
@override final  String innerHint;
@override final  int textModifier;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionCopyWith<_Option> get copyWith => __$OptionCopyWithImpl<_Option>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Option&&const DeepCollectionEquality().equals(other._variants, _variants)&&(identical(other.optionId, optionId) || other.optionId == optionId)&&(identical(other.optionType, optionType) || other.optionType == optionType)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.inventory, inventory) || other.inventory == inventory)&&(identical(other.innerHint, innerHint) || other.innerHint == innerHint)&&(identical(other.textModifier, textModifier) || other.textModifier == textModifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_variants),optionId,optionType,optionName,isRequired,inventory,innerHint,textModifier);

@override
String toString() {
  return 'Option(variants: $variants, optionId: $optionId, optionType: $optionType, optionName: $optionName, isRequired: $isRequired, inventory: $inventory, innerHint: $innerHint, textModifier: $textModifier)';
}


}

/// @nodoc
abstract mixin class _$OptionCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$OptionCopyWith(_Option value, $Res Function(_Option) _then) = __$OptionCopyWithImpl;
@override @useResult
$Res call({
 List<Variant> variants, int optionId, String optionType, String optionName,@JsonKey(name: 'required') String isRequired, bool inventory, String innerHint, int textModifier
});




}
/// @nodoc
class __$OptionCopyWithImpl<$Res>
    implements _$OptionCopyWith<$Res> {
  __$OptionCopyWithImpl(this._self, this._then);

  final _Option _self;
  final $Res Function(_Option) _then;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variants = null,Object? optionId = null,Object? optionType = null,Object? optionName = null,Object? isRequired = null,Object? inventory = null,Object? innerHint = null,Object? textModifier = null,}) {
  return _then(_Option(
variants: null == variants ? _self._variants : variants // ignore: cast_nullable_to_non_nullable
as List<Variant>,optionId: null == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as int,optionType: null == optionType ? _self.optionType : optionType // ignore: cast_nullable_to_non_nullable
as String,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as String,inventory: null == inventory ? _self.inventory : inventory // ignore: cast_nullable_to_non_nullable
as bool,innerHint: null == innerHint ? _self.innerHint : innerHint // ignore: cast_nullable_to_non_nullable
as String,textModifier: null == textModifier ? _self.textModifier : textModifier // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
