import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/order_statuses.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/orders_entity.dart';

part 'orders_response.freezed.dart';
part 'orders_response.g.dart';

@Freezed(
  fromJson: true,
)
class OrdersResponse with _$OrdersResponse {
  const factory OrdersResponse({
    required List<OrdersEntity> orders,
    @JsonKey(name: "order_statuses") // Custom parsing logic will handle this
    required List<OrderStatuses>
        orderStatuses, // Custom parsing logic will handle this
    required String message,
    required bool success,
  }) = _OrdersResponse;

  /// Custom fromJson method
  factory OrdersResponse.fromJson(Map<String, dynamic> json) {
    // Determine the key based on your condition (e.g., isUpdate)
    return _$OrdersResponseFromJson(json);
  }
}
