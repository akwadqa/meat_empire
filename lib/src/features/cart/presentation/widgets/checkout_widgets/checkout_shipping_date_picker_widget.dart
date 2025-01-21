import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class CheckoutShippingDatePickerWidget extends StatelessWidget {
  const CheckoutShippingDatePickerWidget({Key? key}) : super(key: key);

  List<DateTime> _generateDates() {
    final today = DateTime.now();
    // Find the most recent Sunday
    final lastSunday = today.subtract(Duration(days: today.weekday % 7));
    // Generate dates starting from today, wrapping the week
    return List.generate(7, (index) {
      final adjustedDate = lastSunday.add(Duration(days: index));
      if (adjustedDate.isBefore(today)) {
        // Skip past dates and wrap to the next week
        return adjustedDate.add(const Duration(days: 7));
      }
      return adjustedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    final dates = _generateDates();

    return FormField<DateTime>(
      initialValue: null,
      builder: (formFieldState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "shipping_date".tr(),
              style: Theme.of(context).textTheme.displaySmall,
            ),
            8.verticalSpace,
            Wrap(
              spacing: 5, // Space between chips
              runSpacing: 5,

              children: dates.map((date) {
                final isSelected = date == formFieldState.value;
                return GestureDetector(
                  onTap: () {
                    formFieldState.didChange(date);
                  },
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsetsDirectional.only(top: 8, start: 8),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color: isSelected
                                          ? AppColors.primary
                                          : AppColors.lightGray,
                                      width: 1))),
                          child: Column(
                            children: [
                              Text(
                                _getDayName(date.weekday),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: isSelected
                                            ? AppColors.primary
                                            : AppColors.grey600),
                              ),
                              Text(
                                "${date.day}/${date.month}/${date.year}",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: isSelected
                                            ? AppColors.primary
                                            : AppColors.grey600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (isSelected)
                        PositionedDirectional(
                          top: 0,
                          start: 0,
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
            ).symmetricPadding(horizontal: 6),
            if (formFieldState.hasError)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  formFieldState.errorText ?? '',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                    fontSize: 12,
                  ),
                ),
              ),
          ],
        ).symmetricPadding(horizontal: 12);
      },
      validator: (value) {
        if (value == null) {
          return "يرجى اختيار تاريخ.";
        }
        return null;
      },
    );
  }

  String _getDayName(int weekday) {
    const days = [
      "الاثنين",
      "الثلاثاء",
      "الأربعاء",
      "الخميس",
      "الجمعة",
      "السبت",
      "الأحد",
    ];
    return days[weekday - 1];
  }
}
