import 'package:meat_empire/src/features/cart/data/payment_repository.dart';
import 'package:meat_empire/src/features/cart/domain/cart_response.dart';
import 'package:meat_empire/src/features/cart/domain/payment_entities/confirm_payment_body_data.dart';
import 'package:meat_empire/src/features/cart/domain/payment_entities/confirm_payment_response.dart';
import 'package:meat_empire/src/features/cart/domain/payment_entities/payment_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/cart_repository.dart';

part 'payment_controller.g.dart';

@Riverpod(keepAlive: true)
class PaymentController extends _$PaymentController {
  @override
  FutureOr<ConfirmPaymentResponse?> build() => null;

  void confirmPayment(ConfirmPaymentBodyData bodyData) async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      // Fetch the payment response
      final paymentResponse =
          await ref.watch(paymentRepositoryProvider).confirmPayment(bodyData);

      // Process the response based on the conditions
      if (paymentResponse.redirectUrl != null &&
          paymentResponse.redirectUrl!.isNotEmpty) {
        // Open a web view with the redirect URL
        openWebView(paymentResponse.redirectUrl!);
      } else if (paymentResponse.success == true) {
        // Show a success message
        showSuccessMessage('Payment successful!');
      } else {
        // Handle the failure case
        showErrorMessage(paymentResponse.message ?? 'Payment failed!');
      }

      return paymentResponse;
    });
  }

// Function to open a web view
  void openWebView(String url) {
    // Add your web view implementation here
    print('Opening web view for URL: $url');
  }

// Function to display a success message
  void showSuccessMessage(String message) {
    // Add your success message implementation here
    print('Success: $message');
  }

// Function to display an error message
  void showErrorMessage(String message) {
    // Add your error message implementation here
    print('Error: $message');
  }
}
