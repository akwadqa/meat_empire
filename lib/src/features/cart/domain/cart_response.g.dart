// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartResponse _$CartResponseFromJson(Map<String, dynamic> json) =>
    _CartResponse(
      allowMultipleProfiles: json['allow_multiple_profiles'] as bool?,
      userProfiles: (json['user_profiles'] as List<dynamic>?)
          ?.map((e) => UserProfile.fromJson(e as Map<String, dynamic>))
          .toList(),
      cart: json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>),
      totalProducts: json['total_products'],
      message: json['message'] as String?,
      success: json['success'] as bool?,
    );
