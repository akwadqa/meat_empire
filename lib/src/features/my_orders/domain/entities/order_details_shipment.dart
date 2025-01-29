import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details_shipment.freezed.dart';
part 'order_details_shipment.g.dart';

@freezed
class OrderDetailsShipment with _$OrderDetailsShipment {
  const factory OrderDetailsShipment({
    String? shipmentId,
    String? comments,
    required String status,
    required String orderId,
    required String userId,
    String? shippingId,
    String? shipping,
    String? trackingNumber,
  }) = _OrderDetailsShipment;

  factory OrderDetailsShipment.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsShipmentFromJson(json);
}
