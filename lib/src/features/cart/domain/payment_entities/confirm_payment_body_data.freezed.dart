// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_payment_body_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConfirmPaymentBodyData {

 int get userId; int get selectedPaymentMethod; String get ecTimeSlot; String? get notes;@JsonKey(name: "ec_delivery_date") String? get deliveryDtae;@JsonKey(name: "ec_delivery_comment") String? get deliveryComment;
/// Create a copy of ConfirmPaymentBodyData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmPaymentBodyDataCopyWith<ConfirmPaymentBodyData> get copyWith => _$ConfirmPaymentBodyDataCopyWithImpl<ConfirmPaymentBodyData>(this as ConfirmPaymentBodyData, _$identity);

  /// Serializes this ConfirmPaymentBodyData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmPaymentBodyData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.selectedPaymentMethod, selectedPaymentMethod) || other.selectedPaymentMethod == selectedPaymentMethod)&&(identical(other.ecTimeSlot, ecTimeSlot) || other.ecTimeSlot == ecTimeSlot)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.deliveryDtae, deliveryDtae) || other.deliveryDtae == deliveryDtae)&&(identical(other.deliveryComment, deliveryComment) || other.deliveryComment == deliveryComment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,selectedPaymentMethod,ecTimeSlot,notes,deliveryDtae,deliveryComment);

@override
String toString() {
  return 'ConfirmPaymentBodyData(userId: $userId, selectedPaymentMethod: $selectedPaymentMethod, ecTimeSlot: $ecTimeSlot, notes: $notes, deliveryDtae: $deliveryDtae, deliveryComment: $deliveryComment)';
}


}

