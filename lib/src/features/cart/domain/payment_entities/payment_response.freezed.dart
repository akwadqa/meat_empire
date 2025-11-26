// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentResponse {

 bool? get allowMultipleProfiles; bool? get allowToApplyWallet; PaymentInfoEntity get paymentInfo; List<PaymentInfoEntity> get paymentMethods; List<UserProfile>? get userProfiles; Cart? get cart; String? get totalProducts; String get message; bool get success;
/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentResponseCopyWith<PaymentResponse> get copyWith => _$PaymentResponseCopyWithImpl<PaymentResponse>(this as PaymentResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResponse&&(identical(other.allowMultipleProfiles, allowMultipleProfiles) || other.allowMultipleProfiles == allowMultipleProfiles)&&(identical(other.allowToApplyWallet, allowToApplyWallet) || other.allowToApplyWallet == allowToApplyWallet)&&(identical(other.paymentInfo, paymentInfo) || other.paymentInfo == paymentInfo)&&const DeepCollectionEquality().equals(other.paymentMethods, paymentMethods)&&const DeepCollectionEquality().equals(other.userProfiles, userProfiles)&&(identical(other.cart, cart) || other.cart == cart)&&(identical(other.totalProducts, totalProducts) || other.totalProducts == totalProducts)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allowMultipleProfiles,allowToApplyWallet,paymentInfo,const DeepCollectionEquality().hash(paymentMethods),const DeepCollectionEquality().hash(userProfiles),cart,totalProducts,message,success);

