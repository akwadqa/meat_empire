import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/custom_button_widget.dart';
import 'package:meat_empire/src/features/cart/application/cart_service.dart';
import 'package:meat_empire/src/features/cart/domain/cart.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_cart_order_summary.dart';
import 'package:meat_empire/src/routing/app_router.gr.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

@RoutePage()
class SuccessPaymentScreen extends ConsumerStatefulWidget {
  final Cart cart;
  final int orderId;
  const SuccessPaymentScreen({
    super.key,
    required this.cart,
    required this.orderId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SuccessPaymentScreenState();
}

class _SuccessPaymentScreenState extends ConsumerState<SuccessPaymentScreen> {
  @override
  void initState() {
    super.initState();
    // Clear the cart when the screen initializes
    Future.microtask(
        () => ref.read(updateCartControllerProvider.notifier).clearCart());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        title: Text(
          'Meat Empire',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            40.verticalSpace,
            Assets.icons.checkDoneIcon.svg(height: 80, width: 80),
            20.verticalSpace,
            Text(
              context.tr("success_payment_msg"),
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
            50.verticalSpace,
            CheckoutCartOrderSummary(
              cart: widget.cart,
              orderId: widget.orderId,
            ),
            Spacer(),
            CustomButtonWidget(
              text: context.tr("continue_shipping_msg"),
              onTap: () {
                context.router.replace(HomeRoute());
              },
              isFiled: true,
              backgroundColor: AppColors.primary,
              height: 50,
              width: 275,
            ),
            15.verticalSpace,
          ],
        ),
      ),
    );
  }
}
