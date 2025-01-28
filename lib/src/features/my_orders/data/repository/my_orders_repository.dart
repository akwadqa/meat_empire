import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/constants/end_points.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/order_details.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/orders_response.dart';
import 'package:meat_empire/src/network/network_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'my_orders_repository.g.dart';

final ordersProvider = Provider<List<Map<String, dynamic>>>((ref) {
  return [
    {
      "orderNumber": "1234564111",
      "orderDate": "25/11/2024",
      "productImages": [
        Assets.images.logo.path,
        Assets.images.logo.path,
        Assets.images.logo.path,
        Assets.images.logo.path,
        Assets.images.logo.path,
        Assets.images.logo.path,
        Assets.images.logo.path,
        Assets.images.logo.path,
        Assets.images.logo.path,
      ],
      "totalCost": "105",
    },
    {
      "orderNumber": "1234564112",
      "orderDate": "25/11/2024",
      "productImages": [
        Assets.images.logo.path,
        Assets.images.logo.path,
        Assets.images.logo.path,
      ],
      "totalCost": "110",
    },
  ];
});

@Riverpod(keepAlive: true)
MyOrdersRepository myOrdersRepository(Ref ref) =>
    MyOrdersRepository(ref.watch(networkServiceProvider()));

class MyOrdersRepository {
  final NetworkService _networkService;

  const MyOrdersRepository(this._networkService);

  Future<OrdersResponse> getMyOrders(String status, {int page = 1}) async {
    final response = await _networkService.get(
      EndPoints.orderHistory,
      queryParameters: {
        "status": status,
        "page": page,
        "items_per_page": 10
      }, // Pass page parameter
    );
    OrdersResponse ordersResponse = OrdersResponse.fromJson(response.data);
    if (ordersResponse.success) {
      return ordersResponse;
    }
    throw AppException(ordersResponse.message);
  }

  Future<OrderDetails> getOrderDetails(int orderId) async {
    final response = await _networkService.get(
      EndPoints.orderHistoryDetails(orderId),
    );
    OrderDetails orderDetails = OrderDetails.fromJson(response.data);
    if (orderDetails.success) {
      return orderDetails;
    }
    throw AppException(orderDetails.message);
  }
}

@riverpod
FutureOr<OrdersResponse> myOrders(Ref ref, String status, int page) async {
  final myOrdersRepository = ref.watch(myOrdersRepositoryProvider);
  return myOrdersRepository.getMyOrders(status, page: page);
}

@riverpod
FutureOr<OrderDetails> orderDetails(Ref ref, int orderId) async {
  final myOrdersRepository = ref.watch(myOrdersRepositoryProvider);
  return myOrdersRepository.getOrderDetails(orderId);
}
