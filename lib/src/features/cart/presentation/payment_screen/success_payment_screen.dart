import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/custom_button_widget.dart';
import 'package:meat_empire/src/features/cart/domain/cart.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_cart_order_summary.dart';
import 'package:meat_empire/src/routing/app_router.gr.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

@RoutePage()
class SuccessPaymentScreen extends StatelessWidget {
  final Cart cart;
  const SuccessPaymentScreen({super.key, required this.cart});

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
              color: AppColors.primary),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline_outlined,
              color: Colors.green,
              size: 80,
            ),
            SizedBox(height: 20),
            Text(
              'تم إرسال الطلب بنجاح',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            50.verticalSpace,
            CheckoutCartOrderSummary(cart: cart),
            Spacer(),
            CustomButtonWidget(
              text: "متابعة التسوق",
              onTap: () {
                context.router.replace(HomeRoute());
              },
              isFiled: true,
              backgroundColor: AppColors.primary,
              height: 50,
              width: 275,
            ),
            30.verticalSpace,
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryRow(String title, String value,
      {bool isDiscount = false, bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: isTotal ? 20 : 16,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            color: isDiscount ? Colors.red : Colors.black,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: isTotal ? 20 : 16,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            color: isDiscount ? Colors.red : Colors.black,
          ),
        ),
      ],
    );
  }
}
