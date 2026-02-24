// To parse this JSON data, do
//
//     final confirmPaymentBodyData = confirmPaymentBodyDataFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_payment_body_data.freezed.dart';
part 'confirm_payment_body_data.g.dart';

@Freezed(toJson: true, fromJson: true, map: FreezedMapOptions())
abstract class ConfirmPaymentBodyData with _$ConfirmPaymentBodyData {
  @JsonSerializable(explicitToJson: true)
  const factory ConfirmPaymentBodyData({
    required int userId,
    required int selectedPaymentMethod,
    required String ecTimeSlot,
    String? notes,
   @JsonKey(name: "ec_delivery_date") String? deliveryDtae,
   @JsonKey(name: "ec_delivery_comment") String? deliveryComment,
  }) = _ConfirmPaymentBodyData;

  factory ConfirmPaymentBodyData.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPaymentBodyDataFromJson(json);
}
