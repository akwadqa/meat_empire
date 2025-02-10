import 'package:flutter/material.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/order_details.dart';
import 'package:meat_empire/src/features/my_orders/presentation/widgets/stepper_helper.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class OrderStepper extends StatelessWidget {
  final OrderDetails orderDetails;

  const OrderStepper({super.key, required this.orderDetails});

  @override
  Widget build(BuildContext context) {
    if (orderDetails.shipments.isEmpty) {
      return const SizedBox.shrink();
    }
    final lastShipmentStatus = orderDetails.shipments.isNotEmpty
        ? orderDetails.shipments.last.status
        : 'P';

    final activeStep = StepperHelper.getActiveStep(lastShipmentStatus);
    return AnotherStepper(
      stepperList: StepperHelper.getStepperData(
        context,
        activeStep,
      ),
      stepperDirection: Axis.vertical,
      activeBarColor: AppColors.primary,
      inActiveBarColor: AppColors.lightGray02,
      activeIndex: activeStep,
      verticalGap: 28,
      iconWidth: 25,
      iconHeight: 18,
    ).symmetricPadding(horizontal: 12);
  }
}
