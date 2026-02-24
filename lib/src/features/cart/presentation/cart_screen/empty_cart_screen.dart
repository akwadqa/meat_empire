import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/src/routing/new_router/go_routes.dart';

import 'base_cart_screen.dart';

class EmptyCartScreen extends StatelessWidget {
  const EmptyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CartScreenBase(
      title: context.tr('yourCartIsEmpty'),
      description: context.tr('cartEmptyDesc'),
      buttonText: context.tr('goToShopping'),
      onButtonPressed: () => context.go(GoRoutes.home),
    );
  }
}
