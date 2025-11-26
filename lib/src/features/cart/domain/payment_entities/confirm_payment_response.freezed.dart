// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_payment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConfirmPaymentResponse {

 int? get orderId; dynamic get childOrderIds; List<dynamic>? get paymentParams; bool? get redirectPayment; String? get redirectUrl; String? get successUrl; String? get failUrl; String? get message; dynamic get totalProducts; bool? get success; String? get action;
/// Create a copy of ConfirmPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmPaymentResponseCopyWith<ConfirmPaymentResponse> get copyWith => _$ConfirmPaymentResponseCopyWithImpl<ConfirmPaymentResponse>(this as ConfirmPaymentResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmPaymentResponse&&(identical(other.orderId, orderId) || other.orderId == orderId)&&const DeepCollectionEquality().equals(other.childOrderIds, childOrderIds)&&const DeepCollectionEquality().equals(other.paymentParams, paymentParams)&&(identical(other.redirectPayment, redirectPayment) || other.redirectPayment == redirectPayment)&&(identical(other.redirectUrl, redirectUrl) || other.redirectUrl == redirectUrl)&&(identical(other.successUrl, successUrl) || other.successUrl == successUrl)&&(identical(other.failUrl, failUrl) || other.failUrl == failUrl)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.totalProducts, totalProducts)&&(identical(other.success, success) || other.success == success)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,const DeepCollectionEquality().hash(childOrderIds),const DeepCollectionEquality().hash(paymentParams),redirectPayment,redirectUrl,successUrl,failUrl,message,const DeepCollectionEquality().hash(totalProducts),success,action);

@override
String toString() {
  return 'ConfirmPaymentResponse(orderId: $orderId, childOrderIds: $childOrderIds, paymentParams: $paymentParams, redirectPayment: $redirectPayment, redirectUrl: $redirectUrl, successUrl: $successUrl, failUrl: $failUrl, message: $message, totalProducts: $totalProducts, success: $success, action: $action)';
}


}

