import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/src/routing/new_router/go_routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
      // context.pushRoute(LoginRoute());
      context.push(GoRoutes.login);
    }
  }

  Future<void> updateCart(
      {int? productId, int? amount, int? itemId, String? couponCode,bool? showLoading}) async {
  if(showLoading??false) { state = AsyncLoading();Future.delayed(Duration(seconds: 3));}
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
