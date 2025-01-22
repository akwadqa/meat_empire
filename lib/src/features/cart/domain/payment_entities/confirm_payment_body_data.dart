// To parse this JSON data, do
//
//     final confirmPaymentBodyData = confirmPaymentBodyDataFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'confirm_payment_body_data.freezed.dart';
part 'confirm_payment_body_data.g.dart';

@Freezed(toJson: true, fromJson: true, map: FreezedMapOptions())
class ConfirmPaymentBodyData with _$ConfirmPaymentBodyData {
  @JsonSerializable(explicitToJson: true)
  const factory ConfirmPaymentBodyData({
    required int userId,
    required int selectedPaymentMethod,
    required String ecTimeSlot,
  }) = _ConfirmPaymentBodyData;

  factory ConfirmPaymentBodyData.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPaymentBodyDataFromJson(json);
}
