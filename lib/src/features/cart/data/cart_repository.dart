import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/cart/domain/cart_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../constants/end_points.dart';
import '../../../network/network_service.dart';

part 'cart_repository.g.dart';

@Riverpod(keepAlive: true)
CartRepository cartRepository(Ref ref) =>
    CartRepository(ref.watch(networkServiceProvider()));

class CartRepository {
  final NetworkService _networkService;

  const CartRepository(this._networkService);

  Future<CartResponse> getCart() async {
    final response = await _networkService.get(EndPoints.cartApi);
    CartResponse cartResponse = CartResponse.fromJson(response.data);
    if (cartResponse.success == true) {
      return cartResponse;
    }
    throw AppException(cartResponse.message);
  }

  Future<CartResponse> addToCart(int amount, int productId) async {
    final response = await _networkService.post(EndPoints.cartApi, {
      "product_data": [
        {"amount": amount, "product_id": productId, "product_options": [
            ]
        }
      ]
    });
    CartResponse cartResponse = CartResponse.fromJson(response.data);
    if (cartResponse.success == true) {
      return cartResponse;
    }
    throw AppException(cartResponse.message);
  }
}

@Riverpod(keepAlive: true)
Future<CartResponse> cart(Ref ref) async {
  final repository = ref.watch(cartRepositoryProvider);
  return repository.getCart();
}
