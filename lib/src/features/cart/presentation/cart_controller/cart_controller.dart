import 'package:meat_empire/src/features/auth/application/auth_service.dart';
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
      final userData = ref.watch(userDataProvider);
      if (userData == null) {
        return CartResponse(success: false, message: 'user_id is missing');
      }
      return await repository.getCart(userId: userData.$2);
    } catch (e) {
      // ❌ لا ترمي exception
      // ✅ رجّع error controlled
      rethrow;
    }
  }

  void updateCart(CartResponse cart) {
    state = AsyncData(cart);
  }
}
