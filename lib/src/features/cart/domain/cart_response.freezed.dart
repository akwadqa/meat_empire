// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartResponse {

 bool? get allowMultipleProfiles; List<UserProfile>? get userProfiles; Cart? get cart; dynamic get totalProducts; String? get message; bool? get success;
/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartResponseCopyWith<CartResponse> get copyWith => _$CartResponseCopyWithImpl<CartResponse>(this as CartResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartResponse&&(identical(other.allowMultipleProfiles, allowMultipleProfiles) || other.allowMultipleProfiles == allowMultipleProfiles)&&const DeepCollectionEquality().equals(other.userProfiles, userProfiles)&&(identical(other.cart, cart) || other.cart == cart)&&const DeepCollectionEquality().equals(other.totalProducts, totalProducts)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allowMultipleProfiles,const DeepCollectionEquality().hash(userProfiles),cart,const DeepCollectionEquality().hash(totalProducts),message,success);

@override
String toString() {
  return 'CartResponse(allowMultipleProfiles: $allowMultipleProfiles, userProfiles: $userProfiles, cart: $cart, totalProducts: $totalProducts, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $CartResponseCopyWith<$Res>  {
  factory $CartResponseCopyWith(CartResponse value, $Res Function(CartResponse) _then) = _$CartResponseCopyWithImpl;
@useResult
$Res call({
 bool? allowMultipleProfiles, List<UserProfile>? userProfiles, Cart? cart, dynamic totalProducts, String? message, bool? success
});


$CartCopyWith<$Res>? get cart;

}
/// @nodoc
class _$CartResponseCopyWithImpl<$Res>
    implements $CartResponseCopyWith<$Res> {
  _$CartResponseCopyWithImpl(this._self, this._then);

  final CartResponse _self;
  final $Res Function(CartResponse) _then;

/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allowMultipleProfiles = freezed,Object? userProfiles = freezed,Object? cart = freezed,Object? totalProducts = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(_self.copyWith(
allowMultipleProfiles: freezed == allowMultipleProfiles ? _self.allowMultipleProfiles : allowMultipleProfiles // ignore: cast_nullable_to_non_nullable
as bool?,userProfiles: freezed == userProfiles ? _self.userProfiles : userProfiles // ignore: cast_nullable_to_non_nullable
as List<UserProfile>?,cart: freezed == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as Cart?,totalProducts: freezed == totalProducts ? _self.totalProducts : totalProducts // ignore: cast_nullable_to_non_nullable
as dynamic,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of CartResponse
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


/// Adds pattern-matching-related methods to [CartResponse].
extension CartResponsePatterns on CartResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartResponse value)  $default,){
final _that = this;
switch (_that) {
case _CartResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CartResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? allowMultipleProfiles,  List<UserProfile>? userProfiles,  Cart? cart,  dynamic totalProducts,  String? message,  bool? success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartResponse() when $default != null:
return $default(_that.allowMultipleProfiles,_that.userProfiles,_that.cart,_that.totalProducts,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? allowMultipleProfiles,  List<UserProfile>? userProfiles,  Cart? cart,  dynamic totalProducts,  String? message,  bool? success)  $default,) {final _that = this;
switch (_that) {
case _CartResponse():
return $default(_that.allowMultipleProfiles,_that.userProfiles,_that.cart,_that.totalProducts,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? allowMultipleProfiles,  List<UserProfile>? userProfiles,  Cart? cart,  dynamic totalProducts,  String? message,  bool? success)?  $default,) {final _that = this;
switch (_that) {
case _CartResponse() when $default != null:
return $default(_that.allowMultipleProfiles,_that.userProfiles,_that.cart,_that.totalProducts,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _CartResponse implements CartResponse {
   _CartResponse({this.allowMultipleProfiles, final  List<UserProfile>? userProfiles, this.cart, this.totalProducts, this.message, this.success}): _userProfiles = userProfiles;
  factory _CartResponse.fromJson(Map<String, dynamic> json) => _$CartResponseFromJson(json);

@override final  bool? allowMultipleProfiles;
 final  List<UserProfile>? _userProfiles;
@override List<UserProfile>? get userProfiles {
  final value = _userProfiles;
  if (value == null) return null;
  if (_userProfiles is EqualUnmodifiableListView) return _userProfiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Cart? cart;
@override final  dynamic totalProducts;
@override final  String? message;
@override final  bool? success;

/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartResponseCopyWith<_CartResponse> get copyWith => __$CartResponseCopyWithImpl<_CartResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartResponse&&(identical(other.allowMultipleProfiles, allowMultipleProfiles) || other.allowMultipleProfiles == allowMultipleProfiles)&&const DeepCollectionEquality().equals(other._userProfiles, _userProfiles)&&(identical(other.cart, cart) || other.cart == cart)&&const DeepCollectionEquality().equals(other.totalProducts, totalProducts)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allowMultipleProfiles,const DeepCollectionEquality().hash(_userProfiles),cart,const DeepCollectionEquality().hash(totalProducts),message,success);

@override
String toString() {
  return 'CartResponse(allowMultipleProfiles: $allowMultipleProfiles, userProfiles: $userProfiles, cart: $cart, totalProducts: $totalProducts, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$CartResponseCopyWith<$Res> implements $CartResponseCopyWith<$Res> {
  factory _$CartResponseCopyWith(_CartResponse value, $Res Function(_CartResponse) _then) = __$CartResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? allowMultipleProfiles, List<UserProfile>? userProfiles, Cart? cart, dynamic totalProducts, String? message, bool? success
});


@override $CartCopyWith<$Res>? get cart;

}
/// @nodoc
class __$CartResponseCopyWithImpl<$Res>
    implements _$CartResponseCopyWith<$Res> {
  __$CartResponseCopyWithImpl(this._self, this._then);

  final _CartResponse _self;
  final $Res Function(_CartResponse) _then;

/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allowMultipleProfiles = freezed,Object? userProfiles = freezed,Object? cart = freezed,Object? totalProducts = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(_CartResponse(
allowMultipleProfiles: freezed == allowMultipleProfiles ? _self.allowMultipleProfiles : allowMultipleProfiles // ignore: cast_nullable_to_non_nullable
as bool?,userProfiles: freezed == userProfiles ? _self._userProfiles : userProfiles // ignore: cast_nullable_to_non_nullable
as List<UserProfile>?,cart: freezed == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as Cart?,totalProducts: freezed == totalProducts ? _self.totalProducts : totalProducts // ignore: cast_nullable_to_non_nullable
as dynamic,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of CartResponse
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
