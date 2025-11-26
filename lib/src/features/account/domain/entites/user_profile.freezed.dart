// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfile {

@JsonKey(name: 'user_id') String get userId; String get status;@JsonKey(name: 'user_type') String get userType;@JsonKey(name: 'user_login') String get userLogin; String get firstname; String get lastname; String get email; String get phone; String get password;@JsonKey(name: 'b_state') String? get bllingCity;@JsonKey(name: 's_state') String? get shippingCity;@JsonKey(name: 'b_address') String? get billingStrete;@JsonKey(name: 's_address') String? get shippingStrete;@JsonKey(name: 'b_zipcode') String? get billingCountry;@JsonKey(name: 's_zipcode') String? get shippingCountry;@JsonKey(name: 'b_country') String? get defaultBillingCountry;@JsonKey(name: 's_country') String? get defaultShippingCountry;@JsonKey(name: 'b_address_2') String? get billingBuildingNumber;@JsonKey(name: 's_address_2') String? get shippingBuildingNumber;@JsonKey(name: 's_address_type') String? get shippingBuildingType;@JsonKey(name: 'profile_name') String? get profileName;@JsonKey(name: 'points') int get points;
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileCopyWith<UserProfile> get copyWith => _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfile&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.status, status) || other.status == status)&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.userLogin, userLogin) || other.userLogin == userLogin)&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.bllingCity, bllingCity) || other.bllingCity == bllingCity)&&(identical(other.shippingCity, shippingCity) || other.shippingCity == shippingCity)&&(identical(other.billingStrete, billingStrete) || other.billingStrete == billingStrete)&&(identical(other.shippingStrete, shippingStrete) || other.shippingStrete == shippingStrete)&&(identical(other.billingCountry, billingCountry) || other.billingCountry == billingCountry)&&(identical(other.shippingCountry, shippingCountry) || other.shippingCountry == shippingCountry)&&(identical(other.defaultBillingCountry, defaultBillingCountry) || other.defaultBillingCountry == defaultBillingCountry)&&(identical(other.defaultShippingCountry, defaultShippingCountry) || other.defaultShippingCountry == defaultShippingCountry)&&(identical(other.billingBuildingNumber, billingBuildingNumber) || other.billingBuildingNumber == billingBuildingNumber)&&(identical(other.shippingBuildingNumber, shippingBuildingNumber) || other.shippingBuildingNumber == shippingBuildingNumber)&&(identical(other.shippingBuildingType, shippingBuildingType) || other.shippingBuildingType == shippingBuildingType)&&(identical(other.profileName, profileName) || other.profileName == profileName)&&(identical(other.points, points) || other.points == points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userId,status,userType,userLogin,firstname,lastname,email,phone,password,bllingCity,shippingCity,billingStrete,shippingStrete,billingCountry,shippingCountry,defaultBillingCountry,defaultShippingCountry,billingBuildingNumber,shippingBuildingNumber,shippingBuildingType,profileName,points]);

