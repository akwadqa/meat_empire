// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentInfoEntity implements DiagnosticableTreeMixin {

 String get paymentId; String get payment; String? get description; String? get instructions; String? get image;
/// Create a copy of PaymentInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentInfoEntityCopyWith<PaymentInfoEntity> get copyWith => _$PaymentInfoEntityCopyWithImpl<PaymentInfoEntity>(this as PaymentInfoEntity, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentInfoEntity'))
    ..add(DiagnosticsProperty('paymentId', paymentId))..add(DiagnosticsProperty('payment', payment))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('instructions', instructions))..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentInfoEntity&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.description, description) || other.description == description)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentId,payment,description,instructions,image);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentInfoEntity(paymentId: $paymentId, payment: $payment, description: $description, instructions: $instructions, image: $image)';
}


}

/// @nodoc
abstract mixin class $PaymentInfoEntityCopyWith<$Res>  {
  factory $PaymentInfoEntityCopyWith(PaymentInfoEntity value, $Res Function(PaymentInfoEntity) _then) = _$PaymentInfoEntityCopyWithImpl;
@useResult
$Res call({
 String paymentId, String payment, String? description, String? instructions, String? image
});




}
/// @nodoc
class _$PaymentInfoEntityCopyWithImpl<$Res>
    implements $PaymentInfoEntityCopyWith<$Res> {
  _$PaymentInfoEntityCopyWithImpl(this._self, this._then);

  final PaymentInfoEntity _self;
  final $Res Function(PaymentInfoEntity) _then;

/// Create a copy of PaymentInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentId = null,Object? payment = null,Object? description = freezed,Object? instructions = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentInfoEntity].
extension PaymentInfoEntityPatterns on PaymentInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String paymentId,  String payment,  String? description,  String? instructions,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentInfoEntity() when $default != null:
return $default(_that.paymentId,_that.payment,_that.description,_that.instructions,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String paymentId,  String payment,  String? description,  String? instructions,  String? image)  $default,) {final _that = this;
switch (_that) {
case _PaymentInfoEntity():
return $default(_that.paymentId,_that.payment,_that.description,_that.instructions,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String paymentId,  String payment,  String? description,  String? instructions,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _PaymentInfoEntity() when $default != null:
return $default(_that.paymentId,_that.payment,_that.description,_that.instructions,_that.image);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _PaymentInfoEntity with DiagnosticableTreeMixin implements PaymentInfoEntity {
  const _PaymentInfoEntity({required this.paymentId, required this.payment, this.description, this.instructions, this.image});
  factory _PaymentInfoEntity.fromJson(Map<String, dynamic> json) => _$PaymentInfoEntityFromJson(json);

@override final  String paymentId;
@override final  String payment;
@override final  String? description;
@override final  String? instructions;
@override final  String? image;

/// Create a copy of PaymentInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentInfoEntityCopyWith<_PaymentInfoEntity> get copyWith => __$PaymentInfoEntityCopyWithImpl<_PaymentInfoEntity>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentInfoEntity'))
    ..add(DiagnosticsProperty('paymentId', paymentId))..add(DiagnosticsProperty('payment', payment))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('instructions', instructions))..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentInfoEntity&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.description, description) || other.description == description)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentId,payment,description,instructions,image);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentInfoEntity(paymentId: $paymentId, payment: $payment, description: $description, instructions: $instructions, image: $image)';
}


}

/// @nodoc
abstract mixin class _$PaymentInfoEntityCopyWith<$Res> implements $PaymentInfoEntityCopyWith<$Res> {
  factory _$PaymentInfoEntityCopyWith(_PaymentInfoEntity value, $Res Function(_PaymentInfoEntity) _then) = __$PaymentInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 String paymentId, String payment, String? description, String? instructions, String? image
});




}
/// @nodoc
class __$PaymentInfoEntityCopyWithImpl<$Res>
    implements _$PaymentInfoEntityCopyWith<$Res> {
  __$PaymentInfoEntityCopyWithImpl(this._self, this._then);

  final _PaymentInfoEntity _self;
  final $Res Function(_PaymentInfoEntity) _then;

/// Create a copy of PaymentInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentId = null,Object? payment = null,Object? description = freezed,Object? instructions = freezed,Object? image = freezed,}) {
  return _then(_PaymentInfoEntity(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
