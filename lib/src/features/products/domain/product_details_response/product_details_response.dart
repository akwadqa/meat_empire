import 'package:freezed_annotation/freezed_annotation.dart';

import 'currency.dart';
import 'product_details.dart';
import 'products_block.dart';

part 'product_details_response.freezed.dart';
part 'product_details_response.g.dart';

@freezed
abstract class ProductDetailsResponse with _$ProductDetailsResponse {
  factory ProductDetailsResponse({
    required String appAction,
    required String timezone,
    required ProductDetails product,
    required Currency currency,
    required List<ProductsBlock> productsBlock,
    required dynamic totalProducts,
    required String message,
    required bool success,
  }) = _ProductDetailsResponse;

  factory ProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsResponseFromJson(json);
}