@override
String toString() {
  return 'UserProfile(userId: $userId, status: $status, userType: $userType, userLogin: $userLogin, firstname: $firstname, lastname: $lastname, email: $email, phone: $phone, password: $password, bllingCity: $bllingCity, shippingCity: $shippingCity, billingStrete: $billingStrete, shippingStrete: $shippingStrete, billingCountry: $billingCountry, shippingCountry: $shippingCountry, defaultBillingCountry: $defaultBillingCountry, defaultShippingCountry: $defaultShippingCountry, billingBuildingNumber: $billingBuildingNumber, shippingBuildingNumber: $shippingBuildingNumber, shippingBuildingType: $shippingBuildingType, profileName: $profileName, points: $points)';
}


}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res>  {
  factory $UserProfileCopyWith(UserProfile value, $Res Function(UserProfile) _then) = _$UserProfileCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId, String status,@JsonKey(name: 'user_type') String userType,@JsonKey(name: 'user_login') String userLogin, String firstname, String lastname, String email, String phone, String password,@JsonKey(name: 'b_state') String? bllingCity,@JsonKey(name: 's_state') String? shippingCity,@JsonKey(name: 'b_address') String? billingStrete,@JsonKey(name: 's_address') String? shippingStrete,@JsonKey(name: 'b_zipcode') String? billingCountry,@JsonKey(name: 's_zipcode') String? shippingCountry,@JsonKey(name: 'b_country') String? defaultBillingCountry,@JsonKey(name: 's_country') String? defaultShippingCountry,@JsonKey(name: 'b_address_2') String? billingBuildingNumber,@JsonKey(name: 's_address_2') String? shippingBuildingNumber,@JsonKey(name: 's_address_type') String? shippingBuildingType,@JsonKey(name: 'profile_name') String? profileName,@JsonKey(name: 'points') int points
});




}
/// @nodoc
class _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? status = null,Object? userType = null,Object? userLogin = null,Object? firstname = null,Object? lastname = null,Object? email = null,Object? phone = null,Object? password = null,Object? bllingCity = freezed,Object? shippingCity = freezed,Object? billingStrete = freezed,Object? shippingStrete = freezed,Object? billingCountry = freezed,Object? shippingCountry = freezed,Object? defaultBillingCountry = freezed,Object? defaultShippingCountry = freezed,Object? billingBuildingNumber = freezed,Object? shippingBuildingNumber = freezed,Object? shippingBuildingType = freezed,Object? profileName = freezed,Object? points = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,userType: null == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String,userLogin: null == userLogin ? _self.userLogin : userLogin // ignore: cast_nullable_to_non_nullable
as String,firstname: null == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String,lastname: null == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,bllingCity: freezed == bllingCity ? _self.bllingCity : bllingCity // ignore: cast_nullable_to_non_nullable
as String?,shippingCity: freezed == shippingCity ? _self.shippingCity : shippingCity // ignore: cast_nullable_to_non_nullable
as String?,billingStrete: freezed == billingStrete ? _self.billingStrete : billingStrete // ignore: cast_nullable_to_non_nullable
as String?,shippingStrete: freezed == shippingStrete ? _self.shippingStrete : shippingStrete // ignore: cast_nullable_to_non_nullable
as String?,billingCountry: freezed == billingCountry ? _self.billingCountry : billingCountry // ignore: cast_nullable_to_non_nullable
as String?,shippingCountry: freezed == shippingCountry ? _self.shippingCountry : shippingCountry // ignore: cast_nullable_to_non_nullable
as String?,defaultBillingCountry: freezed == defaultBillingCountry ? _self.defaultBillingCountry : defaultBillingCountry // ignore: cast_nullable_to_non_nullable
as String?,defaultShippingCountry: freezed == defaultShippingCountry ? _self.defaultShippingCountry : defaultShippingCountry // ignore: cast_nullable_to_non_nullable
as String?,billingBuildingNumber: freezed == billingBuildingNumber ? _self.billingBuildingNumber : billingBuildingNumber // ignore: cast_nullable_to_non_nullable
as String?,shippingBuildingNumber: freezed == shippingBuildingNumber ? _self.shippingBuildingNumber : shippingBuildingNumber // ignore: cast_nullable_to_non_nullable
as String?,shippingBuildingType: freezed == shippingBuildingType ? _self.shippingBuildingType : shippingBuildingType // ignore: cast_nullable_to_non_nullable
as String?,profileName: freezed == profileName ? _self.profileName : profileName // ignore: cast_nullable_to_non_nullable
as String?,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfile value)  $default,){
final _that = this;
switch (_that) {
case _UserProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId,  String status, @JsonKey(name: 'user_type')  String userType, @JsonKey(name: 'user_login')  String userLogin,  String firstname,  String lastname,  String email,  String phone,  String password, @JsonKey(name: 'b_state')  String? bllingCity, @JsonKey(name: 's_state')  String? shippingCity, @JsonKey(name: 'b_address')  String? billingStrete, @JsonKey(name: 's_address')  String? shippingStrete, @JsonKey(name: 'b_zipcode')  String? billingCountry, @JsonKey(name: 's_zipcode')  String? shippingCountry, @JsonKey(name: 'b_country')  String? defaultBillingCountry, @JsonKey(name: 's_country')  String? defaultShippingCountry, @JsonKey(name: 'b_address_2')  String? billingBuildingNumber, @JsonKey(name: 's_address_2')  String? shippingBuildingNumber, @JsonKey(name: 's_address_type')  String? shippingBuildingType, @JsonKey(name: 'profile_name')  String? profileName, @JsonKey(name: 'points')  int points)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.userId,_that.status,_that.userType,_that.userLogin,_that.firstname,_that.lastname,_that.email,_that.phone,_that.password,_that.bllingCity,_that.shippingCity,_that.billingStrete,_that.shippingStrete,_that.billingCountry,_that.shippingCountry,_that.defaultBillingCountry,_that.defaultShippingCountry,_that.billingBuildingNumber,_that.shippingBuildingNumber,_that.shippingBuildingType,_that.profileName,_that.points);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId,  String status, @JsonKey(name: 'user_type')  String userType, @JsonKey(name: 'user_login')  String userLogin,  String firstname,  String lastname,  String email,  String phone,  String password, @JsonKey(name: 'b_state')  String? bllingCity, @JsonKey(name: 's_state')  String? shippingCity, @JsonKey(name: 'b_address')  String? billingStrete, @JsonKey(name: 's_address')  String? shippingStrete, @JsonKey(name: 'b_zipcode')  String? billingCountry, @JsonKey(name: 's_zipcode')  String? shippingCountry, @JsonKey(name: 'b_country')  String? defaultBillingCountry, @JsonKey(name: 's_country')  String? defaultShippingCountry, @JsonKey(name: 'b_address_2')  String? billingBuildingNumber, @JsonKey(name: 's_address_2')  String? shippingBuildingNumber, @JsonKey(name: 's_address_type')  String? shippingBuildingType, @JsonKey(name: 'profile_name')  String? profileName, @JsonKey(name: 'points')  int points)  $default,) {final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that.userId,_that.status,_that.userType,_that.userLogin,_that.firstname,_that.lastname,_that.email,_that.phone,_that.password,_that.bllingCity,_that.shippingCity,_that.billingStrete,_that.shippingStrete,_that.billingCountry,_that.shippingCountry,_that.defaultBillingCountry,_that.defaultShippingCountry,_that.billingBuildingNumber,_that.shippingBuildingNumber,_that.shippingBuildingType,_that.profileName,_that.points);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId,  String status, @JsonKey(name: 'user_type')  String userType, @JsonKey(name: 'user_login')  String userLogin,  String firstname,  String lastname,  String email,  String phone,  String password, @JsonKey(name: 'b_state')  String? bllingCity, @JsonKey(name: 's_state')  String? shippingCity, @JsonKey(name: 'b_address')  String? billingStrete, @JsonKey(name: 's_address')  String? shippingStrete, @JsonKey(name: 'b_zipcode')  String? billingCountry, @JsonKey(name: 's_zipcode')  String? shippingCountry, @JsonKey(name: 'b_country')  String? defaultBillingCountry, @JsonKey(name: 's_country')  String? defaultShippingCountry, @JsonKey(name: 'b_address_2')  String? billingBuildingNumber, @JsonKey(name: 's_address_2')  String? shippingBuildingNumber, @JsonKey(name: 's_address_type')  String? shippingBuildingType, @JsonKey(name: 'profile_name')  String? profileName, @JsonKey(name: 'points')  int points)?  $default,) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.userId,_that.status,_that.userType,_that.userLogin,_that.firstname,_that.lastname,_that.email,_that.phone,_that.password,_that.bllingCity,_that.shippingCity,_that.billingStrete,_that.shippingStrete,_that.billingCountry,_that.shippingCountry,_that.defaultBillingCountry,_that.defaultShippingCountry,_that.billingBuildingNumber,_that.shippingBuildingNumber,_that.shippingBuildingType,_that.profileName,_that.points);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _UserProfile implements UserProfile {
  const _UserProfile({@JsonKey(name: 'user_id') required this.userId, required this.status, @JsonKey(name: 'user_type') required this.userType, @JsonKey(name: 'user_login') required this.userLogin, required this.firstname, required this.lastname, required this.email, required this.phone, required this.password, @JsonKey(name: 'b_state') this.bllingCity, @JsonKey(name: 's_state') this.shippingCity, @JsonKey(name: 'b_address') this.billingStrete, @JsonKey(name: 's_address') this.shippingStrete, @JsonKey(name: 'b_zipcode') this.billingCountry, @JsonKey(name: 's_zipcode') this.shippingCountry, @JsonKey(name: 'b_country') this.defaultBillingCountry, @JsonKey(name: 's_country') this.defaultShippingCountry, @JsonKey(name: 'b_address_2') this.billingBuildingNumber, @JsonKey(name: 's_address_2') this.shippingBuildingNumber, @JsonKey(name: 's_address_type') this.shippingBuildingType, @JsonKey(name: 'profile_name') this.profileName, @JsonKey(name: 'points') this.points = 0});
  factory _UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override final  String status;
@override@JsonKey(name: 'user_type') final  String userType;
@override@JsonKey(name: 'user_login') final  String userLogin;
@override final  String firstname;
@override final  String lastname;
@override final  String email;
@override final  String phone;
@override final  String password;
@override@JsonKey(name: 'b_state') final  String? bllingCity;
@override@JsonKey(name: 's_state') final  String? shippingCity;
@override@JsonKey(name: 'b_address') final  String? billingStrete;
@override@JsonKey(name: 's_address') final  String? shippingStrete;
@override@JsonKey(name: 'b_zipcode') final  String? billingCountry;
@override@JsonKey(name: 's_zipcode') final  String? shippingCountry;
@override@JsonKey(name: 'b_country') final  String? defaultBillingCountry;
@override@JsonKey(name: 's_country') final  String? defaultShippingCountry;
@override@JsonKey(name: 'b_address_2') final  String? billingBuildingNumber;
@override@JsonKey(name: 's_address_2') final  String? shippingBuildingNumber;
@override@JsonKey(name: 's_address_type') final  String? shippingBuildingType;
@override@JsonKey(name: 'profile_name') final  String? profileName;
@override@JsonKey(name: 'points') final  int points;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileCopyWith<_UserProfile> get copyWith => __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfile&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.status, status) || other.status == status)&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.userLogin, userLogin) || other.userLogin == userLogin)&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.bllingCity, bllingCity) || other.bllingCity == bllingCity)&&(identical(other.shippingCity, shippingCity) || other.shippingCity == shippingCity)&&(identical(other.billingStrete, billingStrete) || other.billingStrete == billingStrete)&&(identical(other.shippingStrete, shippingStrete) || other.shippingStrete == shippingStrete)&&(identical(other.billingCountry, billingCountry) || other.billingCountry == billingCountry)&&(identical(other.shippingCountry, shippingCountry) || other.shippingCountry == shippingCountry)&&(identical(other.defaultBillingCountry, defaultBillingCountry) || other.defaultBillingCountry == defaultBillingCountry)&&(identical(other.defaultShippingCountry, defaultShippingCountry) || other.defaultShippingCountry == defaultShippingCountry)&&(identical(other.billingBuildingNumber, billingBuildingNumber) || other.billingBuildingNumber == billingBuildingNumber)&&(identical(other.shippingBuildingNumber, shippingBuildingNumber) || other.shippingBuildingNumber == shippingBuildingNumber)&&(identical(other.shippingBuildingType, shippingBuildingType) || other.shippingBuildingType == shippingBuildingType)&&(identical(other.profileName, profileName) || other.profileName == profileName)&&(identical(other.points, points) || other.points == points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userId,status,userType,userLogin,firstname,lastname,email,phone,password,bllingCity,shippingCity,billingStrete,shippingStrete,billingCountry,shippingCountry,defaultBillingCountry,defaultShippingCountry,billingBuildingNumber,shippingBuildingNumber,shippingBuildingType,profileName,points]);

