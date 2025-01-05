import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/cart/data/cart_repository.dart';
import 'package:meat_empire/src/features/cart/presentation/add_to_cart_controller/add_to_cart_controller.dart';

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
