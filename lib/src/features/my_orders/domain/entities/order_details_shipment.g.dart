// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_shipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDetailsShipmentImpl _$$OrderDetailsShipmentImplFromJson(
  Map<String, dynamic> json,
) => _$OrderDetailsShipmentImpl(
  shipmentId: json['shipment_id'] as String?,
  comments: json['comments'] as String?,
  status: json['status'] as String,
  orderId: json['order_id'] as String,
  userId: json['user_id'] as String,
  shippingId: json['shipping_id'] as String?,
  shipping: json['shipping'] as String?,
  trackingNumber: json['tracking_number'] as String?,
);