@override
String toString() {
  return 'UserProfile(userId: $userId, status: $status, userType: $userType, userLogin: $userLogin, firstname: $firstname, lastname: $lastname, email: $email, phone: $phone, password: $password, bllingCity: $bllingCity, shippingCity: $shippingCity, billingStrete: $billingStrete, shippingStrete: $shippingStrete, billingCountry: $billingCountry, shippingCountry: $shippingCountry, defaultBillingCountry: $defaultBillingCountry, defaultShippingCountry: $defaultShippingCountry, billingBuildingNumber: $billingBuildingNumber, shippingBuildingNumber: $shippingBuildingNumber, shippingBuildingType: $shippingBuildingType, profileName: $profileName, points: $points)';
}


}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(_UserProfile value, $Res Function(_UserProfile) _then) = __$UserProfileCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId, String status,@JsonKey(name: 'user_type') String userType,@JsonKey(name: 'user_login') String userLogin, String firstname, String lastname, String email, String phone, String password,@JsonKey(name: 'b_state') String? bllingCity,@JsonKey(name: 's_state') String? shippingCity,@JsonKey(name: 'b_address') String? billingStrete,@JsonKey(name: 's_address') String? shippingStrete,@JsonKey(name: 'b_zipcode') String? billingCountry,@JsonKey(name: 's_zipcode') String? shippingCountry,@JsonKey(name: 'b_country') String? defaultBillingCountry,@JsonKey(name: 's_country') String? defaultShippingCountry,@JsonKey(name: 'b_address_2') String? billingBuildingNumber,@JsonKey(name: 's_address_2') String? shippingBuildingNumber,@JsonKey(name: 's_address_type') String? shippingBuildingType,@JsonKey(name: 'profile_name') String? profileName,@JsonKey(name: 'points') int points
});




}
/// @nodoc
class __$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? status = null,Object? userType = null,Object? userLogin = null,Object? firstname = null,Object? lastname = null,Object? email = null,Object? phone = null,Object? password = null,Object? bllingCity = freezed,Object? shippingCity = freezed,Object? billingStrete = freezed,Object? shippingStrete = freezed,Object? billingCountry = freezed,Object? shippingCountry = freezed,Object? defaultBillingCountry = freezed,Object? defaultShippingCountry = freezed,Object? billingBuildingNumber = freezed,Object? shippingBuildingNumber = freezed,Object? shippingBuildingType = freezed,Object? profileName = freezed,Object? points = null,}) {
  return _then(_UserProfile(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,userType: null == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String,userLogin: null == userLogin ? _self.userLogin : userLogin // ignore: cast_nullable_to_non_nullable
as String,firstname: null == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String,lastname: null == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,bllingCity: freezed == bllingCity ? _self.bllingCity : bllingCity // ignore: cast_nullable_to_non_nullable
as String?,shippingCity: freezed == shippingCity ? _self.shippingCity : shippingCity // ignore: cast_nullable_to_non_nullable
as String?,billingStrete: freezed == billingStrete ? _self.billingStrete : billingStrete // ignore: cast_nullable_to_non_nullable
as String?,shippingStrete: freezed == shippingStrete ? _self.shippingStrete : shippingStrete // ignore: cast_nullable_to_non_nullable
as String?,billingCountry: freezed == billingCountry ? _self.billingCountry : billingCountry // ignore: cast_nullable_to_non_nullable
as String?,shippingCountry: freezed == shippingCountry ? _self.shippingCountry : shippingCountry // ignore: cast_nullable_to_non_nullable
as String?,defaultBillingCountry: freezed == defaultBillingCountry ? _self.defaultBillingCountry : defaultBillingCountry // ignore: cast_nullable_to_non_nullable
as String?,defaultShippingCountry: freezed == defaultShippingCountry ? _self.defaultShippingCountry : defaultShippingCountry // ignore: cast_nullable_to_non_nullable
as String?,billingBuildingNumber: freezed == billingBuildingNumber ? _self.billingBuildingNumber : billingBuildingNumber // ignore: cast_nullable_to_non_nullable
as String?,shippingBuildingNumber: freezed == shippingBuildingNumber ? _self.shippingBuildingNumber : shippingBuildingNumber // ignore: cast_nullable_to_non_nullable
as String?,shippingBuildingType: freezed == shippingBuildingType ? _self.shippingBuildingType : shippingBuildingType // ignore: cast_nullable_to_non_nullable
as String?,profileName: freezed == profileName ? _self.profileName : profileName // ignore: cast_nullable_to_non_nullable
as String?,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
