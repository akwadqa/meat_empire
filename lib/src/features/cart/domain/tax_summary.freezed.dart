// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tax_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaxSummary {

 double? get included; int? get added; double? get total;
/// Create a copy of TaxSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaxSummaryCopyWith<TaxSummary> get copyWith => _$TaxSummaryCopyWithImpl<TaxSummary>(this as TaxSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaxSummary&&(identical(other.included, included) || other.included == included)&&(identical(other.added, added) || other.added == added)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,included,added,total);

@override
String toString() {
  return 'TaxSummary(included: $included, added: $added, total: $total)';
}


}

/// @nodoc
abstract mixin class $TaxSummaryCopyWith<$Res>  {
  factory $TaxSummaryCopyWith(TaxSummary value, $Res Function(TaxSummary) _then) = _$TaxSummaryCopyWithImpl;
@useResult
$Res call({
 double? included, int? added, double? total
});




}
/// @nodoc
class _$TaxSummaryCopyWithImpl<$Res>
    implements $TaxSummaryCopyWith<$Res> {
  _$TaxSummaryCopyWithImpl(this._self, this._then);

  final TaxSummary _self;
  final $Res Function(TaxSummary) _then;

/// Create a copy of TaxSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? included = freezed,Object? added = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
included: freezed == included ? _self.included : included // ignore: cast_nullable_to_non_nullable
as double?,added: freezed == added ? _self.added : added // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [TaxSummary].
extension TaxSummaryPatterns on TaxSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaxSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaxSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaxSummary value)  $default,){
final _that = this;
switch (_that) {
case _TaxSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaxSummary value)?  $default,){
final _that = this;
switch (_that) {
case _TaxSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? included,  int? added,  double? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaxSummary() when $default != null:
return $default(_that.included,_that.added,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? included,  int? added,  double? total)  $default,) {final _that = this;
switch (_that) {
case _TaxSummary():
return $default(_that.included,_that.added,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? included,  int? added,  double? total)?  $default,) {final _that = this;
switch (_that) {
case _TaxSummary() when $default != null:
return $default(_that.included,_that.added,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _TaxSummary implements TaxSummary {
   _TaxSummary({this.included, this.added, this.total});
  factory _TaxSummary.fromJson(Map<String, dynamic> json) => _$TaxSummaryFromJson(json);

@override final  double? included;
@override final  int? added;
@override final  double? total;

/// Create a copy of TaxSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaxSummaryCopyWith<_TaxSummary> get copyWith => __$TaxSummaryCopyWithImpl<_TaxSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaxSummary&&(identical(other.included, included) || other.included == included)&&(identical(other.added, added) || other.added == added)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,included,added,total);

@override
String toString() {
  return 'TaxSummary(included: $included, added: $added, total: $total)';
}


}

/// @nodoc
abstract mixin class _$TaxSummaryCopyWith<$Res> implements $TaxSummaryCopyWith<$Res> {
  factory _$TaxSummaryCopyWith(_TaxSummary value, $Res Function(_TaxSummary) _then) = __$TaxSummaryCopyWithImpl;
@override @useResult
$Res call({
 double? included, int? added, double? total
});




}
/// @nodoc
class __$TaxSummaryCopyWithImpl<$Res>
    implements _$TaxSummaryCopyWith<$Res> {
  __$TaxSummaryCopyWithImpl(this._self, this._then);

  final _TaxSummary _self;
  final $Res Function(_TaxSummary) _then;

/// Create a copy of TaxSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? included = freezed,Object? added = freezed,Object? total = freezed,}) {
  return _then(_TaxSummary(
included: freezed == included ? _self.included : included // ignore: cast_nullable_to_non_nullable
as double?,added: freezed == added ? _self.added : added // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
