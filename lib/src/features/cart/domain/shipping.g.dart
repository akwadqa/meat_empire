// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingImpl _$$ShippingImplFromJson(Map<String, dynamic> json) =>
    _$ShippingImpl(
      shippingId: json['shipping_id'] as String?,
      shipping: json['shipping'] as String?,
      description: json['description'] as String?,
      serviceDeliveryTime: json['service_delivery_time'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      formatRate: json['format_rate'] as String?,
    );
