import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/order_product.dart';

part 'orders_entity.freezed.dart';
part 'orders_entity.g.dart';

@Freezed(
  fromJson: true,
)
class OrdersEntity with _$OrdersEntity {
  const factory OrdersEntity({
    // Custom parsing logic will handle this
    @JsonKey(name: "order_id") required String orderId,
    @JsonKey(name: "timestamp") required String orderDate,
    @JsonKey(name: "total") required String orderTotalCost,
    @JsonKey(name: "shipping_cost") required String shippingCost,
    required String status,
    required List<OrderProduct> products,
    required bool success,
  }) = _OrdersEntity;

  /// Custom fromJson method
  factory OrdersEntity.fromJson(Map<String, dynamic> json) {
    // Determine the key based on your condition (e.g., isUpdate)
    return _$OrdersEntityFromJson(json);
  }
}
