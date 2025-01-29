import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/cart/domain/cart_response.dart';
import 'package:meat_empire/src/features/products/domain/product_details_response/product_options/selected_option.dart';
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

  Future<CartResponse> addToCart(
          {required int amount,
          required int productId,
          int? userId,
          List<SelectedOption>? selectedOprions}) async =>
      _processRequest(
        () => _networkService.post(EndPoints.cartApi, {
          if (userId != null) 'user_id': userId,
          'product_data': [
            {
              'amount': amount,
              'product_id': productId,
              if (selectedOprions != null && selectedOprions.isNotEmpty)
                'product_options': selectedOprions.map((e) => e.toJson()).toList()
            }
          ]
        }),
      );

  Future<CartResponse> updateCart(
          {int? productId,
          int? amount,
          int? itemId,
          int? userId,
          String? couponCode}) async =>
      _processRequest(
        () => _networkService.put('${EndPoints.cartApi}/1', {
          if (userId != null) 'user_id': userId,
          if (productId != null)
            'cart_product': [
              {
                'product_id': productId,
                if (itemId != null) 'item_id': itemId,
                'amount': amount
              }
            ],
          if (couponCode != null) 'coupon_code': couponCode
        }),
      );

  Future<CartResponse> clearCart() async =>
      _processRequest(() => _networkService.delete('${EndPoints.cartApi}/1'));

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
