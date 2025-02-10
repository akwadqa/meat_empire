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
    @JsonKey(name: "order_statuses") required List<OrderStatuses> orderStatuses,
    required String message,
    required bool success,
  }) = _OrdersResponse;

  factory OrdersResponse.fromJson(Map<String, dynamic> json) {
    return _$OrdersResponseFromJson(json);
  }
}
