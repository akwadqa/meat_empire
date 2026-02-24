import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/products/domain/product_details_response/product_details_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../constants/end_points.dart';
import '../../../network/network_service.dart';

part 'products_repository.g.dart';

@riverpod
ProductsRepository productsRepository(Ref ref) =>
    ProductsRepository(ref.watch(networkServiceProvider()));

class ProductsRepository {
  final NetworkService _networkService;

  const ProductsRepository(this._networkService);

  Future<ProductDetailsResponse> getProductDetails(int productId) async {
    final response =
        await _networkService.get('${EndPoints.productsApi}/$productId');
    ProductDetailsResponse productDetailsResponse =
        ProductDetailsResponse.fromJson(response.data);
    if (productDetailsResponse.success) {
      return productDetailsResponse;
    }
    throw AppException(productDetailsResponse.message);
  }
}

@riverpod
FutureOr<ProductDetailsResponse> productDetails(Ref ref, int productId) async {
  final productsRepository = ref.watch(productsRepositoryProvider);
  return productsRepository.getProductDetails(productId);
}
