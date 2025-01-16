import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/features/cart/data/cart_repository.dart';
import 'package:meat_empire/src/features/cart/presentation/add_to_cart_controller/add_to_cart_controller.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

import 'features/auth/application/auth_service.dart';
import 'routing/app_router.gr.dart';

void addToCart(BuildContext context, WidgetRef ref, int amount, int productId) {
  if (ref.read(isAuthinticatedProvider)) {
    ref
        .read(addToCartControllerProvider.notifier)
        .addToCart(amount, productId)
        .then((_) {
      ref.invalidate(cartProvider);
    });
  } else {
    context.pushRoute(LoginRoute());
  }
}

Future<void> showCustomDialog({
  required BuildContext context,
  required String title,
  required Widget icon,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 300, // Replace with appropriate fixed or dynamic size
            maxHeight: 400,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon,
                const SizedBox(height: 28),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 22),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Future<void> showLanguageDialog({
  required BuildContext context,
  required String currentLanguage,
  required Function(String newLanguage) onLanguageChange,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.sizeOf(context).width,
            maxHeight: 200,
            // minHeight: 130,
            minWidth: MediaQuery.sizeOf(context).width - 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  if (currentLanguage != 'ar') {
                    onLanguageChange('ar');
                    Navigator.of(context).pop();
                  }
                },
                child: Container(
                  height: 65,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: currentLanguage == 'ar'
                        ? AppColors.lightGray
                        : Colors.transparent,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15)),
                  ),
                  child: Center(
                    child: Text('العربية',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                ),
              ),
              // 15.verticalSpace,
              GestureDetector(
                onTap: () {
                  if (currentLanguage != 'en') {
                    onLanguageChange('en');
                    Navigator.of(context).pop();
                  }
                },
                child: Container(
                  height: 65,
                  // padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: currentLanguage == 'en'
                        ? AppColors.lightGray
                        : Colors.transparent,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(15)),
                  ),
                  child: Center(
                    child: Text('English',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
