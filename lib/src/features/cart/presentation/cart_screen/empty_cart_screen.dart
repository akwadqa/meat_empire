import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'base_cart_screen.dart';

class EmptyCartScreen extends StatelessWidget {
  const EmptyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CartScreenBase(
      title: context.tr('yourCartIsEmpty'),
      description: context.tr('cartEmptyDesc'),
      buttonText: context.tr('goToShopping'),
      onButtonPressed: () => context.tabsRouter.setActiveIndex(0),
    );
  }
}
