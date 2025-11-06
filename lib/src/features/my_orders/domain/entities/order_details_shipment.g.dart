// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_shipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderDetailsShipment _$OrderDetailsShipmentFromJson(
  Map<String, dynamic> json,
) => _OrderDetailsShipment(
  shipmentId: json['shipment_id'] as String?,
  comments: json['comments'] as String?,
  status: json['status'] as String,
  orderId: json['order_id'] as String,
  userId: json['user_id'] as String,
  shippingId: json['shipping_id'] as String?,
  shipping: json['shipping'] as String?,
  trackingNumber: json['tracking_number'] as String?,
);
