
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/src/features/cart/presentation/cart_screen/base_cart_screen.dart';
 
import 'package:meat_empire/src/routing/new_router/go_routes.dart';

class UnAuthCartScreen extends StatelessWidget {
  const UnAuthCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CartScreenBase(
      title: '',
      description: context.tr('cartUnAuthDesc'),
      buttonText: context.tr('login'),
      onButtonPressed: () => context.push(GoRoutes.login),
    );
  }
}