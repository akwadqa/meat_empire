// To parse this JSON data, do
//
//     final confirmPaymentResponse = confirmPaymentResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_payment_response.freezed.dart';
part 'confirm_payment_response.g.dart';

@freezed
class ConfirmPaymentResponse with _$ConfirmPaymentResponse {
  const factory ConfirmPaymentResponse({
    int? orderId,
    dynamic childOrderIds,
    List<dynamic>? paymentParams,
    bool? redirectPayment,
    String? redirectUrl,
    String? successUrl,
    String? failUrl,
    String? message,
    dynamic totalProducts,
    bool? success,
    String? action,
  }) = _ConfirmPaymentResponse;

  factory ConfirmPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPaymentResponseFromJson(json);
}
