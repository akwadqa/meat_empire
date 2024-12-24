import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../theme/app_colors.dart';
import 'quantity_controller.dart';

class QuantitySelector extends ConsumerWidget {
  const QuantitySelector(
      {super.key,
      required this.initialQuantity,
      required this.minQuantity,
      required this.maxQuantity});

  final int initialQuantity;
  final int minQuantity;
  final int maxQuantity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the quantityProvider for updates.
    final quantity = ref.watch(quantityControllerProvider(
        initialQuantity: initialQuantity,
        minQuantity: minQuantity,
        maxQuantity: maxQuantity));
    final controller = ref.read(quantityControllerProvider(
            initialQuantity: initialQuantity,
            minQuantity: minQuantity,
            maxQuantity: maxQuantity)
        .notifier);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.mediumGray),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            IconButton(
              onPressed: controller.decrease,
              icon: const Icon(Icons.remove),
            ),
            const VerticalDivider(color: AppColors.mediumGray),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                quantity.toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary,
                ),
              ),
            ),
            const VerticalDivider(color: AppColors.mediumGray),
            IconButton(
              onPressed: controller.increase,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
