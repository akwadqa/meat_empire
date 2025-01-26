import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/my_orders/presentation/widgets/order_card_header.dart';

import 'order_card_status.dart';
import 'order_card_stepper.dart';
import 'order_card_product_list_view.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/orders_entity.dart';

class OrderCardWidget extends StatelessWidget {
  final OrdersEntity order;

  const OrderCardWidget({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      color: AppColors.offWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderCardHeader(order: order),
            12.verticalSpace,
            if (order.status == "O") OrderStepper(currentStep: 0),
            12.verticalSpace,
            ProductListView(
                productImages: order.products.map((p) => p.imageUrl).toList()),
            12.verticalSpace,
            Text(
              context.tr("order_cost", args: [order.orderTotalCost]),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: AppColors.black900,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
            ).onlyPadding(start: 8),
          ],
        ),
      ),
    );
  }
}
