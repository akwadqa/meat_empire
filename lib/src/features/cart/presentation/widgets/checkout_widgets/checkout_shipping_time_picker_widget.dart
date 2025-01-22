import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/cart/domain/slot.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart' as local;

class ShippingTimePicker extends StatelessWidget {
  final List<Slot> timeSlots;
  final Slot? selectedTimeSlot;
  final ValueChanged<Slot> onTimeSelected;

  const ShippingTimePicker({
    super.key,
    required this.timeSlots,
    required this.selectedTimeSlot,
    required this.onTimeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "shipping_time".tr(),
          style: Theme.of(context).textTheme.displaySmall,
        ).symmetricPadding(horizontal: 12),
        8.verticalSpace,
        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: timeSlots.map((slot) {
            final isSelected = slot == selectedTimeSlot;

            return GestureDetector(
              onTap: () {
                onTimeSelected(slot);
              },
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsetsDirectional.only(top: 8, end: 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isSelected
                                ? AppColors.primary
                                : AppColors.lightGray,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
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
              ),
            );
          }).toList(),
        ).symmetricPadding(horizontal: 12),
      ],
    );
  }

  static String _formatTimeRange(String timeRange) {
    final parts = timeRange.split(" to ");
    final from = _formatTime(parts[0]);
    final to = _formatTime(parts[1]);
    return "$from - $to";
  }

  static String _formatTime(String time) {
    final parts = time.split(":");
    int hour = int.parse(parts[0]);
    final minute = parts[1];
    final isPm = hour >= 12;
    if (hour > 12) hour -= 12;
    if (hour == 0) hour = 12;
    return "$hour:$minute ${isPm ? "PM" : "AM"}";
  }
}
