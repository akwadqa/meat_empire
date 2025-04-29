import 'package:flutter/material.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/shared_widgets/custom_button_widget.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class CartScreenBase extends StatelessWidget {
  final String? title;
  final String description;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const CartScreenBase({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          // 70.verticalSpace,
          if (title != null) ...[
            Text(
              title!,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(fontSize: 22),
            ),
            24.verticalSpace,
          ],
          Assets.images.cartImage.image(cacheHeight: 150, cacheWidth: 200),
          38.verticalSpace,
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          18.verticalSpace,
          CustomButtonWidget(
            onTap: onButtonPressed,
            text: buttonText,
            isFiled: true,
            // color: AppColors.primary,
            backgroundColor: AppColors.primary,
            width: 300,
            height: 50,
          ),
        ],
      ),
    );
  }
}
