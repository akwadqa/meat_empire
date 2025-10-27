// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentResponseImpl _$$PaymentResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentResponseImpl(
  allowMultipleProfiles: json['allow_multiple_profiles'] as bool?,
  allowToApplyWallet: json['allow_to_apply_wallet'] as bool?,
  paymentInfo: PaymentInfoEntity.fromJson(
    json['payment_info'] as Map<String, dynamic>,
  ),
  paymentMethods: (json['payment_methods'] as List<dynamic>)
      .map((e) => PaymentInfoEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  userProfiles: (json['user_profiles'] as List<dynamic>?)
      ?.map((e) => UserProfile.fromJson(e as Map<String, dynamic>))
      .toList(),
  cart: json['cart'] == null
      ? null
      : Cart.fromJson(json['cart'] as Map<String, dynamic>),
  totalProducts: json['total_products'] as String?,
  message: json['message'] as String,
  success: json['success'] as bool,
);
