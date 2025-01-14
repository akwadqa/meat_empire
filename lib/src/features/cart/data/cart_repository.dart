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

  Future<CartResponse> getCart() async => _processRequest(
        () => _networkService.get(EndPoints.cartApi),
      );

  Future<CartResponse> addToCart(int amount, int productId) async =>
      _processRequest(
        () => _networkService.post(EndPoints.cartApi, {
          'product_data': [
            {'amount': amount, 'product_id': productId, 'product_options': []}
          ]
        }),
      );

  Future<CartResponse> updateItemInCart(int productId, int amount,
          [int? itemId]) async =>
      _processRequest(
        () => _networkService.put('${EndPoints.cartApi}/1', {
          'cart_product': [
            {
              'product_id': productId,
              if (itemId != null) 'item_id': itemId,
              'amount': amount
            }
          ]
        }),
      );

  Future<CartResponse> _processRequest(
      Future<dynamic> Function() request) async {
    final response = await request();
    final cartResponse = CartResponse.fromJson(response.data);
    if (cartResponse.success == true) {
      return cartResponse;
    }
    throw AppException(cartResponse.message);
  }
}