/// @nodoc
abstract mixin class $ConfirmPaymentResponseCopyWith<$Res>  {
  factory $ConfirmPaymentResponseCopyWith(ConfirmPaymentResponse value, $Res Function(ConfirmPaymentResponse) _then) = _$ConfirmPaymentResponseCopyWithImpl;
@useResult
$Res call({
 int? orderId, dynamic childOrderIds, List<dynamic>? paymentParams, bool? redirectPayment, String? redirectUrl, String? successUrl, String? failUrl, String? message, dynamic totalProducts, bool? success, String? action
});




}
/// @nodoc
class _$ConfirmPaymentResponseCopyWithImpl<$Res>
    implements $ConfirmPaymentResponseCopyWith<$Res> {
  _$ConfirmPaymentResponseCopyWithImpl(this._self, this._then);

  final ConfirmPaymentResponse _self;
  final $Res Function(ConfirmPaymentResponse) _then;

/// Create a copy of ConfirmPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = freezed,Object? childOrderIds = freezed,Object? paymentParams = freezed,Object? redirectPayment = freezed,Object? redirectUrl = freezed,Object? successUrl = freezed,Object? failUrl = freezed,Object? message = freezed,Object? totalProducts = freezed,Object? success = freezed,Object? action = freezed,}) {
  return _then(_self.copyWith(
orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,childOrderIds: freezed == childOrderIds ? _self.childOrderIds : childOrderIds // ignore: cast_nullable_to_non_nullable
as dynamic,paymentParams: freezed == paymentParams ? _self.paymentParams : paymentParams // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,redirectPayment: freezed == redirectPayment ? _self.redirectPayment : redirectPayment // ignore: cast_nullable_to_non_nullable
as bool?,redirectUrl: freezed == redirectUrl ? _self.redirectUrl : redirectUrl // ignore: cast_nullable_to_non_nullable
as String?,successUrl: freezed == successUrl ? _self.successUrl : successUrl // ignore: cast_nullable_to_non_nullable
as String?,failUrl: freezed == failUrl ? _self.failUrl : failUrl // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,totalProducts: freezed == totalProducts ? _self.totalProducts : totalProducts // ignore: cast_nullable_to_non_nullable
as dynamic,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfirmPaymentResponse].
extension ConfirmPaymentResponsePatterns on ConfirmPaymentResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfirmPaymentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmPaymentResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfirmPaymentResponse value)  $default,){
final _that = this;
switch (_that) {
case _ConfirmPaymentResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfirmPaymentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ConfirmPaymentResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? orderId,  dynamic childOrderIds,  List<dynamic>? paymentParams,  bool? redirectPayment,  String? redirectUrl,  String? successUrl,  String? failUrl,  String? message,  dynamic totalProducts,  bool? success,  String? action)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmPaymentResponse() when $default != null:
return $default(_that.orderId,_that.childOrderIds,_that.paymentParams,_that.redirectPayment,_that.redirectUrl,_that.successUrl,_that.failUrl,_that.message,_that.totalProducts,_that.success,_that.action);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? orderId,  dynamic childOrderIds,  List<dynamic>? paymentParams,  bool? redirectPayment,  String? redirectUrl,  String? successUrl,  String? failUrl,  String? message,  dynamic totalProducts,  bool? success,  String? action)  $default,) {final _that = this;
switch (_that) {
case _ConfirmPaymentResponse():
return $default(_that.orderId,_that.childOrderIds,_that.paymentParams,_that.redirectPayment,_that.redirectUrl,_that.successUrl,_that.failUrl,_that.message,_that.totalProducts,_that.success,_that.action);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? orderId,  dynamic childOrderIds,  List<dynamic>? paymentParams,  bool? redirectPayment,  String? redirectUrl,  String? successUrl,  String? failUrl,  String? message,  dynamic totalProducts,  bool? success,  String? action)?  $default,) {final _that = this;
switch (_that) {
case _ConfirmPaymentResponse() when $default != null:
return $default(_that.orderId,_that.childOrderIds,_that.paymentParams,_that.redirectPayment,_that.redirectUrl,_that.successUrl,_that.failUrl,_that.message,_that.totalProducts,_that.success,_that.action);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _ConfirmPaymentResponse implements ConfirmPaymentResponse {
  const _ConfirmPaymentResponse({this.orderId, this.childOrderIds, final  List<dynamic>? paymentParams, this.redirectPayment, this.redirectUrl, this.successUrl, this.failUrl, this.message, this.totalProducts, this.success, this.action}): _paymentParams = paymentParams;
  factory _ConfirmPaymentResponse.fromJson(Map<String, dynamic> json) => _$ConfirmPaymentResponseFromJson(json);

@override final  int? orderId;
@override final  dynamic childOrderIds;
 final  List<dynamic>? _paymentParams;
@override List<dynamic>? get paymentParams {
  final value = _paymentParams;
  if (value == null) return null;
  if (_paymentParams is EqualUnmodifiableListView) return _paymentParams;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? redirectPayment;
@override final  String? redirectUrl;
@override final  String? successUrl;
@override final  String? failUrl;
@override final  String? message;
@override final  dynamic totalProducts;
@override final  bool? success;
@override final  String? action;

/// Create a copy of ConfirmPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmPaymentResponseCopyWith<_ConfirmPaymentResponse> get copyWith => __$ConfirmPaymentResponseCopyWithImpl<_ConfirmPaymentResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmPaymentResponse&&(identical(other.orderId, orderId) || other.orderId == orderId)&&const DeepCollectionEquality().equals(other.childOrderIds, childOrderIds)&&const DeepCollectionEquality().equals(other._paymentParams, _paymentParams)&&(identical(other.redirectPayment, redirectPayment) || other.redirectPayment == redirectPayment)&&(identical(other.redirectUrl, redirectUrl) || other.redirectUrl == redirectUrl)&&(identical(other.successUrl, successUrl) || other.successUrl == successUrl)&&(identical(other.failUrl, failUrl) || other.failUrl == failUrl)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.totalProducts, totalProducts)&&(identical(other.success, success) || other.success == success)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,const DeepCollectionEquality().hash(childOrderIds),const DeepCollectionEquality().hash(_paymentParams),redirectPayment,redirectUrl,successUrl,failUrl,message,const DeepCollectionEquality().hash(totalProducts),success,action);

@override
String toString() {
  return 'ConfirmPaymentResponse(orderId: $orderId, childOrderIds: $childOrderIds, paymentParams: $paymentParams, redirectPayment: $redirectPayment, redirectUrl: $redirectUrl, successUrl: $successUrl, failUrl: $failUrl, message: $message, totalProducts: $totalProducts, success: $success, action: $action)';
}


}

/// @nodoc
abstract mixin class _$ConfirmPaymentResponseCopyWith<$Res> implements $ConfirmPaymentResponseCopyWith<$Res> {
  factory _$ConfirmPaymentResponseCopyWith(_ConfirmPaymentResponse value, $Res Function(_ConfirmPaymentResponse) _then) = __$ConfirmPaymentResponseCopyWithImpl;
@override @useResult
$Res call({
 int? orderId, dynamic childOrderIds, List<dynamic>? paymentParams, bool? redirectPayment, String? redirectUrl, String? successUrl, String? failUrl, String? message, dynamic totalProducts, bool? success, String? action
});




}
/// @nodoc
class __$ConfirmPaymentResponseCopyWithImpl<$Res>
    implements _$ConfirmPaymentResponseCopyWith<$Res> {
  __$ConfirmPaymentResponseCopyWithImpl(this._self, this._then);

  final _ConfirmPaymentResponse _self;
  final $Res Function(_ConfirmPaymentResponse) _then;

/// Create a copy of ConfirmPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = freezed,Object? childOrderIds = freezed,Object? paymentParams = freezed,Object? redirectPayment = freezed,Object? redirectUrl = freezed,Object? successUrl = freezed,Object? failUrl = freezed,Object? message = freezed,Object? totalProducts = freezed,Object? success = freezed,Object? action = freezed,}) {
  return _then(_ConfirmPaymentResponse(
orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,childOrderIds: freezed == childOrderIds ? _self.childOrderIds : childOrderIds // ignore: cast_nullable_to_non_nullable
as dynamic,paymentParams: freezed == paymentParams ? _self._paymentParams : paymentParams // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,redirectPayment: freezed == redirectPayment ? _self.redirectPayment : redirectPayment // ignore: cast_nullable_to_non_nullable
as bool?,redirectUrl: freezed == redirectUrl ? _self.redirectUrl : redirectUrl // ignore: cast_nullable_to_non_nullable
as String?,successUrl: freezed == successUrl ? _self.successUrl : successUrl // ignore: cast_nullable_to_non_nullable
as String?,failUrl: freezed == failUrl ? _self.failUrl : failUrl // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,totalProducts: freezed == totalProducts ? _self.totalProducts : totalProducts // ignore: cast_nullable_to_non_nullable
as dynamic,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
