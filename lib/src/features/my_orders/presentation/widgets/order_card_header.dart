import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'order_card_status.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/orders_entity.dart';

class OrderCardHeader extends StatelessWidget {
  final OrdersEntity order;

  const OrderCardHeader({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _buildCardText(
              context,
              context.tr("order_number", args: [order.orderId]),
            ),
            const Spacer(),
            OrderStatus(orderStatus: order.status),
          ],
        ),
        6.verticalSpace,
        _buildCardText(
          context,
          context.tr("order_date", args: [order.orderDate]),
        )
      ],
    ).symmetricPadding(horizontal: 8);
  }

  Widget _buildCardText(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: AppColors.black900,
            fontSize: 14,
          ),
    );
  }
}
