import 'package:meat_empire/src/features/cart/domain/cart_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/cart_repository.dart';

part 'cart_controller.g.dart';

@riverpod
class CartController extends _$CartController {
  @override
  FutureOr<CartResponse> build() {
    final repository = ref.watch(cartRepositoryProvider);
    return repository.getCart();
  }

  void updateCart(CartResponse cart) {
    state = AsyncData(cart);
  }
}
