import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:meat_empire/src/features/my_orders/domain/entities/order_details_shipment.dart';

part 'order_details.freezed.dart';
part 'order_details.g.dart';

@freezed
abstract class OrderDetails with _$OrderDetails {
  const factory OrderDetails({
    bool? showShipments,
    required List<OrderDetailsShipment> shipments,
    required String message,
    required bool success,
  }) = _OrderDetails;

  factory OrderDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsFromJson(json);
}
