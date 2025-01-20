import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:lottie/lottie.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/orders_entity.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class OrderCardWidget extends StatelessWidget {
  final OrdersEntity order;

  const OrderCardWidget({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    final List<String> productImages =
        List<String>.from(order.products.map((product) => product.imageUrl));
    bool shortProductList = order.products.length > 4;
    final Widget orderStatus = "C" == order.status
        ? _buildOrderStatus(
            context,
            Icon(
              Icons.check_circle,
              color: AppColors.green,
              size: 16,
            ),
            "delivered")
        : "O" == order.status
            ? _buildOrderStatus(
                context,
                Lottie.asset(
                  Assets.lottie.processing,
                  height: 18,
                  width: 18,
                  repeat: true,
                  reverse: false,
                  errorBuilder: (context, error, stackTrace) {
                    return Text(
                      'Animation Load Error',
                      style: TextStyle(color: Colors.red, fontSize: 16),
                    );
                  },
                ),
                "processing")
            : _buildOrderStatus(
                context,
                Icon(
                  Icons.cancel_outlined,
                  color: AppColors.darkRed,
                  size: 16,
                ),
                "canceled");

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
            Row(
              children: [
                Text(
                  context.tr("order_number", args: [order.orderId]),
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.black900,
                        fontSize: 14,
                      ),
                ),
                const Spacer(),
                orderStatus,
              ],
            ).symmetricPadding(horizontal: 8),
            8.verticalSpace,
            Text(
              context.tr("order_date", args: [order.orderDate]),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: AppColors.black900,
                    fontSize: 14,
                  ),
            ).onlyPadding(start: 8),
            12.verticalSpace,
            SizedBox(
              height: 70,
              child: Row(
                children: [
                  if (shortProductList)
                    Flexible(
                      // flex: 1,
                      child: IconButton(
                        onPressed: () {
                          scrollController.animateTo(
                            scrollController.offset - 70,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                          color: AppColors.grey600,
                        ),
                      ),
                    ),
                  Flexible(
                    flex: 10,
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      controller: scrollController,
                      scrollDirection: Axis.horizontal,
                      itemCount: productImages.length,
                      separatorBuilder: (context, index) => 8.horizontalSpace,
                      itemBuilder: (context, index) => Row(
                        children: [
                          Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: AppColors.gray02, width: 0.5),
                            ),
                            width: 60,
                            height: 60,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                productImages[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ).symmetricPadding(horizontal: shortProductList ? 0 : 8),
                  ),
                  if (shortProductList)
                    Flexible(
                      // flex: 1,
                      child: IconButton(
                        onPressed: () {
                          scrollController.animateTo(
                            scrollController.offset + 70,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: AppColors.grey600,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            12.verticalSpace,
            Text(
              context.tr("order_cost", args: [order.orderTotalCost]),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppColors.black900,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ).onlyPadding(start: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderStatus(BuildContext context, Widget widget, String title) {
    return Row(
      children: [
        widget,
        4.horizontalSpace,
        Text(
          title.tr(),
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: AppColors.black900, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
