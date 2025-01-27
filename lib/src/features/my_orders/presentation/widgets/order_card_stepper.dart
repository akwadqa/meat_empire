import 'package:flutter/material.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class OrderStepper extends StatelessWidget {
  final int currentStep;

  const OrderStepper({Key? key, required this.currentStep}) : super(key: key);

  List<StepperData> stepperData(BuildContext context, int i) => [
        StepperData(
            title: StepperText(
              "Order Placed",
              textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: AppColors.black900,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: StepperText(
              "Your order has been placed",
              textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.darkGray,
                    fontSize: 12,
                  ),
            ),
            iconWidget: Icon(
              i >= 0 ? Icons.check_circle : Icons.circle,
              color: i >= 0 ? AppColors.primary : AppColors.gray,
              size: i >= 0 ? 20 : 15,
            )),
        StepperData(
            title: StepperText(
              "Order Placed",
              textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: AppColors.black900,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: StepperText(
              "Your order has been placed",
              textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.darkGray,
                    fontSize: 12,
                  ),
            ),
            iconWidget: Icon(
              i >= 1 ? Icons.check_circle : Icons.circle,
              color: i >= 1 ? AppColors.primary : AppColors.gray,
              size: i >= 1 ? 20 : 15,
            )),
        StepperData(
            title: StepperText(
              "Order Placed",
              textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: AppColors.black900,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: StepperText(
              "Your order has been placed",
              textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: AppColors.darkGray,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            iconWidget: Icon(
              i >= 2 ? Icons.check_circle : Icons.circle,
              color: i >= 2 ? AppColors.primary : AppColors.gray,
              size: i >= 2 ? 20 : 15,
            )),
        StepperData(
            title: StepperText(
              "Order Placed",
              textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.black900,
                    fontSize: 14,
                  ),
            ),
            subtitle: StepperText(
              "Your order has been placed",
              textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.darkGray,
                    fontSize: 12,
                  ),
            ),
            iconWidget: Icon(
              i == 3 ? Icons.check_circle : Icons.circle,
              color: i == 3 ? AppColors.primary : AppColors.gray,
              size: i == 3 ? 20 : 15,
            )),
      ];
  @override
  Widget build(BuildContext context) {
    return AnotherStepper(
      stepperList: stepperData(context, currentStep),
      stepperDirection: Axis.vertical,
      activeBarColor: AppColors.primary,
      inActiveBarColor: AppColors.lightGray02,
      activeIndex: currentStep,
      verticalGap: 28,
      iconWidth: 25,
      iconHeight: 18,
    ).symmetricPadding(horizontal: 12);
  }
}
