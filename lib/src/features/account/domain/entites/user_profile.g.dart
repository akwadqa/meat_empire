// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      userId: json['user_id'] as String,
      status: json['status'] as String,
      userType: json['user_type'] as String,
      userLogin: json['user_login'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      bFirstname: json['b_firstname'] as String?,
      bLastname: json['b_lastname'] as String?,
      billingAddress: json['b_address'] as String?,
      shippingAddress: json['s_address'] as String?,
      bCity: json['b_city'] as String?,
      bState: json['b_state'] as String?,
      bCountry: json['b_country'] as String?,
      bPhone: json['b_phone'] as String?,
      profileName: json['profile_name'] as String?,
      points: (json['points'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'status': instance.status,
      'user_type': instance.userType,
      'user_login': instance.userLogin,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'b_firstname': instance.bFirstname,
      'b_lastname': instance.bLastname,
      'b_address': instance.billingAddress,
      's_address': instance.shippingAddress,
      'b_city': instance.bCity,
      'b_state': instance.bState,
      'b_country': instance.bCountry,
      'b_phone': instance.bPhone,
      'profile_name': instance.profileName,
      'points': instance.points,
    };
