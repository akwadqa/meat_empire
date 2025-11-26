// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDataEntity {

 String? get userId; String? get status; String? get userType; String? get userLogin; String? get referer; String? get isRoot; String? get companyId; String? get lastActivity; String? get timestamp; String? get password; String? get salt; String? get firstname; String? get lastname; String? get company; String? get email; String? get phone; String? get fax; String? get url; String? get taxExempt; String? get langCode; String? get birthday; String? get purchaseTimestampFrom; String? get purchaseTimestampTo; String? get responsibleEmail; String? get passwordChangeTimestamp; String? get apiKey; String? get helpdeskUserId; String? get janrainIdentifier; String? get profileId; String? get profileType; String? get bFirstname; String? get bLastname; String? get bAddress; String? get bAddress2; String? get bCity; String? get bCounty; String? get bState; String? get bCountry; String? get bZipcode; String? get bPhone; String? get sFirstname; String? get sLastname; String? get sAddress; String? get sAddress2; String? get sCity; String? get sCounty; String? get sState; String? get sCountry; String? get sZipcode; String? get sPhone; String? get sAddressType; String? get profileName; String? get profileUpdateTimestamp; List<dynamic>? get fields; String? get bCountryDescr; String? get sCountryDescr; String? get bStateDescr; String? get sStateDescr; int? get points;
/// Create a copy of UserDataEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataEntityCopyWith<UserDataEntity> get copyWith => _$UserDataEntityCopyWithImpl<UserDataEntity>(this as UserDataEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDataEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.status, status) || other.status == status)&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.userLogin, userLogin) || other.userLogin == userLogin)&&(identical(other.referer, referer) || other.referer == referer)&&(identical(other.isRoot, isRoot) || other.isRoot == isRoot)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.lastActivity, lastActivity) || other.lastActivity == lastActivity)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.password, password) || other.password == password)&&(identical(other.salt, salt) || other.salt == salt)&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.company, company) || other.company == company)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.fax, fax) || other.fax == fax)&&(identical(other.url, url) || other.url == url)&&(identical(other.taxExempt, taxExempt) || other.taxExempt == taxExempt)&&(identical(other.langCode, langCode) || other.langCode == langCode)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.purchaseTimestampFrom, purchaseTimestampFrom) || other.purchaseTimestampFrom == purchaseTimestampFrom)&&(identical(other.purchaseTimestampTo, purchaseTimestampTo) || other.purchaseTimestampTo == purchaseTimestampTo)&&(identical(other.responsibleEmail, responsibleEmail) || other.responsibleEmail == responsibleEmail)&&(identical(other.passwordChangeTimestamp, passwordChangeTimestamp) || other.passwordChangeTimestamp == passwordChangeTimestamp)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.helpdeskUserId, helpdeskUserId) || other.helpdeskUserId == helpdeskUserId)&&(identical(other.janrainIdentifier, janrainIdentifier) || other.janrainIdentifier == janrainIdentifier)&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.profileType, profileType) || other.profileType == profileType)&&(identical(other.bFirstname, bFirstname) || other.bFirstname == bFirstname)&&(identical(other.bLastname, bLastname) || other.bLastname == bLastname)&&(identical(other.bAddress, bAddress) || other.bAddress == bAddress)&&(identical(other.bAddress2, bAddress2) || other.bAddress2 == bAddress2)&&(identical(other.bCity, bCity) || other.bCity == bCity)&&(identical(other.bCounty, bCounty) || other.bCounty == bCounty)&&(identical(other.bState, bState) || other.bState == bState)&&(identical(other.bCountry, bCountry) || other.bCountry == bCountry)&&(identical(other.bZipcode, bZipcode) || other.bZipcode == bZipcode)&&(identical(other.bPhone, bPhone) || other.bPhone == bPhone)&&(identical(other.sFirstname, sFirstname) || other.sFirstname == sFirstname)&&(identical(other.sLastname, sLastname) || other.sLastname == sLastname)&&(identical(other.sAddress, sAddress) || other.sAddress == sAddress)&&(identical(other.sAddress2, sAddress2) || other.sAddress2 == sAddress2)&&(identical(other.sCity, sCity) || other.sCity == sCity)&&(identical(other.sCounty, sCounty) || other.sCounty == sCounty)&&(identical(other.sState, sState) || other.sState == sState)&&(identical(other.sCountry, sCountry) || other.sCountry == sCountry)&&(identical(other.sZipcode, sZipcode) || other.sZipcode == sZipcode)&&(identical(other.sPhone, sPhone) || other.sPhone == sPhone)&&(identical(other.sAddressType, sAddressType) || other.sAddressType == sAddressType)&&(identical(other.profileName, profileName) || other.profileName == profileName)&&(identical(other.profileUpdateTimestamp, profileUpdateTimestamp) || other.profileUpdateTimestamp == profileUpdateTimestamp)&&const DeepCollectionEquality().equals(other.fields, fields)&&(identical(other.bCountryDescr, bCountryDescr) || other.bCountryDescr == bCountryDescr)&&(identical(other.sCountryDescr, sCountryDescr) || other.sCountryDescr == sCountryDescr)&&(identical(other.bStateDescr, bStateDescr) || other.bStateDescr == bStateDescr)&&(identical(other.sStateDescr, sStateDescr) || other.sStateDescr == sStateDescr)&&(identical(other.points, points) || other.points == points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userId,status,userType,userLogin,referer,isRoot,companyId,lastActivity,timestamp,password,salt,firstname,lastname,company,email,phone,fax,url,taxExempt,langCode,birthday,purchaseTimestampFrom,purchaseTimestampTo,responsibleEmail,passwordChangeTimestamp,apiKey,helpdeskUserId,janrainIdentifier,profileId,profileType,bFirstname,bLastname,bAddress,bAddress2,bCity,bCounty,bState,bCountry,bZipcode,bPhone,sFirstname,sLastname,sAddress,sAddress2,sCity,sCounty,sState,sCountry,sZipcode,sPhone,sAddressType,profileName,profileUpdateTimestamp,const DeepCollectionEquality().hash(fields),bCountryDescr,sCountryDescr,bStateDescr,sStateDescr,points]);

