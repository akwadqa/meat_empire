import 'package:meat_empire/src/features/cart/domain/cart_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/cart_repository.dart';

part 'cart_controller.g.dart';

@riverpod
class CartController extends _$CartController {
  @override
  FutureOr<CartResponse> build() async {
    final repository = ref.watch(cartRepositoryProvider);
   try {
      return await repository.getCart();
    } catch (e) {
      // ❌ لا ترمي exception
      // ✅ رجّع error controlled
      rethrow;
    }  }

  void updateCart(CartResponse cart) {
    state = AsyncData(cart);
  }
}
