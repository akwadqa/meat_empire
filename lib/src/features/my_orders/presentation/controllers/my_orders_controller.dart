import 'package:meat_empire/src/features/my_orders/data/repository/my_orders_repository.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/orders_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_orders_controller.g.dart';

@riverpod
class MyOrdersController extends _$MyOrdersController {
  @override
  FutureOr<OrdersResponse> build([String? status]) {
    // Fetch initial orders based on status
    return ref.watch(myOrdersRepositoryProvider).getMyOrders(status ?? "C");
  }

  /// Fetch orders based on a new status
  // Future<void> fetchOrders(String status) async {
  //   state = AsyncLoading();
  //   final ordersRepository = ref.watch(myOrdersRepositoryProvider);
  //   state = await AsyncValue.guard(() => ordersRepository.getMyOrders(status));
  // }

  /// Load more orders for pagination
  Future<bool> loadMore(String status, int page) async {
    final currentData = state.asData?.value;

    if (currentData?.orders.length == 10) {
      return false;
    }

    final ordersRepository = ref.watch(myOrdersRepositoryProvider);
    final response = await ordersRepository.getMyOrders(status, page: page);

    // Append new orders to the existing state
    state = AsyncValue.data(response.copyWith(orders: [
      ...currentData?.orders ?? [],
      ...response.orders,
    ]));
    return true;
  }
}