@override
String toString() {
  return 'UserDataEntity(userId: $userId, status: $status, userType: $userType, userLogin: $userLogin, referer: $referer, isRoot: $isRoot, companyId: $companyId, lastActivity: $lastActivity, timestamp: $timestamp, password: $password, salt: $salt, firstname: $firstname, lastname: $lastname, company: $company, email: $email, phone: $phone, fax: $fax, url: $url, taxExempt: $taxExempt, langCode: $langCode, birthday: $birthday, purchaseTimestampFrom: $purchaseTimestampFrom, purchaseTimestampTo: $purchaseTimestampTo, responsibleEmail: $responsibleEmail, passwordChangeTimestamp: $passwordChangeTimestamp, apiKey: $apiKey, helpdeskUserId: $helpdeskUserId, janrainIdentifier: $janrainIdentifier, profileId: $profileId, profileType: $profileType, bFirstname: $bFirstname, bLastname: $bLastname, bAddress: $bAddress, bAddress2: $bAddress2, bCity: $bCity, bCounty: $bCounty, bState: $bState, bCountry: $bCountry, bZipcode: $bZipcode, bPhone: $bPhone, sFirstname: $sFirstname, sLastname: $sLastname, sAddress: $sAddress, sAddress2: $sAddress2, sCity: $sCity, sCounty: $sCounty, sState: $sState, sCountry: $sCountry, sZipcode: $sZipcode, sPhone: $sPhone, sAddressType: $sAddressType, profileName: $profileName, profileUpdateTimestamp: $profileUpdateTimestamp, fields: $fields, bCountryDescr: $bCountryDescr, sCountryDescr: $sCountryDescr, bStateDescr: $bStateDescr, sStateDescr: $sStateDescr, points: $points)';
}


}

