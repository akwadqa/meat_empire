// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_payment_body_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConfirmPaymentBodyData _$ConfirmPaymentBodyDataFromJson(
  Map<String, dynamic> json,
) => _ConfirmPaymentBodyData(
  userId: (json['user_id'] as num).toInt(),
  selectedPaymentMethod: (json['selected_payment_method'] as num).toInt(),
  ecTimeSlot: json['ec_time_slot'] as String,
  notes: json['notes'] as String?,
  deliveryDtae: json['ec_delivery_date'] as String?,
  deliveryComment: json['ec_delivery_comment'] as String?,
);

Map<String, dynamic> _$ConfirmPaymentBodyDataToJson(
  _ConfirmPaymentBodyData instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'selected_payment_method': instance.selectedPaymentMethod,
  'ec_time_slot': instance.ecTimeSlot,
  'notes': instance.notes,
  'ec_delivery_date': instance.deliveryDtae,
  'ec_delivery_comment': instance.deliveryComment,
};
