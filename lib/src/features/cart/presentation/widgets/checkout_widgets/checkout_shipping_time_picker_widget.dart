import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/cart/domain/delivery_slot.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart' as local;
import 'package:meat_empire/src/features/cart/application/checkout_service.dart';

class CheckoutShippingTimePickerWidget extends ConsumerWidget {
  final List<DeliverySlot> deliverySlots;

  const CheckoutShippingTimePickerWidget({
    Key? key,
    required this.deliverySlots,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSlot = ref.watch(checkoutControllerProvider(deliverySlots));
    final selectedTimeSlot = ref
        .watch(checkoutControllerProvider(deliverySlots).notifier)
        .selectedTimeSlot;

    if (selectedSlot == null) {
      return const SizedBox(); // Do not display if no delivery slot is selected
    }

    final timeRanges = selectedSlot.slots ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "shipping_time".tr(),
          style: Theme.of(context).textTheme.displaySmall,
        ).symmetricPadding(horizontal: 12),
        const SizedBox(height: 8),
        Directionality(
          textDirection: TextDirection.ltr,
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: timeRanges.map((slot) {
              final isSelected = selectedTimeSlot == slot.slot;

              return GestureDetector(
                onTap: () {
                  // Update the selected time slot in the controller
                  ref
                      .read(checkoutControllerProvider(deliverySlots).notifier)
                      .selectTimeSlot(slot.slot!);
                },
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsetsDirectional.only(top: 8, end: 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: isSelected
                                  ? AppColors.primary
                                  : AppColors.lightGray,
                              width: 1,
                            ),
                          ),
                        ),
                        child: Text(
                          _formatTimeRange(slot.slot!),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: isSelected
                                      ? AppColors.primary
                                      : AppColors.grey600),
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
              );
            }).toList(),
          ).symmetricPadding(horizontal: 12),
        ),
      ],
    );
  }

  String _formatTimeRange(String timeRange) {
    final parts = timeRange.split(" to ");
    final from = _formatTime(parts[0]);
    final to = _formatTime(parts[1]);
    return "$from - $to";
  }

  String _formatTime(String time) {
    final parts = time.split(":");
    int hour = int.parse(parts[0]);
    final minute = parts[1];
    final isPm = hour >= 12;
    if (hour > 12) hour -= 12;
    if (hour == 0) hour = 12;
    return "$hour:$minute ${isPm ? "PM" : "AM"}";
  }
}
