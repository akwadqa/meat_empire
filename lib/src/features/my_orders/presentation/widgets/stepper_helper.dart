import 'package:flutter/material.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';

class StepperHelper {
  //* Get the active step index based on the order status
  static int getActiveStep(String status) {
    switch (status) {
      case 'P':
        return 0;
      case 'E':
        return 1;
      case 'C':
        return 2;
      case 'D':
        return 3;
      default:
        return 0;
    }
  }

  static StepperData _buildStepperData(BuildContext context, String titleKey,
      String subtitleKey, int stepIndex, int activeStep) {
    return StepperData(
      title: StepperText(
        context.tr(titleKey),
        textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: AppColors.black900,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
      ),
      subtitle: StepperText(
        context.tr(subtitleKey),
        textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: AppColors.darkGray,
              fontSize: 12,
            ),
      ),
      iconWidget: Icon(
        activeStep >= stepIndex ? Icons.check_circle : Icons.circle,
        color: activeStep >= stepIndex ? AppColors.primary : AppColors.gray,
        size: activeStep >= stepIndex ? 20 : 15,
      ),
    );
  }

  //* Get the list of stepper data based on active step
  static List<StepperData> getStepperData(
      BuildContext context, int activeStep) {
    return [
      _buildStepperData(context, "submited", "submited_desc", 0, activeStep),
      _buildStepperData(context, "preparing", "preparing_desc", 1, activeStep),
      _buildStepperData(context, "on_way", "on_way_desc", 2, activeStep),
      _buildStepperData(context, "delivered", "delivered_desc", 3, activeStep),
    ];
  }
}