/// @nodoc
abstract mixin class $ConfirmPaymentBodyDataCopyWith<$Res>  {
  factory $ConfirmPaymentBodyDataCopyWith(ConfirmPaymentBodyData value, $Res Function(ConfirmPaymentBodyData) _then) = _$ConfirmPaymentBodyDataCopyWithImpl;
@useResult
$Res call({
 int userId, int selectedPaymentMethod, String ecTimeSlot, String? notes,@JsonKey(name: "ec_delivery_date") String? deliveryDtae,@JsonKey(name: "ec_delivery_comment") String? deliveryComment
});




}
/// @nodoc
class _$ConfirmPaymentBodyDataCopyWithImpl<$Res>
    implements $ConfirmPaymentBodyDataCopyWith<$Res> {
  _$ConfirmPaymentBodyDataCopyWithImpl(this._self, this._then);

  final ConfirmPaymentBodyData _self;
  final $Res Function(ConfirmPaymentBodyData) _then;

/// Create a copy of ConfirmPaymentBodyData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? selectedPaymentMethod = null,Object? ecTimeSlot = null,Object? notes = freezed,Object? deliveryDtae = freezed,Object? deliveryComment = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,selectedPaymentMethod: null == selectedPaymentMethod ? _self.selectedPaymentMethod : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
as int,ecTimeSlot: null == ecTimeSlot ? _self.ecTimeSlot : ecTimeSlot // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,deliveryDtae: freezed == deliveryDtae ? _self.deliveryDtae : deliveryDtae // ignore: cast_nullable_to_non_nullable
as String?,deliveryComment: freezed == deliveryComment ? _self.deliveryComment : deliveryComment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfirmPaymentBodyData].
extension ConfirmPaymentBodyDataPatterns on ConfirmPaymentBodyData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfirmPaymentBodyData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmPaymentBodyData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfirmPaymentBodyData value)  $default,){
final _that = this;
switch (_that) {
case _ConfirmPaymentBodyData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfirmPaymentBodyData value)?  $default,){
final _that = this;
switch (_that) {
case _ConfirmPaymentBodyData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  int selectedPaymentMethod,  String ecTimeSlot,  String? notes, @JsonKey(name: "ec_delivery_date")  String? deliveryDtae, @JsonKey(name: "ec_delivery_comment")  String? deliveryComment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmPaymentBodyData() when $default != null:
return $default(_that.userId,_that.selectedPaymentMethod,_that.ecTimeSlot,_that.notes,_that.deliveryDtae,_that.deliveryComment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  int selectedPaymentMethod,  String ecTimeSlot,  String? notes, @JsonKey(name: "ec_delivery_date")  String? deliveryDtae, @JsonKey(name: "ec_delivery_comment")  String? deliveryComment)  $default,) {final _that = this;
switch (_that) {
case _ConfirmPaymentBodyData():
return $default(_that.userId,_that.selectedPaymentMethod,_that.ecTimeSlot,_that.notes,_that.deliveryDtae,_that.deliveryComment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  int selectedPaymentMethod,  String ecTimeSlot,  String? notes, @JsonKey(name: "ec_delivery_date")  String? deliveryDtae, @JsonKey(name: "ec_delivery_comment")  String? deliveryComment)?  $default,) {final _that = this;
switch (_that) {
case _ConfirmPaymentBodyData() when $default != null:
return $default(_that.userId,_that.selectedPaymentMethod,_that.ecTimeSlot,_that.notes,_that.deliveryDtae,_that.deliveryComment);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ConfirmPaymentBodyData implements ConfirmPaymentBodyData {
  const _ConfirmPaymentBodyData({required this.userId, required this.selectedPaymentMethod, required this.ecTimeSlot, this.notes, @JsonKey(name: "ec_delivery_date") this.deliveryDtae, @JsonKey(name: "ec_delivery_comment") this.deliveryComment});
  factory _ConfirmPaymentBodyData.fromJson(Map<String, dynamic> json) => _$ConfirmPaymentBodyDataFromJson(json);

@override final  int userId;
@override final  int selectedPaymentMethod;
@override final  String ecTimeSlot;
@override final  String? notes;
@override@JsonKey(name: "ec_delivery_date") final  String? deliveryDtae;
@override@JsonKey(name: "ec_delivery_comment") final  String? deliveryComment;

/// Create a copy of ConfirmPaymentBodyData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmPaymentBodyDataCopyWith<_ConfirmPaymentBodyData> get copyWith => __$ConfirmPaymentBodyDataCopyWithImpl<_ConfirmPaymentBodyData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfirmPaymentBodyDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmPaymentBodyData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.selectedPaymentMethod, selectedPaymentMethod) || other.selectedPaymentMethod == selectedPaymentMethod)&&(identical(other.ecTimeSlot, ecTimeSlot) || other.ecTimeSlot == ecTimeSlot)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.deliveryDtae, deliveryDtae) || other.deliveryDtae == deliveryDtae)&&(identical(other.deliveryComment, deliveryComment) || other.deliveryComment == deliveryComment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,selectedPaymentMethod,ecTimeSlot,notes,deliveryDtae,deliveryComment);

@override
String toString() {
  return 'ConfirmPaymentBodyData(userId: $userId, selectedPaymentMethod: $selectedPaymentMethod, ecTimeSlot: $ecTimeSlot, notes: $notes, deliveryDtae: $deliveryDtae, deliveryComment: $deliveryComment)';
}


}

/// @nodoc
abstract mixin class _$ConfirmPaymentBodyDataCopyWith<$Res> implements $ConfirmPaymentBodyDataCopyWith<$Res> {
  factory _$ConfirmPaymentBodyDataCopyWith(_ConfirmPaymentBodyData value, $Res Function(_ConfirmPaymentBodyData) _then) = __$ConfirmPaymentBodyDataCopyWithImpl;
@override @useResult
$Res call({
 int userId, int selectedPaymentMethod, String ecTimeSlot, String? notes,@JsonKey(name: "ec_delivery_date") String? deliveryDtae,@JsonKey(name: "ec_delivery_comment") String? deliveryComment
});




}
/// @nodoc
class __$ConfirmPaymentBodyDataCopyWithImpl<$Res>
    implements _$ConfirmPaymentBodyDataCopyWith<$Res> {
  __$ConfirmPaymentBodyDataCopyWithImpl(this._self, this._then);

  final _ConfirmPaymentBodyData _self;
  final $Res Function(_ConfirmPaymentBodyData) _then;

/// Create a copy of ConfirmPaymentBodyData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? selectedPaymentMethod = null,Object? ecTimeSlot = null,Object? notes = freezed,Object? deliveryDtae = freezed,Object? deliveryComment = freezed,}) {
  return _then(_ConfirmPaymentBodyData(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,selectedPaymentMethod: null == selectedPaymentMethod ? _self.selectedPaymentMethod : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
as int,ecTimeSlot: null == ecTimeSlot ? _self.ecTimeSlot : ecTimeSlot // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,deliveryDtae: freezed == deliveryDtae ? _self.deliveryDtae : deliveryDtae // ignore: cast_nullable_to_non_nullable
as String?,deliveryComment: freezed == deliveryComment ? _self.deliveryComment : deliveryComment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
