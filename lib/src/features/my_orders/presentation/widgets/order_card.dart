import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class OrderCardWidget extends StatelessWidget {
  final String orderNumber;
  final String orderDate;
  final List<String> productImages;
  final String totalCost;

  const OrderCardWidget({
    super.key,
    required this.orderNumber,
    required this.orderDate,
    required this.productImages,
    required this.totalCost,
  });

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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  context.tr("order_number", args: [orderNumber]),
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.black900),
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: AppColors.green,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "مستلمة",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.black900,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              context.tr("order_date", args: [orderDate]),
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: AppColors.grey600),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 60,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: productImages.length,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.gray02, width: 0.5),
                  ),
                  width: 60,
                  height: 60,
                  child: Image.network(
                    productImages[index],
                    // fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              context.tr("order_cost", args: [totalCost]),
              // "تكلفة الطلب: $totalCost ر.ق",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.grey600),
            ),
          ],
        ),
      ),
    );
  }
}
