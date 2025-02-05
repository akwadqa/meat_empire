import 'package:flutter/material.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';

class StepperHelper {
  static int getActiveStep(String status) {
    switch (status) {
      case 'P':
        return 0;
      case 'E':
        return 1;
      case 'A':
        return 2;
      case 'S':
        return 3;
      default:
        return 0;
    }
  }

  static List<StepperData> getStepperData(
      BuildContext context, int activeStep) {
    return [
      StepperData(
        title: StepperText(
          context.tr("pickup"),
          textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: AppColors.black900,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        subtitle: StepperText(
          context.tr("pickup_desc"),
          textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: AppColors.darkGray,
                fontSize: 12,
              ),
        ),
        iconWidget: Icon(
          activeStep >= 0 ? Icons.check_circle : Icons.circle,
          color: activeStep >= 0 ? AppColors.primary : AppColors.gray,
          size: activeStep >= 0 ? 20 : 15,
        ),
      ),
      StepperData(
        title: StepperText(
          context.tr("preparing"),
          textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: AppColors.black900,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        subtitle: StepperText(
          context.tr("preparing_desc"),
          textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: AppColors.darkGray,
                fontSize: 12,
              ),
        ),
        iconWidget: Icon(
          activeStep >= 1 ? Icons.check_circle : Icons.circle,
          color: activeStep >= 1 ? AppColors.primary : AppColors.gray,
          size: activeStep >= 1 ? 20 : 15,
        ),
      ),
      StepperData(
        title: StepperText(
          context.tr("packed"),
          textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: AppColors.black900,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        subtitle: StepperText(
          context.tr("packed_desc"),
          textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: AppColors.darkGray,
                fontSize: 12,
              ),
        ),
        iconWidget: Icon(
          activeStep >= 2 ? Icons.check_circle : Icons.circle,
          color: activeStep >= 2 ? AppColors.primary : AppColors.gray,
          size: activeStep >= 2 ? 20 : 15,
        ),
      ),
      StepperData(
        title: StepperText(
          context.tr("shipped"),
          textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: AppColors.black900,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        subtitle: StepperText(
          context.tr("shipped_desc"),
          textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: AppColors.darkGray,
                fontSize: 12,
              ),
        ),
        iconWidget: Icon(
          activeStep >= 3 ? Icons.check_circle : Icons.circle,
          color: activeStep >= 3 ? AppColors.primary : AppColors.gray,
          size: activeStep >= 3 ? 20 : 15,
        ),
      ),
    ];
  }
}
