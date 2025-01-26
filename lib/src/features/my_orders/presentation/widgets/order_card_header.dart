import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'order_card_status.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/orders_entity.dart';

class OrderCardHeader extends StatelessWidget {
  final OrdersEntity order;

  const OrderCardHeader({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              context.tr("order_number", args: [order.orderId]),
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.black900,
                    fontSize: 14,
                  ),
            ),
            const Spacer(),
            OrderStatus(orderStatus: order.status),
          ],
        ),
        6.verticalSpace,
        Text(
          context.tr("order_date", args: [order.orderDate]),
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: AppColors.black900,
                fontSize: 14,
              ),
        ),
      ],
    ).symmetricPadding(horizontal: 8);
  }
}
