import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/product.dart';

part 'products_block.freezed.dart';
part 'products_block.g.dart';

@freezed
abstract class ProductsBlock with _$ProductsBlock {
  factory ProductsBlock({
    required String title,
    required String viewType,
    required List<Product> products,
    required int? categoryId,
    required String? requestParam,
    required String? sortBy,
    required String? sortOrder,
  }) = _ProductsBlock;

  factory ProductsBlock.fromJson(Map<String, dynamic> json) =>
      _$ProductsBlockFromJson(json);
}
