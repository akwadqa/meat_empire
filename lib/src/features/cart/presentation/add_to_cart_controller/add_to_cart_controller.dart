import 'package:meat_empire/src/features/cart/data/cart_repository.dart';
import 'package:meat_empire/src/features/cart/domain/cart_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_to_cart_controller.g.dart';

@riverpod
class AddToCartController extends _$AddToCartController {
  @override
  FutureOr<CartResponse?> build() {
    return null;
  }

  Future<void> addToCart(int amount, int productId) async {
    state = AsyncLoading();

    state = await AsyncValue.guard(() async {
      final cartRepo = ref.watch(cartRepositoryProvider);
      return cartRepo.addToCart(amount, productId);
    });
  }
}