/// @nodoc
abstract mixin class $UserDataEntityCopyWith<$Res>  {
  factory $UserDataEntityCopyWith(UserDataEntity value, $Res Function(UserDataEntity) _then) = _$UserDataEntityCopyWithImpl;
@useResult
$Res call({
 String? userId, String? status, String? userType, String? userLogin, String? referer, String? isRoot, String? companyId, String? lastActivity, String? timestamp, String? password, String? salt, String? firstname, String? lastname, String? company, String? email, String? phone, String? fax, String? url, String? taxExempt, String? langCode, String? birthday, String? purchaseTimestampFrom, String? purchaseTimestampTo, String? responsibleEmail, String? passwordChangeTimestamp, String? apiKey, String? helpdeskUserId, String? janrainIdentifier, String? profileId, String? profileType, String? bFirstname, String? bLastname, String? bAddress, String? bAddress2, String? bCity, String? bCounty, String? bState, String? bCountry, String? bZipcode, String? bPhone, String? sFirstname, String? sLastname, String? sAddress, String? sAddress2, String? sCity, String? sCounty, String? sState, String? sCountry, String? sZipcode, String? sPhone, String? sAddressType, String? profileName, String? profileUpdateTimestamp, List<dynamic>? fields, String? bCountryDescr, String? sCountryDescr, String? bStateDescr, String? sStateDescr, int? points
});




}
/// @nodoc
class _$UserDataEntityCopyWithImpl<$Res>
    implements $UserDataEntityCopyWith<$Res> {
  _$UserDataEntityCopyWithImpl(this._self, this._then);

  final UserDataEntity _self;
  final $Res Function(UserDataEntity) _then;

/// Create a copy of UserDataEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? status = freezed,Object? userType = freezed,Object? userLogin = freezed,Object? referer = freezed,Object? isRoot = freezed,Object? companyId = freezed,Object? lastActivity = freezed,Object? timestamp = freezed,Object? password = freezed,Object? salt = freezed,Object? firstname = freezed,Object? lastname = freezed,Object? company = freezed,Object? email = freezed,Object? phone = freezed,Object? fax = freezed,Object? url = freezed,Object? taxExempt = freezed,Object? langCode = freezed,Object? birthday = freezed,Object? purchaseTimestampFrom = freezed,Object? purchaseTimestampTo = freezed,Object? responsibleEmail = freezed,Object? passwordChangeTimestamp = freezed,Object? apiKey = freezed,Object? helpdeskUserId = freezed,Object? janrainIdentifier = freezed,Object? profileId = freezed,Object? profileType = freezed,Object? bFirstname = freezed,Object? bLastname = freezed,Object? bAddress = freezed,Object? bAddress2 = freezed,Object? bCity = freezed,Object? bCounty = freezed,Object? bState = freezed,Object? bCountry = freezed,Object? bZipcode = freezed,Object? bPhone = freezed,Object? sFirstname = freezed,Object? sLastname = freezed,Object? sAddress = freezed,Object? sAddress2 = freezed,Object? sCity = freezed,Object? sCounty = freezed,Object? sState = freezed,Object? sCountry = freezed,Object? sZipcode = freezed,Object? sPhone = freezed,Object? sAddressType = freezed,Object? profileName = freezed,Object? profileUpdateTimestamp = freezed,Object? fields = freezed,Object? bCountryDescr = freezed,Object? sCountryDescr = freezed,Object? bStateDescr = freezed,Object? sStateDescr = freezed,Object? points = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String?,userLogin: freezed == userLogin ? _self.userLogin : userLogin // ignore: cast_nullable_to_non_nullable
as String?,referer: freezed == referer ? _self.referer : referer // ignore: cast_nullable_to_non_nullable
as String?,isRoot: freezed == isRoot ? _self.isRoot : isRoot // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,lastActivity: freezed == lastActivity ? _self.lastActivity : lastActivity // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,salt: freezed == salt ? _self.salt : salt // ignore: cast_nullable_to_non_nullable
as String?,firstname: freezed == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String?,lastname: freezed == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,fax: freezed == fax ? _self.fax : fax // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,taxExempt: freezed == taxExempt ? _self.taxExempt : taxExempt // ignore: cast_nullable_to_non_nullable
as String?,langCode: freezed == langCode ? _self.langCode : langCode // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String?,purchaseTimestampFrom: freezed == purchaseTimestampFrom ? _self.purchaseTimestampFrom : purchaseTimestampFrom // ignore: cast_nullable_to_non_nullable
as String?,purchaseTimestampTo: freezed == purchaseTimestampTo ? _self.purchaseTimestampTo : purchaseTimestampTo // ignore: cast_nullable_to_non_nullable
as String?,responsibleEmail: freezed == responsibleEmail ? _self.responsibleEmail : responsibleEmail // ignore: cast_nullable_to_non_nullable
as String?,passwordChangeTimestamp: freezed == passwordChangeTimestamp ? _self.passwordChangeTimestamp : passwordChangeTimestamp // ignore: cast_nullable_to_non_nullable
as String?,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,helpdeskUserId: freezed == helpdeskUserId ? _self.helpdeskUserId : helpdeskUserId // ignore: cast_nullable_to_non_nullable
as String?,janrainIdentifier: freezed == janrainIdentifier ? _self.janrainIdentifier : janrainIdentifier // ignore: cast_nullable_to_non_nullable
as String?,profileId: freezed == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String?,profileType: freezed == profileType ? _self.profileType : profileType // ignore: cast_nullable_to_non_nullable
as String?,bFirstname: freezed == bFirstname ? _self.bFirstname : bFirstname // ignore: cast_nullable_to_non_nullable
as String?,bLastname: freezed == bLastname ? _self.bLastname : bLastname // ignore: cast_nullable_to_non_nullable
as String?,bAddress: freezed == bAddress ? _self.bAddress : bAddress // ignore: cast_nullable_to_non_nullable
as String?,bAddress2: freezed == bAddress2 ? _self.bAddress2 : bAddress2 // ignore: cast_nullable_to_non_nullable
as String?,bCity: freezed == bCity ? _self.bCity : bCity // ignore: cast_nullable_to_non_nullable
as String?,bCounty: freezed == bCounty ? _self.bCounty : bCounty // ignore: cast_nullable_to_non_nullable
as String?,bState: freezed == bState ? _self.bState : bState // ignore: cast_nullable_to_non_nullable
as String?,bCountry: freezed == bCountry ? _self.bCountry : bCountry // ignore: cast_nullable_to_non_nullable
as String?,bZipcode: freezed == bZipcode ? _self.bZipcode : bZipcode // ignore: cast_nullable_to_non_nullable
as String?,bPhone: freezed == bPhone ? _self.bPhone : bPhone // ignore: cast_nullable_to_non_nullable
as String?,sFirstname: freezed == sFirstname ? _self.sFirstname : sFirstname // ignore: cast_nullable_to_non_nullable
as String?,sLastname: freezed == sLastname ? _self.sLastname : sLastname // ignore: cast_nullable_to_non_nullable
as String?,sAddress: freezed == sAddress ? _self.sAddress : sAddress // ignore: cast_nullable_to_non_nullable
as String?,sAddress2: freezed == sAddress2 ? _self.sAddress2 : sAddress2 // ignore: cast_nullable_to_non_nullable
as String?,sCity: freezed == sCity ? _self.sCity : sCity // ignore: cast_nullable_to_non_nullable
as String?,sCounty: freezed == sCounty ? _self.sCounty : sCounty // ignore: cast_nullable_to_non_nullable
as String?,sState: freezed == sState ? _self.sState : sState // ignore: cast_nullable_to_non_nullable
as String?,sCountry: freezed == sCountry ? _self.sCountry : sCountry // ignore: cast_nullable_to_non_nullable
as String?,sZipcode: freezed == sZipcode ? _self.sZipcode : sZipcode // ignore: cast_nullable_to_non_nullable
as String?,sPhone: freezed == sPhone ? _self.sPhone : sPhone // ignore: cast_nullable_to_non_nullable
as String?,sAddressType: freezed == sAddressType ? _self.sAddressType : sAddressType // ignore: cast_nullable_to_non_nullable
as String?,profileName: freezed == profileName ? _self.profileName : profileName // ignore: cast_nullable_to_non_nullable
as String?,profileUpdateTimestamp: freezed == profileUpdateTimestamp ? _self.profileUpdateTimestamp : profileUpdateTimestamp // ignore: cast_nullable_to_non_nullable
as String?,fields: freezed == fields ? _self.fields : fields // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,bCountryDescr: freezed == bCountryDescr ? _self.bCountryDescr : bCountryDescr // ignore: cast_nullable_to_non_nullable
as String?,sCountryDescr: freezed == sCountryDescr ? _self.sCountryDescr : sCountryDescr // ignore: cast_nullable_to_non_nullable
as String?,bStateDescr: freezed == bStateDescr ? _self.bStateDescr : bStateDescr // ignore: cast_nullable_to_non_nullable
as String?,sStateDescr: freezed == sStateDescr ? _self.sStateDescr : sStateDescr // ignore: cast_nullable_to_non_nullable
as String?,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDataEntity].
extension UserDataEntityPatterns on UserDataEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDataEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDataEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDataEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserDataEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDataEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserDataEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? userId,  String? status,  String? userType,  String? userLogin,  String? referer,  String? isRoot,  String? companyId,  String? lastActivity,  String? timestamp,  String? password,  String? salt,  String? firstname,  String? lastname,  String? company,  String? email,  String? phone,  String? fax,  String? url,  String? taxExempt,  String? langCode,  String? birthday,  String? purchaseTimestampFrom,  String? purchaseTimestampTo,  String? responsibleEmail,  String? passwordChangeTimestamp,  String? apiKey,  String? helpdeskUserId,  String? janrainIdentifier,  String? profileId,  String? profileType,  String? bFirstname,  String? bLastname,  String? bAddress,  String? bAddress2,  String? bCity,  String? bCounty,  String? bState,  String? bCountry,  String? bZipcode,  String? bPhone,  String? sFirstname,  String? sLastname,  String? sAddress,  String? sAddress2,  String? sCity,  String? sCounty,  String? sState,  String? sCountry,  String? sZipcode,  String? sPhone,  String? sAddressType,  String? profileName,  String? profileUpdateTimestamp,  List<dynamic>? fields,  String? bCountryDescr,  String? sCountryDescr,  String? bStateDescr,  String? sStateDescr,  int? points)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDataEntity() when $default != null:
return $default(_that.userId,_that.status,_that.userType,_that.userLogin,_that.referer,_that.isRoot,_that.companyId,_that.lastActivity,_that.timestamp,_that.password,_that.salt,_that.firstname,_that.lastname,_that.company,_that.email,_that.phone,_that.fax,_that.url,_that.taxExempt,_that.langCode,_that.birthday,_that.purchaseTimestampFrom,_that.purchaseTimestampTo,_that.responsibleEmail,_that.passwordChangeTimestamp,_that.apiKey,_that.helpdeskUserId,_that.janrainIdentifier,_that.profileId,_that.profileType,_that.bFirstname,_that.bLastname,_that.bAddress,_that.bAddress2,_that.bCity,_that.bCounty,_that.bState,_that.bCountry,_that.bZipcode,_that.bPhone,_that.sFirstname,_that.sLastname,_that.sAddress,_that.sAddress2,_that.sCity,_that.sCounty,_that.sState,_that.sCountry,_that.sZipcode,_that.sPhone,_that.sAddressType,_that.profileName,_that.profileUpdateTimestamp,_that.fields,_that.bCountryDescr,_that.sCountryDescr,_that.bStateDescr,_that.sStateDescr,_that.points);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? userId,  String? status,  String? userType,  String? userLogin,  String? referer,  String? isRoot,  String? companyId,  String? lastActivity,  String? timestamp,  String? password,  String? salt,  String? firstname,  String? lastname,  String? company,  String? email,  String? phone,  String? fax,  String? url,  String? taxExempt,  String? langCode,  String? birthday,  String? purchaseTimestampFrom,  String? purchaseTimestampTo,  String? responsibleEmail,  String? passwordChangeTimestamp,  String? apiKey,  String? helpdeskUserId,  String? janrainIdentifier,  String? profileId,  String? profileType,  String? bFirstname,  String? bLastname,  String? bAddress,  String? bAddress2,  String? bCity,  String? bCounty,  String? bState,  String? bCountry,  String? bZipcode,  String? bPhone,  String? sFirstname,  String? sLastname,  String? sAddress,  String? sAddress2,  String? sCity,  String? sCounty,  String? sState,  String? sCountry,  String? sZipcode,  String? sPhone,  String? sAddressType,  String? profileName,  String? profileUpdateTimestamp,  List<dynamic>? fields,  String? bCountryDescr,  String? sCountryDescr,  String? bStateDescr,  String? sStateDescr,  int? points)  $default,) {final _that = this;
switch (_that) {
case _UserDataEntity():
return $default(_that.userId,_that.status,_that.userType,_that.userLogin,_that.referer,_that.isRoot,_that.companyId,_that.lastActivity,_that.timestamp,_that.password,_that.salt,_that.firstname,_that.lastname,_that.company,_that.email,_that.phone,_that.fax,_that.url,_that.taxExempt,_that.langCode,_that.birthday,_that.purchaseTimestampFrom,_that.purchaseTimestampTo,_that.responsibleEmail,_that.passwordChangeTimestamp,_that.apiKey,_that.helpdeskUserId,_that.janrainIdentifier,_that.profileId,_that.profileType,_that.bFirstname,_that.bLastname,_that.bAddress,_that.bAddress2,_that.bCity,_that.bCounty,_that.bState,_that.bCountry,_that.bZipcode,_that.bPhone,_that.sFirstname,_that.sLastname,_that.sAddress,_that.sAddress2,_that.sCity,_that.sCounty,_that.sState,_that.sCountry,_that.sZipcode,_that.sPhone,_that.sAddressType,_that.profileName,_that.profileUpdateTimestamp,_that.fields,_that.bCountryDescr,_that.sCountryDescr,_that.bStateDescr,_that.sStateDescr,_that.points);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? userId,  String? status,  String? userType,  String? userLogin,  String? referer,  String? isRoot,  String? companyId,  String? lastActivity,  String? timestamp,  String? password,  String? salt,  String? firstname,  String? lastname,  String? company,  String? email,  String? phone,  String? fax,  String? url,  String? taxExempt,  String? langCode,  String? birthday,  String? purchaseTimestampFrom,  String? purchaseTimestampTo,  String? responsibleEmail,  String? passwordChangeTimestamp,  String? apiKey,  String? helpdeskUserId,  String? janrainIdentifier,  String? profileId,  String? profileType,  String? bFirstname,  String? bLastname,  String? bAddress,  String? bAddress2,  String? bCity,  String? bCounty,  String? bState,  String? bCountry,  String? bZipcode,  String? bPhone,  String? sFirstname,  String? sLastname,  String? sAddress,  String? sAddress2,  String? sCity,  String? sCounty,  String? sState,  String? sCountry,  String? sZipcode,  String? sPhone,  String? sAddressType,  String? profileName,  String? profileUpdateTimestamp,  List<dynamic>? fields,  String? bCountryDescr,  String? sCountryDescr,  String? bStateDescr,  String? sStateDescr,  int? points)?  $default,) {final _that = this;
switch (_that) {
case _UserDataEntity() when $default != null:
return $default(_that.userId,_that.status,_that.userType,_that.userLogin,_that.referer,_that.isRoot,_that.companyId,_that.lastActivity,_that.timestamp,_that.password,_that.salt,_that.firstname,_that.lastname,_that.company,_that.email,_that.phone,_that.fax,_that.url,_that.taxExempt,_that.langCode,_that.birthday,_that.purchaseTimestampFrom,_that.purchaseTimestampTo,_that.responsibleEmail,_that.passwordChangeTimestamp,_that.apiKey,_that.helpdeskUserId,_that.janrainIdentifier,_that.profileId,_that.profileType,_that.bFirstname,_that.bLastname,_that.bAddress,_that.bAddress2,_that.bCity,_that.bCounty,_that.bState,_that.bCountry,_that.bZipcode,_that.bPhone,_that.sFirstname,_that.sLastname,_that.sAddress,_that.sAddress2,_that.sCity,_that.sCounty,_that.sState,_that.sCountry,_that.sZipcode,_that.sPhone,_that.sAddressType,_that.profileName,_that.profileUpdateTimestamp,_that.fields,_that.bCountryDescr,_that.sCountryDescr,_that.bStateDescr,_that.sStateDescr,_that.points);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _UserDataEntity implements UserDataEntity {
   _UserDataEntity({this.userId, this.status, this.userType, this.userLogin, this.referer, this.isRoot, this.companyId, this.lastActivity, this.timestamp, this.password, this.salt, this.firstname, this.lastname, this.company, this.email, this.phone, this.fax, this.url, this.taxExempt, this.langCode, this.birthday, this.purchaseTimestampFrom, this.purchaseTimestampTo, this.responsibleEmail, this.passwordChangeTimestamp, this.apiKey, this.helpdeskUserId, this.janrainIdentifier, this.profileId, this.profileType, this.bFirstname, this.bLastname, this.bAddress, this.bAddress2, this.bCity, this.bCounty, this.bState, this.bCountry, this.bZipcode, this.bPhone, this.sFirstname, this.sLastname, this.sAddress, this.sAddress2, this.sCity, this.sCounty, this.sState, this.sCountry, this.sZipcode, this.sPhone, this.sAddressType, this.profileName, this.profileUpdateTimestamp, final  List<dynamic>? fields, this.bCountryDescr, this.sCountryDescr, this.bStateDescr, this.sStateDescr, this.points}): _fields = fields;
  factory _UserDataEntity.fromJson(Map<String, dynamic> json) => _$UserDataEntityFromJson(json);

@override final  String? userId;
@override final  String? status;
@override final  String? userType;
@override final  String? userLogin;
@override final  String? referer;
@override final  String? isRoot;
@override final  String? companyId;
@override final  String? lastActivity;
@override final  String? timestamp;
@override final  String? password;
@override final  String? salt;
@override final  String? firstname;
@override final  String? lastname;
@override final  String? company;
@override final  String? email;
@override final  String? phone;
@override final  String? fax;
@override final  String? url;
@override final  String? taxExempt;
@override final  String? langCode;
@override final  String? birthday;
@override final  String? purchaseTimestampFrom;
@override final  String? purchaseTimestampTo;
@override final  String? responsibleEmail;
@override final  String? passwordChangeTimestamp;
@override final  String? apiKey;
@override final  String? helpdeskUserId;
@override final  String? janrainIdentifier;
@override final  String? profileId;
@override final  String? profileType;
@override final  String? bFirstname;
@override final  String? bLastname;
@override final  String? bAddress;
@override final  String? bAddress2;
@override final  String? bCity;
@override final  String? bCounty;
@override final  String? bState;
@override final  String? bCountry;
@override final  String? bZipcode;
@override final  String? bPhone;
@override final  String? sFirstname;
@override final  String? sLastname;
@override final  String? sAddress;
@override final  String? sAddress2;
@override final  String? sCity;
@override final  String? sCounty;
@override final  String? sState;
@override final  String? sCountry;
@override final  String? sZipcode;
@override final  String? sPhone;
@override final  String? sAddressType;
@override final  String? profileName;
@override final  String? profileUpdateTimestamp;
 final  List<dynamic>? _fields;
@override List<dynamic>? get fields {
  final value = _fields;
  if (value == null) return null;
  if (_fields is EqualUnmodifiableListView) return _fields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? bCountryDescr;
@override final  String? sCountryDescr;
@override final  String? bStateDescr;
@override final  String? sStateDescr;
@override final  int? points;

/// Create a copy of UserDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataEntityCopyWith<_UserDataEntity> get copyWith => __$UserDataEntityCopyWithImpl<_UserDataEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDataEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.status, status) || other.status == status)&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.userLogin, userLogin) || other.userLogin == userLogin)&&(identical(other.referer, referer) || other.referer == referer)&&(identical(other.isRoot, isRoot) || other.isRoot == isRoot)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.lastActivity, lastActivity) || other.lastActivity == lastActivity)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.password, password) || other.password == password)&&(identical(other.salt, salt) || other.salt == salt)&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.company, company) || other.company == company)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.fax, fax) || other.fax == fax)&&(identical(other.url, url) || other.url == url)&&(identical(other.taxExempt, taxExempt) || other.taxExempt == taxExempt)&&(identical(other.langCode, langCode) || other.langCode == langCode)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.purchaseTimestampFrom, purchaseTimestampFrom) || other.purchaseTimestampFrom == purchaseTimestampFrom)&&(identical(other.purchaseTimestampTo, purchaseTimestampTo) || other.purchaseTimestampTo == purchaseTimestampTo)&&(identical(other.responsibleEmail, responsibleEmail) || other.responsibleEmail == responsibleEmail)&&(identical(other.passwordChangeTimestamp, passwordChangeTimestamp) || other.passwordChangeTimestamp == passwordChangeTimestamp)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.helpdeskUserId, helpdeskUserId) || other.helpdeskUserId == helpdeskUserId)&&(identical(other.janrainIdentifier, janrainIdentifier) || other.janrainIdentifier == janrainIdentifier)&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.profileType, profileType) || other.profileType == profileType)&&(identical(other.bFirstname, bFirstname) || other.bFirstname == bFirstname)&&(identical(other.bLastname, bLastname) || other.bLastname == bLastname)&&(identical(other.bAddress, bAddress) || other.bAddress == bAddress)&&(identical(other.bAddress2, bAddress2) || other.bAddress2 == bAddress2)&&(identical(other.bCity, bCity) || other.bCity == bCity)&&(identical(other.bCounty, bCounty) || other.bCounty == bCounty)&&(identical(other.bState, bState) || other.bState == bState)&&(identical(other.bCountry, bCountry) || other.bCountry == bCountry)&&(identical(other.bZipcode, bZipcode) || other.bZipcode == bZipcode)&&(identical(other.bPhone, bPhone) || other.bPhone == bPhone)&&(identical(other.sFirstname, sFirstname) || other.sFirstname == sFirstname)&&(identical(other.sLastname, sLastname) || other.sLastname == sLastname)&&(identical(other.sAddress, sAddress) || other.sAddress == sAddress)&&(identical(other.sAddress2, sAddress2) || other.sAddress2 == sAddress2)&&(identical(other.sCity, sCity) || other.sCity == sCity)&&(identical(other.sCounty, sCounty) || other.sCounty == sCounty)&&(identical(other.sState, sState) || other.sState == sState)&&(identical(other.sCountry, sCountry) || other.sCountry == sCountry)&&(identical(other.sZipcode, sZipcode) || other.sZipcode == sZipcode)&&(identical(other.sPhone, sPhone) || other.sPhone == sPhone)&&(identical(other.sAddressType, sAddressType) || other.sAddressType == sAddressType)&&(identical(other.profileName, profileName) || other.profileName == profileName)&&(identical(other.profileUpdateTimestamp, profileUpdateTimestamp) || other.profileUpdateTimestamp == profileUpdateTimestamp)&&const DeepCollectionEquality().equals(other._fields, _fields)&&(identical(other.bCountryDescr, bCountryDescr) || other.bCountryDescr == bCountryDescr)&&(identical(other.sCountryDescr, sCountryDescr) || other.sCountryDescr == sCountryDescr)&&(identical(other.bStateDescr, bStateDescr) || other.bStateDescr == bStateDescr)&&(identical(other.sStateDescr, sStateDescr) || other.sStateDescr == sStateDescr)&&(identical(other.points, points) || other.points == points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userId,status,userType,userLogin,referer,isRoot,companyId,lastActivity,timestamp,password,salt,firstname,lastname,company,email,phone,fax,url,taxExempt,langCode,birthday,purchaseTimestampFrom,purchaseTimestampTo,responsibleEmail,passwordChangeTimestamp,apiKey,helpdeskUserId,janrainIdentifier,profileId,profileType,bFirstname,bLastname,bAddress,bAddress2,bCity,bCounty,bState,bCountry,bZipcode,bPhone,sFirstname,sLastname,sAddress,sAddress2,sCity,sCounty,sState,sCountry,sZipcode,sPhone,sAddressType,profileName,profileUpdateTimestamp,const DeepCollectionEquality().hash(_fields),bCountryDescr,sCountryDescr,bStateDescr,sStateDescr,points]);

@override
String toString() {
  return 'UserDataEntity(userId: $userId, status: $status, userType: $userType, userLogin: $userLogin, referer: $referer, isRoot: $isRoot, companyId: $companyId, lastActivity: $lastActivity, timestamp: $timestamp, password: $password, salt: $salt, firstname: $firstname, lastname: $lastname, company: $company, email: $email, phone: $phone, fax: $fax, url: $url, taxExempt: $taxExempt, langCode: $langCode, birthday: $birthday, purchaseTimestampFrom: $purchaseTimestampFrom, purchaseTimestampTo: $purchaseTimestampTo, responsibleEmail: $responsibleEmail, passwordChangeTimestamp: $passwordChangeTimestamp, apiKey: $apiKey, helpdeskUserId: $helpdeskUserId, janrainIdentifier: $janrainIdentifier, profileId: $profileId, profileType: $profileType, bFirstname: $bFirstname, bLastname: $bLastname, bAddress: $bAddress, bAddress2: $bAddress2, bCity: $bCity, bCounty: $bCounty, bState: $bState, bCountry: $bCountry, bZipcode: $bZipcode, bPhone: $bPhone, sFirstname: $sFirstname, sLastname: $sLastname, sAddress: $sAddress, sAddress2: $sAddress2, sCity: $sCity, sCounty: $sCounty, sState: $sState, sCountry: $sCountry, sZipcode: $sZipcode, sPhone: $sPhone, sAddressType: $sAddressType, profileName: $profileName, profileUpdateTimestamp: $profileUpdateTimestamp, fields: $fields, bCountryDescr: $bCountryDescr, sCountryDescr: $sCountryDescr, bStateDescr: $bStateDescr, sStateDescr: $sStateDescr, points: $points)';
}


}

/// @nodoc
abstract mixin class _$UserDataEntityCopyWith<$Res> implements $UserDataEntityCopyWith<$Res> {
  factory _$UserDataEntityCopyWith(_UserDataEntity value, $Res Function(_UserDataEntity) _then) = __$UserDataEntityCopyWithImpl;
@override @useResult
$Res call({
 String? userId, String? status, String? userType, String? userLogin, String? referer, String? isRoot, String? companyId, String? lastActivity, String? timestamp, String? password, String? salt, String? firstname, String? lastname, String? company, String? email, String? phone, String? fax, String? url, String? taxExempt, String? langCode, String? birthday, String? purchaseTimestampFrom, String? purchaseTimestampTo, String? responsibleEmail, String? passwordChangeTimestamp, String? apiKey, String? helpdeskUserId, String? janrainIdentifier, String? profileId, String? profileType, String? bFirstname, String? bLastname, String? bAddress, String? bAddress2, String? bCity, String? bCounty, String? bState, String? bCountry, String? bZipcode, String? bPhone, String? sFirstname, String? sLastname, String? sAddress, String? sAddress2, String? sCity, String? sCounty, String? sState, String? sCountry, String? sZipcode, String? sPhone, String? sAddressType, String? profileName, String? profileUpdateTimestamp, List<dynamic>? fields, String? bCountryDescr, String? sCountryDescr, String? bStateDescr, String? sStateDescr, int? points
});




}
/// @nodoc
class __$UserDataEntityCopyWithImpl<$Res>
    implements _$UserDataEntityCopyWith<$Res> {
  __$UserDataEntityCopyWithImpl(this._self, this._then);

  final _UserDataEntity _self;
  final $Res Function(_UserDataEntity) _then;

/// Create a copy of UserDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? status = freezed,Object? userType = freezed,Object? userLogin = freezed,Object? referer = freezed,Object? isRoot = freezed,Object? companyId = freezed,Object? lastActivity = freezed,Object? timestamp = freezed,Object? password = freezed,Object? salt = freezed,Object? firstname = freezed,Object? lastname = freezed,Object? company = freezed,Object? email = freezed,Object? phone = freezed,Object? fax = freezed,Object? url = freezed,Object? taxExempt = freezed,Object? langCode = freezed,Object? birthday = freezed,Object? purchaseTimestampFrom = freezed,Object? purchaseTimestampTo = freezed,Object? responsibleEmail = freezed,Object? passwordChangeTimestamp = freezed,Object? apiKey = freezed,Object? helpdeskUserId = freezed,Object? janrainIdentifier = freezed,Object? profileId = freezed,Object? profileType = freezed,Object? bFirstname = freezed,Object? bLastname = freezed,Object? bAddress = freezed,Object? bAddress2 = freezed,Object? bCity = freezed,Object? bCounty = freezed,Object? bState = freezed,Object? bCountry = freezed,Object? bZipcode = freezed,Object? bPhone = freezed,Object? sFirstname = freezed,Object? sLastname = freezed,Object? sAddress = freezed,Object? sAddress2 = freezed,Object? sCity = freezed,Object? sCounty = freezed,Object? sState = freezed,Object? sCountry = freezed,Object? sZipcode = freezed,Object? sPhone = freezed,Object? sAddressType = freezed,Object? profileName = freezed,Object? profileUpdateTimestamp = freezed,Object? fields = freezed,Object? bCountryDescr = freezed,Object? sCountryDescr = freezed,Object? bStateDescr = freezed,Object? sStateDescr = freezed,Object? points = freezed,}) {
  return _then(_UserDataEntity(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String?,userLogin: freezed == userLogin ? _self.userLogin : userLogin // ignore: cast_nullable_to_non_nullable
as String?,referer: freezed == referer ? _self.referer : referer // ignore: cast_nullable_to_non_nullable
as String?,isRoot: freezed == isRoot ? _self.isRoot : isRoot // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,lastActivity: freezed == lastActivity ? _self.lastActivity : lastActivity // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,salt: freezed == salt ? _self.salt : salt // ignore: cast_nullable_to_non_nullable
as String?,firstname: freezed == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String?,lastname: freezed == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,fax: freezed == fax ? _self.fax : fax // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,taxExempt: freezed == taxExempt ? _self.taxExempt : taxExempt // ignore: cast_nullable_to_non_nullable
as String?,langCode: freezed == langCode ? _self.langCode : langCode // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String?,purchaseTimestampFrom: freezed == purchaseTimestampFrom ? _self.purchaseTimestampFrom : purchaseTimestampFrom // ignore: cast_nullable_to_non_nullable
as String?,purchaseTimestampTo: freezed == purchaseTimestampTo ? _self.purchaseTimestampTo : purchaseTimestampTo // ignore: cast_nullable_to_non_nullable
as String?,responsibleEmail: freezed == responsibleEmail ? _self.responsibleEmail : responsibleEmail // ignore: cast_nullable_to_non_nullable
as String?,passwordChangeTimestamp: freezed == passwordChangeTimestamp ? _self.passwordChangeTimestamp : passwordChangeTimestamp // ignore: cast_nullable_to_non_nullable
as String?,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,helpdeskUserId: freezed == helpdeskUserId ? _self.helpdeskUserId : helpdeskUserId // ignore: cast_nullable_to_non_nullable
as String?,janrainIdentifier: freezed == janrainIdentifier ? _self.janrainIdentifier : janrainIdentifier // ignore: cast_nullable_to_non_nullable
as String?,profileId: freezed == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String?,profileType: freezed == profileType ? _self.profileType : profileType // ignore: cast_nullable_to_non_nullable
as String?,bFirstname: freezed == bFirstname ? _self.bFirstname : bFirstname // ignore: cast_nullable_to_non_nullable
as String?,bLastname: freezed == bLastname ? _self.bLastname : bLastname // ignore: cast_nullable_to_non_nullable
as String?,bAddress: freezed == bAddress ? _self.bAddress : bAddress // ignore: cast_nullable_to_non_nullable
as String?,bAddress2: freezed == bAddress2 ? _self.bAddress2 : bAddress2 // ignore: cast_nullable_to_non_nullable
as String?,bCity: freezed == bCity ? _self.bCity : bCity // ignore: cast_nullable_to_non_nullable
as String?,bCounty: freezed == bCounty ? _self.bCounty : bCounty // ignore: cast_nullable_to_non_nullable
as String?,bState: freezed == bState ? _self.bState : bState // ignore: cast_nullable_to_non_nullable
as String?,bCountry: freezed == bCountry ? _self.bCountry : bCountry // ignore: cast_nullable_to_non_nullable
as String?,bZipcode: freezed == bZipcode ? _self.bZipcode : bZipcode // ignore: cast_nullable_to_non_nullable
as String?,bPhone: freezed == bPhone ? _self.bPhone : bPhone // ignore: cast_nullable_to_non_nullable
as String?,sFirstname: freezed == sFirstname ? _self.sFirstname : sFirstname // ignore: cast_nullable_to_non_nullable
as String?,sLastname: freezed == sLastname ? _self.sLastname : sLastname // ignore: cast_nullable_to_non_nullable
as String?,sAddress: freezed == sAddress ? _self.sAddress : sAddress // ignore: cast_nullable_to_non_nullable
as String?,sAddress2: freezed == sAddress2 ? _self.sAddress2 : sAddress2 // ignore: cast_nullable_to_non_nullable
as String?,sCity: freezed == sCity ? _self.sCity : sCity // ignore: cast_nullable_to_non_nullable
as String?,sCounty: freezed == sCounty ? _self.sCounty : sCounty // ignore: cast_nullable_to_non_nullable
as String?,sState: freezed == sState ? _self.sState : sState // ignore: cast_nullable_to_non_nullable
as String?,sCountry: freezed == sCountry ? _self.sCountry : sCountry // ignore: cast_nullable_to_non_nullable
as String?,sZipcode: freezed == sZipcode ? _self.sZipcode : sZipcode // ignore: cast_nullable_to_non_nullable
as String?,sPhone: freezed == sPhone ? _self.sPhone : sPhone // ignore: cast_nullable_to_non_nullable
as String?,sAddressType: freezed == sAddressType ? _self.sAddressType : sAddressType // ignore: cast_nullable_to_non_nullable
as String?,profileName: freezed == profileName ? _self.profileName : profileName // ignore: cast_nullable_to_non_nullable
as String?,profileUpdateTimestamp: freezed == profileUpdateTimestamp ? _self.profileUpdateTimestamp : profileUpdateTimestamp // ignore: cast_nullable_to_non_nullable
as String?,fields: freezed == fields ? _self._fields : fields // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,bCountryDescr: freezed == bCountryDescr ? _self.bCountryDescr : bCountryDescr // ignore: cast_nullable_to_non_nullable
as String?,sCountryDescr: freezed == sCountryDescr ? _self.sCountryDescr : sCountryDescr // ignore: cast_nullable_to_non_nullable
as String?,bStateDescr: freezed == bStateDescr ? _self.bStateDescr : bStateDescr // ignore: cast_nullable_to_non_nullable
as String?,sStateDescr: freezed == sStateDescr ? _self.sStateDescr : sStateDescr // ignore: cast_nullable_to_non_nullable
as String?,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
