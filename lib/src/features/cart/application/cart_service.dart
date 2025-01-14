import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../routing/app_router.gr.dart';
import '../../auth/application/auth_service.dart';
import '../data/cart_repository.dart';
import '../presentation/cart_controller/cart_controller.dart';

part 'cart_service.g.dart';

@Riverpod(keepAlive: true)
class UpdateCartController extends _$UpdateCartController {
  @override
  FutureOr<void> build() {}

  Future<void> addToCart(
      BuildContext context, int amount, int productId) async {
    if (ref.read(isAuthinticatedProvider)) {
      state = AsyncLoading();
      state = await AsyncValue.guard(() async {
        final cartRepo = ref.watch(cartRepositoryProvider);
        final cart = await cartRepo.addToCart(amount, productId);
        ref.read(cartControllerProvider.notifier).updateCart(cart);
      });
    } else {
      context.pushRoute(LoginRoute());
    }
  }

  Future<void> updateItemInCart(BuildContext context, int productId, int amount,
      [int? itemId]) async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      final cartRepo = ref.watch(cartRepositoryProvider);
      final cart = await cartRepo.updateItemInCart(productId, amount, itemId);
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
