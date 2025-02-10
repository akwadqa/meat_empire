import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../routing/app_router.gr.dart';
import '../../auth/application/auth_service.dart';
import '../../products/domain/product_details_response/product_options/selected_option.dart';
import '../data/cart_repository.dart';
import '../presentation/cart_controller/cart_controller.dart';

part 'cart_service.g.dart';

@Riverpod(keepAlive: true)
class UpdateCartController extends _$UpdateCartController {
  @override
  FutureOr<void> build() {}

  Future<void> addToCart({
    required BuildContext context,
    required int amount,
    required int productId,
    List<SelectedOption>? selectedOprions,
  }) async {
    if (ref.read(isAuthinticatedProvider)) {
      state = AsyncLoading();
      state = await AsyncValue.guard(() async {
        final cartRepo = ref.watch(cartRepositoryProvider);
        final cart = await cartRepo.addToCart(
            userId: ref.read(userDataProvider)?.$2,
            amount: amount,
            productId: productId,
            selectedOprions: selectedOprions);
        ref.read(cartControllerProvider.notifier).updateCart(cart);
      });
    } else {
      context.pushRoute(LoginRoute());
    }
  }

  Future<void> updateCart(
      {int? productId, int? amount, int? itemId, String? couponCode}) async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      final cartRepo = ref.watch(cartRepositoryProvider);
      final cart = await cartRepo.updateCart(
          userId: ref.read(userDataProvider)?.$2,
          productId: productId,
          amount: amount,
          itemId: itemId,
          couponCode: couponCode);
      ref.read(cartControllerProvider.notifier).updateCart(cart);
    });
  }

  Future<void> clearCart() async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      final cartRepo = ref.watch(cartRepositoryProvider);
      final cart = await cartRepo.clearCart();
      ref.read(cartControllerProvider.notifier).updateCart(cart);
    });
  }
}

@riverpod
bool isInCart(Ref ref, String productId) {
  final cartAsync = ref.watch(cartControllerProvider);

  if (cartAsync is AsyncData) {
    final cartProducts = cartAsync.value?.cart?.cartProducts;

    return cartProducts?.any((product) => product.productId == productId) ??
        false;
  }

  return false;
}

@riverpod
int cartCount(Ref ref) {
  final cartAsync = ref.watch(cartControllerProvider);

  if (cartAsync is AsyncData) {
    final cartProducts = cartAsync.value?.cart?.cartProducts;
    return cartProducts?.length ?? 0;
  }

  return 0;
}
