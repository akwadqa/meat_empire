import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/cart/domain/delivery_slot.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart' as local;

class ShippingDatePicker extends StatelessWidget {
  final List<DeliverySlot> deliverySlots;
  final DeliverySlot? selectedDateSlot;
  final ValueChanged<DeliverySlot> onDateSelected;

  const ShippingDatePicker({
    super.key,
    required this.deliverySlots,
    required this.selectedDateSlot,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "shipping_date".tr(),
          style: Theme.of(context).textTheme.displaySmall,
        ).symmetricPadding(horizontal: 12),
        8.verticalSpace,
        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: deliverySlots.map((slot) {
            final isSelected = slot == selectedDateSlot;

            return GestureDetector(
              onTap: () {
                onDateSelected(slot);
              },
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsetsDirectional.only(top: 8, end: 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isSelected
                                ? AppColors.primary
                                : AppColors.lightGray,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Text(
                              slot.heading ?? "",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: isSelected
                                        ? AppColors.primary
                                        : AppColors.grey600,
                                  ),
                            ),
                            Text(
                              slot.date ?? "",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: isSelected
                                        ? AppColors.primary
                                        : AppColors.grey600,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (isSelected)
                      const PositionedDirectional(
                        top: 0,
                        end: 0,
                        child: Icon(
                          Icons.check_circle,
                          color: AppColors.primary,
                          size: 22,
                        ),
                      ),
                  ],
                ),
              ),
            );
          }).toList(),
        ).symmetricPadding(horizontal: 12),
      ],
    );
  }
}
