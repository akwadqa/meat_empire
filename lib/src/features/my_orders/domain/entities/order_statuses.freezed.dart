// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_statuses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderStatuses {

 String get value; String get name;
/// Create a copy of OrderStatuses
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStatusesCopyWith<OrderStatuses> get copyWith => _$OrderStatusesCopyWithImpl<OrderStatuses>(this as OrderStatuses, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderStatuses&&(identical(other.value, value) || other.value == value)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,name);

@override
String toString() {
  return 'OrderStatuses(value: $value, name: $name)';
}


}

/// @nodoc
abstract mixin class $OrderStatusesCopyWith<$Res>  {
  factory $OrderStatusesCopyWith(OrderStatuses value, $Res Function(OrderStatuses) _then) = _$OrderStatusesCopyWithImpl;
@useResult
$Res call({
 String value, String name
});




}
/// @nodoc
class _$OrderStatusesCopyWithImpl<$Res>
    implements $OrderStatusesCopyWith<$Res> {
  _$OrderStatusesCopyWithImpl(this._self, this._then);

  final OrderStatuses _self;
  final $Res Function(OrderStatuses) _then;

/// Create a copy of OrderStatuses
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? name = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderStatuses].
extension OrderStatusesPatterns on OrderStatuses {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderStatuses value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderStatuses() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderStatuses value)  $default,){
final _that = this;
switch (_that) {
case _OrderStatuses():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderStatuses value)?  $default,){
final _that = this;
switch (_that) {
case _OrderStatuses() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderStatuses() when $default != null:
return $default(_that.value,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value,  String name)  $default,) {final _that = this;
switch (_that) {
case _OrderStatuses():
return $default(_that.value,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value,  String name)?  $default,) {final _that = this;
switch (_that) {
case _OrderStatuses() when $default != null:
return $default(_that.value,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _OrderStatuses implements OrderStatuses {
  const _OrderStatuses({required this.value, required this.name});
  factory _OrderStatuses.fromJson(Map<String, dynamic> json) => _$OrderStatusesFromJson(json);

@override final  String value;
@override final  String name;

/// Create a copy of OrderStatuses
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderStatusesCopyWith<_OrderStatuses> get copyWith => __$OrderStatusesCopyWithImpl<_OrderStatuses>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderStatuses&&(identical(other.value, value) || other.value == value)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,name);

@override
String toString() {
  return 'OrderStatuses(value: $value, name: $name)';
}


}

/// @nodoc
abstract mixin class _$OrderStatusesCopyWith<$Res> implements $OrderStatusesCopyWith<$Res> {
  factory _$OrderStatusesCopyWith(_OrderStatuses value, $Res Function(_OrderStatuses) _then) = __$OrderStatusesCopyWithImpl;
@override @useResult
$Res call({
 String value, String name
});




}
/// @nodoc
class __$OrderStatusesCopyWithImpl<$Res>
    implements _$OrderStatusesCopyWith<$Res> {
  __$OrderStatusesCopyWithImpl(this._self, this._then);

  final _OrderStatuses _self;
  final $Res Function(_OrderStatuses) _then;

/// Create a copy of OrderStatuses
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? name = null,}) {
  return _then(_OrderStatuses(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
