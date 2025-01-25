import 'package:flutter/material.dart';
import 'package:meat_empire/src/features/cart/data/payment_repository.dart';
import 'package:meat_empire/src/features/cart/domain/cart.dart';
import 'package:meat_empire/src/features/cart/domain/payment_entities/confirm_payment_body_data.dart';
import 'package:meat_empire/src/features/cart/domain/payment_entities/confirm_payment_response.dart';
import 'package:meat_empire/src/features/cart/presentation/payment_screen/payment_web_view.dart';
import 'package:meat_empire/src/features/cart/presentation/payment_screen/success_payment_screen.dart';
import 'package:meat_empire/src/shared_functions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payment_controller.g.dart';

@Riverpod(keepAlive: true)
class PaymentController extends _$PaymentController {
  @override
  FutureOr<ConfirmPaymentResponse?> build() => null;

  void confirmPayment(
      ConfirmPaymentBodyData bodyData, BuildContext context, Cart cart) async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      // Fetch the payment response
      final paymentResponse =
          await ref.watch(paymentRepositoryProvider).confirmPayment(bodyData);

      // Process the response based on the conditions
      if (paymentResponse.redirectUrl != null) {
        // Open a web view with the redirect URL
        openWebView(paymentResponse.redirectUrl!, context);
      } else if (paymentResponse.success == true) {
        // Show a success message
        debugPrint('Payment successful!');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SuccessPaymentScreen(cart: cart),
          ),
        );
        // context.pushRoute(SuccessPaymentRoute(cart: cart));
      } else {
        // Handle the failure case
        showErrorMessage(paymentResponse.message ?? 'Payment failed!', context);
      }

      return paymentResponse;
    });
  }

  void openWebView(String url, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewScreen(url: url),
      ),
    );
  }

// Function to display an error message
  void showErrorMessage(String message, BuildContext context) {
    // Add your error message implementation here
    showCustomDialog(
        context: context,
        title: message,
        icon: Icon(
          Icons.error,
          color: AppColors.darkRed,
          size: 45,
        ));
  }
}
