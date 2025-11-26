// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderDetails _$OrderDetailsFromJson(Map<String, dynamic> json) =>
    _OrderDetails(
      showShipments: json['show_shipments'] as bool?,
      shipments: (json['shipments'] as List<dynamic>)
          .map((e) => OrderDetailsShipment.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
      success: json['success'] as bool,
    );
