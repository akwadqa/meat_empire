// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentInfoEntityImpl _$$PaymentInfoEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentInfoEntityImpl(
      paymentId: json['payment_id'] as String,
      payment: json['payment'] as String,
      description: json['description'] as String?,
      instructions: json['instructions'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$PaymentInfoEntityImplToJson(
        _$PaymentInfoEntityImpl instance) =>
    <String, dynamic>{
      'payment_id': instance.paymentId,
      'payment': instance.payment,
      'description': instance.description,
      'instructions': instance.instructions,
      'image': instance.image,
    };
