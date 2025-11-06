// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeliverySlot {

 String? get date; int? get timestamp; String? get heading; String? get subheading; bool? get unavailable; String? get reason; List<Slot>? get slots;
/// Create a copy of DeliverySlot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliverySlotCopyWith<DeliverySlot> get copyWith => _$DeliverySlotCopyWithImpl<DeliverySlot>(this as DeliverySlot, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliverySlot&&(identical(other.date, date) || other.date == date)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.subheading, subheading) || other.subheading == subheading)&&(identical(other.unavailable, unavailable) || other.unavailable == unavailable)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other.slots, slots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,timestamp,heading,subheading,unavailable,reason,const DeepCollectionEquality().hash(slots));

@override
String toString() {
  return 'DeliverySlot(date: $date, timestamp: $timestamp, heading: $heading, subheading: $subheading, unavailable: $unavailable, reason: $reason, slots: $slots)';
}


}

/// @nodoc
abstract mixin class $DeliverySlotCopyWith<$Res>  {
  factory $DeliverySlotCopyWith(DeliverySlot value, $Res Function(DeliverySlot) _then) = _$DeliverySlotCopyWithImpl;
@useResult
$Res call({
 String? date, int? timestamp, String? heading, String? subheading, bool? unavailable, String? reason, List<Slot>? slots
});




}
/// @nodoc
class _$DeliverySlotCopyWithImpl<$Res>
    implements $DeliverySlotCopyWith<$Res> {
  _$DeliverySlotCopyWithImpl(this._self, this._then);

  final DeliverySlot _self;
  final $Res Function(DeliverySlot) _then;

/// Create a copy of DeliverySlot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? timestamp = freezed,Object? heading = freezed,Object? subheading = freezed,Object? unavailable = freezed,Object? reason = freezed,Object? slots = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,heading: freezed == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as String?,subheading: freezed == subheading ? _self.subheading : subheading // ignore: cast_nullable_to_non_nullable
as String?,unavailable: freezed == unavailable ? _self.unavailable : unavailable // ignore: cast_nullable_to_non_nullable
as bool?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,slots: freezed == slots ? _self.slots : slots // ignore: cast_nullable_to_non_nullable
as List<Slot>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliverySlot].
extension DeliverySlotPatterns on DeliverySlot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliverySlot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliverySlot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliverySlot value)  $default,){
final _that = this;
switch (_that) {
case _DeliverySlot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliverySlot value)?  $default,){
final _that = this;
switch (_that) {
case _DeliverySlot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? date,  int? timestamp,  String? heading,  String? subheading,  bool? unavailable,  String? reason,  List<Slot>? slots)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliverySlot() when $default != null:
return $default(_that.date,_that.timestamp,_that.heading,_that.subheading,_that.unavailable,_that.reason,_that.slots);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? date,  int? timestamp,  String? heading,  String? subheading,  bool? unavailable,  String? reason,  List<Slot>? slots)  $default,) {final _that = this;
switch (_that) {
case _DeliverySlot():
return $default(_that.date,_that.timestamp,_that.heading,_that.subheading,_that.unavailable,_that.reason,_that.slots);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? date,  int? timestamp,  String? heading,  String? subheading,  bool? unavailable,  String? reason,  List<Slot>? slots)?  $default,) {final _that = this;
switch (_that) {
case _DeliverySlot() when $default != null:
return $default(_that.date,_that.timestamp,_that.heading,_that.subheading,_that.unavailable,_that.reason,_that.slots);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _DeliverySlot implements DeliverySlot {
   _DeliverySlot({this.date, this.timestamp, this.heading, this.subheading, this.unavailable, this.reason, final  List<Slot>? slots}): _slots = slots;
  factory _DeliverySlot.fromJson(Map<String, dynamic> json) => _$DeliverySlotFromJson(json);

@override final  String? date;
@override final  int? timestamp;
@override final  String? heading;
@override final  String? subheading;
@override final  bool? unavailable;
@override final  String? reason;
 final  List<Slot>? _slots;
@override List<Slot>? get slots {
  final value = _slots;
  if (value == null) return null;
  if (_slots is EqualUnmodifiableListView) return _slots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DeliverySlot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliverySlotCopyWith<_DeliverySlot> get copyWith => __$DeliverySlotCopyWithImpl<_DeliverySlot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliverySlot&&(identical(other.date, date) || other.date == date)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.subheading, subheading) || other.subheading == subheading)&&(identical(other.unavailable, unavailable) || other.unavailable == unavailable)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other._slots, _slots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,timestamp,heading,subheading,unavailable,reason,const DeepCollectionEquality().hash(_slots));

@override
String toString() {
  return 'DeliverySlot(date: $date, timestamp: $timestamp, heading: $heading, subheading: $subheading, unavailable: $unavailable, reason: $reason, slots: $slots)';
}


}

/// @nodoc
abstract mixin class _$DeliverySlotCopyWith<$Res> implements $DeliverySlotCopyWith<$Res> {
  factory _$DeliverySlotCopyWith(_DeliverySlot value, $Res Function(_DeliverySlot) _then) = __$DeliverySlotCopyWithImpl;
@override @useResult
$Res call({
 String? date, int? timestamp, String? heading, String? subheading, bool? unavailable, String? reason, List<Slot>? slots
});




}
/// @nodoc
class __$DeliverySlotCopyWithImpl<$Res>
    implements _$DeliverySlotCopyWith<$Res> {
  __$DeliverySlotCopyWithImpl(this._self, this._then);

  final _DeliverySlot _self;
  final $Res Function(_DeliverySlot) _then;

/// Create a copy of DeliverySlot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? timestamp = freezed,Object? heading = freezed,Object? subheading = freezed,Object? unavailable = freezed,Object? reason = freezed,Object? slots = freezed,}) {
  return _then(_DeliverySlot(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,heading: freezed == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as String?,subheading: freezed == subheading ? _self.subheading : subheading // ignore: cast_nullable_to_non_nullable
as String?,unavailable: freezed == unavailable ? _self.unavailable : unavailable // ignore: cast_nullable_to_non_nullable
as bool?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,slots: freezed == slots ? _self._slots : slots // ignore: cast_nullable_to_non_nullable
as List<Slot>?,
  ));
}


}

// dart format on
