import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart' as local;
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class CheckoutShippingTimePickerWidget extends StatelessWidget {
  CheckoutShippingTimePickerWidget({Key? key}) : super(key: key);

  final List<String> timeRanges = [
    "08:00 am - 11:00 am",
    "11:00 am - 03:00 pm",
    "03:00 pm - 06:00 pm",
    "06:00 pm - 09:00 pm",
    "09:00 pm - 11:00 pm",
  ];

  @override
  Widget build(BuildContext context) {
    final now = TimeOfDay.now();

    return FormField<String>(
      initialValue: null,
      builder: (formFieldState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "shipping_time".tr(),
              style: Theme.of(context).textTheme.displaySmall,
            ).onlyPadding(start: 12),
            const SizedBox(height: 8),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Wrap(
                spacing: 5, // Space between chips
                runSpacing: 5,
                children: timeRanges.map((range) {
                  final isAvailable = !_isTimeInPast(range, now);
                  final isSelected = range == formFieldState.value;

                  return GestureDetector(
                    onTap: isAvailable
                        ? () {
                            formFieldState.didChange(range);
                          }
                        : null,
                    child: Stack(
                      children: [
                        Container(
                          padding:
                              const EdgeInsetsDirectional.only(top: 8, end: 8),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 10),
                            decoration: ShapeDecoration(
                              color: isAvailable
                                  ? Colors.transparent
                                  : AppColors.lightGray,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: isSelected
                                      ? AppColors.primary
                                      : isAvailable
                                          ? AppColors.lightGray
                                          : AppColors.gray02,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Text(
                              range,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: isSelected
                                        ? AppColors.primary
                                        : isAvailable
                                            ? AppColors.grey600
                                            : AppColors.grayishCharcoal,
                                  ),
                            ),
                          ),
                        ),
                        if (isSelected)
                          PositionedDirectional(
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
              ).symmetricPadding(horizontal: 6),
            ),
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
        );
      },
      validator: (value) {
        if (value == null) {
          return "يرجى اختيار وقت الشحن.";
        }
        return null;
      },
    );
  }

  bool _isTimeInPast(String range, TimeOfDay now) {
    final startHour = int.parse(range.split(':')[0]);
    final startMinute = int.parse(range.split(':')[1].split(' ')[0]);
    final isPm = range.contains('pm');

    final startTime = TimeOfDay(
      hour: isPm && startHour != 12 ? startHour + 12 : startHour,
      minute: startMinute,
    );

    return (startTime.hour < now.hour) ||
        (startTime.hour == now.hour && startTime.minute <= now.minute);
  }
}
