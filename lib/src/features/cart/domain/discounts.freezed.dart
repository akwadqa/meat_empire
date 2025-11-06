// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discounts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Discounts {

@JsonKey(name: 'A') int? get a;@JsonKey(name: 'P') int? get p;
/// Create a copy of Discounts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiscountsCopyWith<Discounts> get copyWith => _$DiscountsCopyWithImpl<Discounts>(this as Discounts, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Discounts&&(identical(other.a, a) || other.a == a)&&(identical(other.p, p) || other.p == p));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,a,p);

@override
String toString() {
  return 'Discounts(a: $a, p: $p)';
}


}

/// @nodoc
abstract mixin class $DiscountsCopyWith<$Res>  {
  factory $DiscountsCopyWith(Discounts value, $Res Function(Discounts) _then) = _$DiscountsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'A') int? a,@JsonKey(name: 'P') int? p
});




}
/// @nodoc
class _$DiscountsCopyWithImpl<$Res>
    implements $DiscountsCopyWith<$Res> {
  _$DiscountsCopyWithImpl(this._self, this._then);

  final Discounts _self;
  final $Res Function(Discounts) _then;

/// Create a copy of Discounts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? a = freezed,Object? p = freezed,}) {
  return _then(_self.copyWith(
a: freezed == a ? _self.a : a // ignore: cast_nullable_to_non_nullable
as int?,p: freezed == p ? _self.p : p // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Discounts].
extension DiscountsPatterns on Discounts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Discounts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Discounts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Discounts value)  $default,){
final _that = this;
switch (_that) {
case _Discounts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Discounts value)?  $default,){
final _that = this;
switch (_that) {
case _Discounts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'A')  int? a, @JsonKey(name: 'P')  int? p)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Discounts() when $default != null:
return $default(_that.a,_that.p);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'A')  int? a, @JsonKey(name: 'P')  int? p)  $default,) {final _that = this;
switch (_that) {
case _Discounts():
return $default(_that.a,_that.p);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'A')  int? a, @JsonKey(name: 'P')  int? p)?  $default,) {final _that = this;
switch (_that) {
case _Discounts() when $default != null:
return $default(_that.a,_that.p);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Discounts implements Discounts {
   _Discounts({@JsonKey(name: 'A') this.a, @JsonKey(name: 'P') this.p});
  factory _Discounts.fromJson(Map<String, dynamic> json) => _$DiscountsFromJson(json);

@override@JsonKey(name: 'A') final  int? a;
@override@JsonKey(name: 'P') final  int? p;

/// Create a copy of Discounts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiscountsCopyWith<_Discounts> get copyWith => __$DiscountsCopyWithImpl<_Discounts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Discounts&&(identical(other.a, a) || other.a == a)&&(identical(other.p, p) || other.p == p));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,a,p);

@override
String toString() {
  return 'Discounts(a: $a, p: $p)';
}


}

/// @nodoc
abstract mixin class _$DiscountsCopyWith<$Res> implements $DiscountsCopyWith<$Res> {
  factory _$DiscountsCopyWith(_Discounts value, $Res Function(_Discounts) _then) = __$DiscountsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'A') int? a,@JsonKey(name: 'P') int? p
});




}
/// @nodoc
class __$DiscountsCopyWithImpl<$Res>
    implements _$DiscountsCopyWith<$Res> {
  __$DiscountsCopyWithImpl(this._self, this._then);

  final _Discounts _self;
  final $Res Function(_Discounts) _then;

/// Create a copy of Discounts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? a = freezed,Object? p = freezed,}) {
  return _then(_Discounts(
a: freezed == a ? _self.a : a // ignore: cast_nullable_to_non_nullable
as int?,p: freezed == p ? _self.p : p // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
