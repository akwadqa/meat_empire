// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Slot {

 String? get slot; String? get formatSlot; String? get from; String? get to; String? get note;
/// Create a copy of Slot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SlotCopyWith<Slot> get copyWith => _$SlotCopyWithImpl<Slot>(this as Slot, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Slot&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.formatSlot, formatSlot) || other.formatSlot == formatSlot)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,formatSlot,from,to,note);

@override
String toString() {
  return 'Slot(slot: $slot, formatSlot: $formatSlot, from: $from, to: $to, note: $note)';
}


}

/// @nodoc
abstract mixin class $SlotCopyWith<$Res>  {
  factory $SlotCopyWith(Slot value, $Res Function(Slot) _then) = _$SlotCopyWithImpl;
@useResult
$Res call({
 String? slot, String? formatSlot, String? from, String? to, String? note
});




}
/// @nodoc
class _$SlotCopyWithImpl<$Res>
    implements $SlotCopyWith<$Res> {
  _$SlotCopyWithImpl(this._self, this._then);

  final Slot _self;
  final $Res Function(Slot) _then;

/// Create a copy of Slot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = freezed,Object? formatSlot = freezed,Object? from = freezed,Object? to = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as String?,formatSlot: freezed == formatSlot ? _self.formatSlot : formatSlot // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Slot].
extension SlotPatterns on Slot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Slot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Slot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Slot value)  $default,){
final _that = this;
switch (_that) {
case _Slot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Slot value)?  $default,){
final _that = this;
switch (_that) {
case _Slot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? slot,  String? formatSlot,  String? from,  String? to,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Slot() when $default != null:
return $default(_that.slot,_that.formatSlot,_that.from,_that.to,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? slot,  String? formatSlot,  String? from,  String? to,  String? note)  $default,) {final _that = this;
switch (_that) {
case _Slot():
return $default(_that.slot,_that.formatSlot,_that.from,_that.to,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? slot,  String? formatSlot,  String? from,  String? to,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _Slot() when $default != null:
return $default(_that.slot,_that.formatSlot,_that.from,_that.to,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Slot implements Slot {
   _Slot({this.slot, this.formatSlot, this.from, this.to, this.note});
  factory _Slot.fromJson(Map<String, dynamic> json) => _$SlotFromJson(json);

@override final  String? slot;
@override final  String? formatSlot;
@override final  String? from;
@override final  String? to;
@override final  String? note;

/// Create a copy of Slot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SlotCopyWith<_Slot> get copyWith => __$SlotCopyWithImpl<_Slot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Slot&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.formatSlot, formatSlot) || other.formatSlot == formatSlot)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,formatSlot,from,to,note);

@override
String toString() {
  return 'Slot(slot: $slot, formatSlot: $formatSlot, from: $from, to: $to, note: $note)';
}


}

/// @nodoc
abstract mixin class _$SlotCopyWith<$Res> implements $SlotCopyWith<$Res> {
  factory _$SlotCopyWith(_Slot value, $Res Function(_Slot) _then) = __$SlotCopyWithImpl;
@override @useResult
$Res call({
 String? slot, String? formatSlot, String? from, String? to, String? note
});




}
/// @nodoc
class __$SlotCopyWithImpl<$Res>
    implements _$SlotCopyWith<$Res> {
  __$SlotCopyWithImpl(this._self, this._then);

  final _Slot _self;
  final $Res Function(_Slot) _then;

/// Create a copy of Slot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = freezed,Object? formatSlot = freezed,Object? from = freezed,Object? to = freezed,Object? note = freezed,}) {
  return _then(_Slot(
slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as String?,formatSlot: freezed == formatSlot ? _self.formatSlot : formatSlot // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
