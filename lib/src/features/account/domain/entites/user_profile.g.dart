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
      billingAddress: json['b_address'] as String?,
      shippingAddress: json['s_address'] as String?,
      bllingCity: json['b_city'] as String?,
      shippingCity: json['s_city'] as String?,
      billingStrete: json['b_state'] as String?,
      shippingStrete: json['s_state'] as String?,
      billingCountry: json['b_county'] as String?,
      shippingCountry: json['s_county'] as String?,
      billingBuildingNumber: json['b_country'] as String?,
      shippingBuildingNumber: json['s_country'] as String?,
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
      'b_address': instance.billingAddress,
      's_address': instance.shippingAddress,
      'b_city': instance.bllingCity,
      's_city': instance.shippingCity,
      'b_state': instance.billingStrete,
      's_state': instance.shippingStrete,
      'b_county': instance.billingCountry,
      's_county': instance.shippingCountry,
      'b_country': instance.billingBuildingNumber,
      's_country': instance.shippingBuildingNumber,
      'profile_name': instance.profileName,
      'points': instance.points,
    };
