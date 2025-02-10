import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/my_orders/data/repository/my_orders_repository.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/order_details.dart';
import 'package:meat_empire/src/features/my_orders/presentation/widgets/order_card_header.dart';
import 'order_card_stepper.dart';
import 'order_card_product_list_view.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/orders_entity.dart';

class OrderCardWidget extends ConsumerWidget {
  final OrdersEntity order;

  const OrderCardWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncOrderDetails =
        ref.watch(orderDetailsProvider(int.parse(order.orderId)));

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      color: AppColors.offWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildOrderHeader(),
          12.verticalSpace,
          _buildOrderStepper(context, asyncOrderDetails),
          12.verticalSpace,
          _buildProductList(),
          12.verticalSpace,
          _buildOrderCost(context),
        ],
      ).symmetricPadding(vertical: 14.0, horizontal: 4),
    );
  }

  Widget _buildOrderHeader() {
    return OrderCardHeader(order: order);
  }

  Widget _buildOrderStepper(
      BuildContext context, AsyncValue<OrderDetails> asyncOrderDetails) {
    if (order.status == "A") {
      return asyncOrderDetails.when(
        data: (data) => OrderStepper(orderDetails: data),
        loading: () => _buildLoadingIndicator(),
        error: (error, s) => _buildErrorText(),
      );
    }
    return SizedBox.shrink();
  }

  Widget _buildLoadingIndicator() {
    return Center(
      child: LinearProgressIndicator(
        minHeight: 1,
        backgroundColor: AppColors.primary,
        color: AppColors.darkRed,
      ).symmetricPadding(horizontal: 12),
    );
  }

  Widget _buildErrorText() {
    return Text("error_loading_order_details");
  }

  Widget _buildProductList() {
    return ProductListView(
      productImages: order.products.map((p) => p.imageUrl).toList(),
    );
  }

  Widget _buildOrderCost(BuildContext context) {
    return Text(
      context.tr("order_cost", args: [order.orderTotalCost]),
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: AppColors.black900,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
    ).onlyPadding(start: 8);
  }
}
