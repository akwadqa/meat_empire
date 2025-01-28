import 'package:flutter/material.dart';
import 'package:meat_empire/src/features/my_orders/data/repository/my_orders_repository.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/order_details.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/orders_entity.dart';
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

  Future<bool> loadMore(String status, int page) async {
    final currentData = state.asData?.value;

    if (currentData != null && (currentData.orders.length < page * 10)) {
      debugPrint("No Need to Get more data, already loaded all pages.");
      return false;
    }

    final ordersRepository = ref.read(myOrdersRepositoryProvider);
    final response = await ordersRepository.getMyOrders(status, page: page);

    if (response.orders.isEmpty) {
      debugPrint("No more orders to load.");
      return false;
    }

    final allOrders =
        {...currentData?.orders ?? [], ...response.orders}.toList();

    state = AsyncValue.data(currentData != null
        ? currentData.copyWith(orders: allOrders)
        : response);

    debugPrint(
        "Loaded ${response.orders.length} new orders. Total: ${state.asData?.value.orders.length}");
    return true;
  }

// create function for get order details just for orders have status O
  Future<OrderDetails?> getOrderDetails(int orderId) async {
    // if (status == "O") {
    // state = AsyncLoading();
    final ordersRepository = ref.watch(myOrdersRepositoryProvider);
    // state = await AsyncValue.guard(() => ordersRepository.getOrderDetails(orderId));
    return await ordersRepository.getOrderDetails(orderId);
    // }
  }
}
