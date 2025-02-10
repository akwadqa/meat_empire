import 'package:flutter/material.dart';
import 'package:meat_empire/src/features/my_orders/data/repository/my_orders_repository.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/order_details.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/orders_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_orders_controller.g.dart';

@riverpod
class MyOrdersController extends _$MyOrdersController {
  @override
  FutureOr<OrdersResponse> build([String? status]) {
    //* Fetch initial orders based on status

    return ref.watch(myOrdersRepositoryProvider).getMyOrders(status ?? "C");
  }

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
//* It combines the two lists of orders (currentData?.orders and response.orders), removing any duplicate elements (because it uses a set)
    final allOrders =
        {...currentData?.orders ?? [], ...response.orders}.toList();

//* WHEN GET DATA FOR FRST TIME CURRENT DATA IS BE NULL
    state = AsyncValue.data(currentData != null
        ? currentData.copyWith(orders: allOrders)
        : response);

    debugPrint(
        "Loaded ${response.orders.length} new orders. Total: ${state.asData?.value.orders.length}");
    return true;
  }

  Future<OrderDetails?> getOrderDetails(int orderId) async {
    final ordersRepository = ref.watch(myOrdersRepositoryProvider);
    return await ordersRepository.getOrderDetails(orderId);
  }
}
