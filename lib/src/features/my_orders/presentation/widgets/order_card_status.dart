import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class OrderStatus extends StatelessWidget {
  final String orderStatus;

  const OrderStatus({Key? key, required this.orderStatus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget statusWidget;
    String statusText;

    if (orderStatus == "C") {
      statusWidget = Icon(Icons.check_circle, color: AppColors.green, size: 16);
      statusText = "delivered";
    } else if (orderStatus == "O") {
      statusWidget = Lottie.asset(
        Assets.lottie.processing,
        height: 16,
        width: 16,
        repeat: true,
        reverse: false,
        errorBuilder: (context, error, stackTrace) {
          return Text(
            'Animation Load Error',
            style: TextStyle(color: Colors.red, fontSize: 16),
          );
        },
      );
      statusText = "processing";
    } else {
      statusWidget =
          Icon(Icons.cancel_outlined, color: AppColors.darkRed, size: 16);
      statusText = "canceled";
    }

    return Row(
      children: [
        statusWidget,
        const SizedBox(width: 4),
        Text(
          statusText.tr(),
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: AppColors.black900, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
