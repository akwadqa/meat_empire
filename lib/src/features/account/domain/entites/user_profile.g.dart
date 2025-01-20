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
      bllingCity: json['b_state'] as String?,
      shippingCity: json['s_state'] as String?,
      billingStrete: json['b_address'] as String?,
      shippingStrete: json['s_address'] as String?,
      billingCountry: json['b_zipcode'] as String?,
      shippingCountry: json['s_zipcode'] as String?,
      defaultBillingCountry: json['b_country'] as String?,
      defaultShippingCountry: json['s_country'] as String?,
      billingBuildingNumber: json['b_address_2'] as String?,
      shippingBuildingNumber: json['s_address_2'] as String?,
      shippingBuildingType: json['s_address_type'] as String?,
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
      'b_state': instance.bllingCity,
      's_state': instance.shippingCity,
      'b_address': instance.billingStrete,
      's_address': instance.shippingStrete,
      'b_zipcode': instance.billingCountry,
      's_zipcode': instance.shippingCountry,
      'b_country': instance.defaultBillingCountry,
      's_country': instance.defaultShippingCountry,
      'b_address_2': instance.billingBuildingNumber,
      's_address_2': instance.shippingBuildingNumber,
      's_address_type': instance.shippingBuildingType,
      'profile_name': instance.profileName,
      'points': instance.points,
    };
