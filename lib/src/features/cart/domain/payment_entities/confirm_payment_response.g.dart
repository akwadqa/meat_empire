// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfirmPaymentResponseImpl _$$ConfirmPaymentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmPaymentResponseImpl(
      orderId: (json['order_id'] as num?)?.toInt(),
      childOrderIds: json['child_order_ids'],
      paymentParams: json['payment_params'] as List<dynamic>?,
      redirectPayment: json['redirect_payment'] as bool?,
      redirectUrl: json['redirect_url'] as String?,
      successUrl: json['success_url'] as String?,
      failUrl: json['fail_url'] as String?,
      message: json['message'] as String?,
      totalProducts: json['total_products'],
      success: json['success'] as bool?,
      action: json['action'] as String?,
    );
