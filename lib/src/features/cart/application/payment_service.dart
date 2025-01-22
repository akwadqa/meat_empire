// import 'package:meat_empire/src/features/cart/data/payment_repository.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:meat_empire/src/features/cart/domain/payment_entities/payment_response.dart';
// import 'package:meat_empire/src/features/cart/domain/delivery_slot.dart';

// part 'payment_controller.g.dart';

// @Riverpod(keepAlive: true)
// class PaymentController extends _$PaymentController {
//   DeliverySlot? selectedSlot;

//   @override
//   FutureOr<PaymentResponse> build(int userId) async {
//     final repository = ref.watch(paymentRepositoryProvider);
//     return repository.getPayment(userId);
//   }

//   /// Select a specific delivery slot
//   void selectSlot(DeliverySlot slot) {
//     selectedSlot = slot;
//     // Notify listeners if needed (e.g., UI)
//     state = state.whenData((paymentResponse) => paymentResponse);
//   }
// }
