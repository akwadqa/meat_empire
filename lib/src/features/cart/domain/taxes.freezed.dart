// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taxes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Taxes {

 String? get taxValue; String? get taxName;
/// Create a copy of Taxes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaxesCopyWith<Taxes> get copyWith => _$TaxesCopyWithImpl<Taxes>(this as Taxes, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Taxes&&(identical(other.taxValue, taxValue) || other.taxValue == taxValue)&&(identical(other.taxName, taxName) || other.taxName == taxName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,taxValue,taxName);

@override
String toString() {
  return 'Taxes(taxValue: $taxValue, taxName: $taxName)';
}


}

/// @nodoc
abstract mixin class $TaxesCopyWith<$Res>  {
  factory $TaxesCopyWith(Taxes value, $Res Function(Taxes) _then) = _$TaxesCopyWithImpl;
@useResult
$Res call({
 String? taxValue, String? taxName
});




}
/// @nodoc
class _$TaxesCopyWithImpl<$Res>
    implements $TaxesCopyWith<$Res> {
  _$TaxesCopyWithImpl(this._self, this._then);

  final Taxes _self;
  final $Res Function(Taxes) _then;

/// Create a copy of Taxes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? taxValue = freezed,Object? taxName = freezed,}) {
  return _then(_self.copyWith(
taxValue: freezed == taxValue ? _self.taxValue : taxValue // ignore: cast_nullable_to_non_nullable
as String?,taxName: freezed == taxName ? _self.taxName : taxName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Taxes].
extension TaxesPatterns on Taxes {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Taxes value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Taxes() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Taxes value)  $default,){
final _that = this;
switch (_that) {
case _Taxes():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Taxes value)?  $default,){
final _that = this;
switch (_that) {
case _Taxes() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? taxValue,  String? taxName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Taxes() when $default != null:
return $default(_that.taxValue,_that.taxName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? taxValue,  String? taxName)  $default,) {final _that = this;
switch (_that) {
case _Taxes():
return $default(_that.taxValue,_that.taxName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? taxValue,  String? taxName)?  $default,) {final _that = this;
switch (_that) {
case _Taxes() when $default != null:
return $default(_that.taxValue,_that.taxName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Taxes implements Taxes {
   _Taxes({this.taxValue, this.taxName});
  factory _Taxes.fromJson(Map<String, dynamic> json) => _$TaxesFromJson(json);

@override final  String? taxValue;
@override final  String? taxName;

/// Create a copy of Taxes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaxesCopyWith<_Taxes> get copyWith => __$TaxesCopyWithImpl<_Taxes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Taxes&&(identical(other.taxValue, taxValue) || other.taxValue == taxValue)&&(identical(other.taxName, taxName) || other.taxName == taxName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,taxValue,taxName);

@override
String toString() {
  return 'Taxes(taxValue: $taxValue, taxName: $taxName)';
}


}

/// @nodoc
abstract mixin class _$TaxesCopyWith<$Res> implements $TaxesCopyWith<$Res> {
  factory _$TaxesCopyWith(_Taxes value, $Res Function(_Taxes) _then) = __$TaxesCopyWithImpl;
@override @useResult
$Res call({
 String? taxValue, String? taxName
});




}
/// @nodoc
class __$TaxesCopyWithImpl<$Res>
    implements _$TaxesCopyWith<$Res> {
  __$TaxesCopyWithImpl(this._self, this._then);

  final _Taxes _self;
  final $Res Function(_Taxes) _then;

/// Create a copy of Taxes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? taxValue = freezed,Object? taxName = freezed,}) {
  return _then(_Taxes(
taxValue: freezed == taxValue ? _self.taxValue : taxValue // ignore: cast_nullable_to_non_nullable
as String?,taxName: freezed == taxName ? _self.taxName : taxName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