@override
String toString() {
  return 'PaymentResponse(allowMultipleProfiles: $allowMultipleProfiles, allowToApplyWallet: $allowToApplyWallet, paymentInfo: $paymentInfo, paymentMethods: $paymentMethods, userProfiles: $userProfiles, cart: $cart, totalProducts: $totalProducts, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $PaymentResponseCopyWith<$Res>  {
  factory $PaymentResponseCopyWith(PaymentResponse value, $Res Function(PaymentResponse) _then) = _$PaymentResponseCopyWithImpl;
@useResult
$Res call({
 bool? allowMultipleProfiles, bool? allowToApplyWallet, PaymentInfoEntity paymentInfo, List<PaymentInfoEntity> paymentMethods, List<UserProfile>? userProfiles, Cart? cart, String? totalProducts, String message, bool success
});


$PaymentInfoEntityCopyWith<$Res> get paymentInfo;$CartCopyWith<$Res>? get cart;

}
/// @nodoc
class _$PaymentResponseCopyWithImpl<$Res>
    implements $PaymentResponseCopyWith<$Res> {
  _$PaymentResponseCopyWithImpl(this._self, this._then);

  final PaymentResponse _self;
  final $Res Function(PaymentResponse) _then;

/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allowMultipleProfiles = freezed,Object? allowToApplyWallet = freezed,Object? paymentInfo = null,Object? paymentMethods = null,Object? userProfiles = freezed,Object? cart = freezed,Object? totalProducts = freezed,Object? message = null,Object? success = null,}) {
  return _then(_self.copyWith(
allowMultipleProfiles: freezed == allowMultipleProfiles ? _self.allowMultipleProfiles : allowMultipleProfiles // ignore: cast_nullable_to_non_nullable
as bool?,allowToApplyWallet: freezed == allowToApplyWallet ? _self.allowToApplyWallet : allowToApplyWallet // ignore: cast_nullable_to_non_nullable
as bool?,paymentInfo: null == paymentInfo ? _self.paymentInfo : paymentInfo // ignore: cast_nullable_to_non_nullable
as PaymentInfoEntity,paymentMethods: null == paymentMethods ? _self.paymentMethods : paymentMethods // ignore: cast_nullable_to_non_nullable
as List<PaymentInfoEntity>,userProfiles: freezed == userProfiles ? _self.userProfiles : userProfiles // ignore: cast_nullable_to_non_nullable
as List<UserProfile>?,cart: freezed == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as Cart?,totalProducts: freezed == totalProducts ? _self.totalProducts : totalProducts // ignore: cast_nullable_to_non_nullable
as String?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentInfoEntityCopyWith<$Res> get paymentInfo {
  
  return $PaymentInfoEntityCopyWith<$Res>(_self.paymentInfo, (value) {
    return _then(_self.copyWith(paymentInfo: value));
  });
}/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCopyWith<$Res>? get cart {
    if (_self.cart == null) {
    return null;
  }

  return $CartCopyWith<$Res>(_self.cart!, (value) {
    return _then(_self.copyWith(cart: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentResponse].
extension PaymentResponsePatterns on PaymentResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentResponse value)  $default,){
final _that = this;
switch (_that) {
case _PaymentResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? allowMultipleProfiles,  bool? allowToApplyWallet,  PaymentInfoEntity paymentInfo,  List<PaymentInfoEntity> paymentMethods,  List<UserProfile>? userProfiles,  Cart? cart,  String? totalProducts,  String message,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentResponse() when $default != null:
return $default(_that.allowMultipleProfiles,_that.allowToApplyWallet,_that.paymentInfo,_that.paymentMethods,_that.userProfiles,_that.cart,_that.totalProducts,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? allowMultipleProfiles,  bool? allowToApplyWallet,  PaymentInfoEntity paymentInfo,  List<PaymentInfoEntity> paymentMethods,  List<UserProfile>? userProfiles,  Cart? cart,  String? totalProducts,  String message,  bool success)  $default,) {final _that = this;
switch (_that) {
case _PaymentResponse():
return $default(_that.allowMultipleProfiles,_that.allowToApplyWallet,_that.paymentInfo,_that.paymentMethods,_that.userProfiles,_that.cart,_that.totalProducts,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? allowMultipleProfiles,  bool? allowToApplyWallet,  PaymentInfoEntity paymentInfo,  List<PaymentInfoEntity> paymentMethods,  List<UserProfile>? userProfiles,  Cart? cart,  String? totalProducts,  String message,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _PaymentResponse() when $default != null:
return $default(_that.allowMultipleProfiles,_that.allowToApplyWallet,_that.paymentInfo,_that.paymentMethods,_that.userProfiles,_that.cart,_that.totalProducts,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _PaymentResponse implements PaymentResponse {
   _PaymentResponse({this.allowMultipleProfiles, this.allowToApplyWallet, required this.paymentInfo, required final  List<PaymentInfoEntity> paymentMethods, final  List<UserProfile>? userProfiles, this.cart, this.totalProducts, required this.message, required this.success}): _paymentMethods = paymentMethods,_userProfiles = userProfiles;
  factory _PaymentResponse.fromJson(Map<String, dynamic> json) => _$PaymentResponseFromJson(json);

@override final  bool? allowMultipleProfiles;
@override final  bool? allowToApplyWallet;
@override final  PaymentInfoEntity paymentInfo;
 final  List<PaymentInfoEntity> _paymentMethods;
@override List<PaymentInfoEntity> get paymentMethods {
  if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paymentMethods);
}

 final  List<UserProfile>? _userProfiles;
@override List<UserProfile>? get userProfiles {
  final value = _userProfiles;
  if (value == null) return null;
  if (_userProfiles is EqualUnmodifiableListView) return _userProfiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Cart? cart;
@override final  String? totalProducts;
@override final  String message;
@override final  bool success;

/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentResponseCopyWith<_PaymentResponse> get copyWith => __$PaymentResponseCopyWithImpl<_PaymentResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentResponse&&(identical(other.allowMultipleProfiles, allowMultipleProfiles) || other.allowMultipleProfiles == allowMultipleProfiles)&&(identical(other.allowToApplyWallet, allowToApplyWallet) || other.allowToApplyWallet == allowToApplyWallet)&&(identical(other.paymentInfo, paymentInfo) || other.paymentInfo == paymentInfo)&&const DeepCollectionEquality().equals(other._paymentMethods, _paymentMethods)&&const DeepCollectionEquality().equals(other._userProfiles, _userProfiles)&&(identical(other.cart, cart) || other.cart == cart)&&(identical(other.totalProducts, totalProducts) || other.totalProducts == totalProducts)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allowMultipleProfiles,allowToApplyWallet,paymentInfo,const DeepCollectionEquality().hash(_paymentMethods),const DeepCollectionEquality().hash(_userProfiles),cart,totalProducts,message,success);

@override
String toString() {
  return 'PaymentResponse(allowMultipleProfiles: $allowMultipleProfiles, allowToApplyWallet: $allowToApplyWallet, paymentInfo: $paymentInfo, paymentMethods: $paymentMethods, userProfiles: $userProfiles, cart: $cart, totalProducts: $totalProducts, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$PaymentResponseCopyWith<$Res> implements $PaymentResponseCopyWith<$Res> {
  factory _$PaymentResponseCopyWith(_PaymentResponse value, $Res Function(_PaymentResponse) _then) = __$PaymentResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? allowMultipleProfiles, bool? allowToApplyWallet, PaymentInfoEntity paymentInfo, List<PaymentInfoEntity> paymentMethods, List<UserProfile>? userProfiles, Cart? cart, String? totalProducts, String message, bool success
});


@override $PaymentInfoEntityCopyWith<$Res> get paymentInfo;@override $CartCopyWith<$Res>? get cart;

}
/// @nodoc
class __$PaymentResponseCopyWithImpl<$Res>
    implements _$PaymentResponseCopyWith<$Res> {
  __$PaymentResponseCopyWithImpl(this._self, this._then);

  final _PaymentResponse _self;
  final $Res Function(_PaymentResponse) _then;

/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allowMultipleProfiles = freezed,Object? allowToApplyWallet = freezed,Object? paymentInfo = null,Object? paymentMethods = null,Object? userProfiles = freezed,Object? cart = freezed,Object? totalProducts = freezed,Object? message = null,Object? success = null,}) {
  return _then(_PaymentResponse(
allowMultipleProfiles: freezed == allowMultipleProfiles ? _self.allowMultipleProfiles : allowMultipleProfiles // ignore: cast_nullable_to_non_nullable
as bool?,allowToApplyWallet: freezed == allowToApplyWallet ? _self.allowToApplyWallet : allowToApplyWallet // ignore: cast_nullable_to_non_nullable
as bool?,paymentInfo: null == paymentInfo ? _self.paymentInfo : paymentInfo // ignore: cast_nullable_to_non_nullable
as PaymentInfoEntity,paymentMethods: null == paymentMethods ? _self._paymentMethods : paymentMethods // ignore: cast_nullable_to_non_nullable
as List<PaymentInfoEntity>,userProfiles: freezed == userProfiles ? _self._userProfiles : userProfiles // ignore: cast_nullable_to_non_nullable
as List<UserProfile>?,cart: freezed == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as Cart?,totalProducts: freezed == totalProducts ? _self.totalProducts : totalProducts // ignore: cast_nullable_to_non_nullable
as String?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentInfoEntityCopyWith<$Res> get paymentInfo {
  
  return $PaymentInfoEntityCopyWith<$Res>(_self.paymentInfo, (value) {
    return _then(_self.copyWith(paymentInfo: value));
  });
}/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCopyWith<$Res>? get cart {
    if (_self.cart == null) {
    return null;
  }

  return $CartCopyWith<$Res>(_self.cart!, (value) {
    return _then(_self.copyWith(cart: value));
  });
}
}

// dart format on
