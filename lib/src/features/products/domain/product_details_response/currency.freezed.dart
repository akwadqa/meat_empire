// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Currency {

 String get currencyCode; String get after; String get symbol; String get coefficient; String get decimalsSeparator; String get thousandsSeparator; String get decimals; String get description;
/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyCopyWith<Currency> get copyWith => _$CurrencyCopyWithImpl<Currency>(this as Currency, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Currency&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.after, after) || other.after == after)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.coefficient, coefficient) || other.coefficient == coefficient)&&(identical(other.decimalsSeparator, decimalsSeparator) || other.decimalsSeparator == decimalsSeparator)&&(identical(other.thousandsSeparator, thousandsSeparator) || other.thousandsSeparator == thousandsSeparator)&&(identical(other.decimals, decimals) || other.decimals == decimals)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currencyCode,after,symbol,coefficient,decimalsSeparator,thousandsSeparator,decimals,description);

@override
String toString() {
  return 'Currency(currencyCode: $currencyCode, after: $after, symbol: $symbol, coefficient: $coefficient, decimalsSeparator: $decimalsSeparator, thousandsSeparator: $thousandsSeparator, decimals: $decimals, description: $description)';
}


}

/// @nodoc
abstract mixin class $CurrencyCopyWith<$Res>  {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) _then) = _$CurrencyCopyWithImpl;
@useResult
$Res call({
 String currencyCode, String after, String symbol, String coefficient, String decimalsSeparator, String thousandsSeparator, String decimals, String description
});




}
/// @nodoc
class _$CurrencyCopyWithImpl<$Res>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._self, this._then);

  final Currency _self;
  final $Res Function(Currency) _then;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currencyCode = null,Object? after = null,Object? symbol = null,Object? coefficient = null,Object? decimalsSeparator = null,Object? thousandsSeparator = null,Object? decimals = null,Object? description = null,}) {
  return _then(_self.copyWith(
currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,after: null == after ? _self.after : after // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,coefficient: null == coefficient ? _self.coefficient : coefficient // ignore: cast_nullable_to_non_nullable
as String,decimalsSeparator: null == decimalsSeparator ? _self.decimalsSeparator : decimalsSeparator // ignore: cast_nullable_to_non_nullable
as String,thousandsSeparator: null == thousandsSeparator ? _self.thousandsSeparator : thousandsSeparator // ignore: cast_nullable_to_non_nullable
as String,decimals: null == decimals ? _self.decimals : decimals // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Currency].
extension CurrencyPatterns on Currency {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Currency value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Currency() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Currency value)  $default,){
final _that = this;
switch (_that) {
case _Currency():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Currency value)?  $default,){
final _that = this;
switch (_that) {
case _Currency() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String currencyCode,  String after,  String symbol,  String coefficient,  String decimalsSeparator,  String thousandsSeparator,  String decimals,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that.currencyCode,_that.after,_that.symbol,_that.coefficient,_that.decimalsSeparator,_that.thousandsSeparator,_that.decimals,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String currencyCode,  String after,  String symbol,  String coefficient,  String decimalsSeparator,  String thousandsSeparator,  String decimals,  String description)  $default,) {final _that = this;
switch (_that) {
case _Currency():
return $default(_that.currencyCode,_that.after,_that.symbol,_that.coefficient,_that.decimalsSeparator,_that.thousandsSeparator,_that.decimals,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String currencyCode,  String after,  String symbol,  String coefficient,  String decimalsSeparator,  String thousandsSeparator,  String decimals,  String description)?  $default,) {final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that.currencyCode,_that.after,_that.symbol,_that.coefficient,_that.decimalsSeparator,_that.thousandsSeparator,_that.decimals,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Currency implements Currency {
   _Currency({required this.currencyCode, required this.after, required this.symbol, required this.coefficient, required this.decimalsSeparator, required this.thousandsSeparator, required this.decimals, required this.description});
  factory _Currency.fromJson(Map<String, dynamic> json) => _$CurrencyFromJson(json);

@override final  String currencyCode;
@override final  String after;
@override final  String symbol;
@override final  String coefficient;
@override final  String decimalsSeparator;
@override final  String thousandsSeparator;
@override final  String decimals;
@override final  String description;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyCopyWith<_Currency> get copyWith => __$CurrencyCopyWithImpl<_Currency>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Currency&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.after, after) || other.after == after)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.coefficient, coefficient) || other.coefficient == coefficient)&&(identical(other.decimalsSeparator, decimalsSeparator) || other.decimalsSeparator == decimalsSeparator)&&(identical(other.thousandsSeparator, thousandsSeparator) || other.thousandsSeparator == thousandsSeparator)&&(identical(other.decimals, decimals) || other.decimals == decimals)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currencyCode,after,symbol,coefficient,decimalsSeparator,thousandsSeparator,decimals,description);

@override
String toString() {
  return 'Currency(currencyCode: $currencyCode, after: $after, symbol: $symbol, coefficient: $coefficient, decimalsSeparator: $decimalsSeparator, thousandsSeparator: $thousandsSeparator, decimals: $decimals, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$CurrencyCopyWith(_Currency value, $Res Function(_Currency) _then) = __$CurrencyCopyWithImpl;
@override @useResult
$Res call({
 String currencyCode, String after, String symbol, String coefficient, String decimalsSeparator, String thousandsSeparator, String decimals, String description
});




}
/// @nodoc
class __$CurrencyCopyWithImpl<$Res>
    implements _$CurrencyCopyWith<$Res> {
  __$CurrencyCopyWithImpl(this._self, this._then);

  final _Currency _self;
  final $Res Function(_Currency) _then;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currencyCode = null,Object? after = null,Object? symbol = null,Object? coefficient = null,Object? decimalsSeparator = null,Object? thousandsSeparator = null,Object? decimals = null,Object? description = null,}) {
  return _then(_Currency(
currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,after: null == after ? _self.after : after // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,coefficient: null == coefficient ? _self.coefficient : coefficient // ignore: cast_nullable_to_non_nullable
as String,decimalsSeparator: null == decimalsSeparator ? _self.decimalsSeparator : decimalsSeparator // ignore: cast_nullable_to_non_nullable
as String,thousandsSeparator: null == thousandsSeparator ? _self.thousandsSeparator : thousandsSeparator // ignore: cast_nullable_to_non_nullable
as String,decimals: null == decimals ? _self.decimals : decimals // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
