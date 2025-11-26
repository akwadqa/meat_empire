import 'package:freezed_annotation/freezed_annotation.dart';

import 'filtering.dart';

part 'product_reviews_search.freezed.dart';
part 'product_reviews_search.g.dart';

@freezed
abstract class ProductReviewsSearch with _$ProductReviewsSearch {
  factory ProductReviewsSearch({
    required int page,
    required int itemsPerPage,
    required bool loadProductData,
    required int productId,
    required String status,
    required int storefrontId,
    required List<String> availableFilters,
    required dynamic message,
    required dynamic comment,
    required dynamic advantages,
    required dynamic disadvantages,
    required int totalItems,
    required String sortOrder,
    required String sortBy,
    required String sortOrderRev,
    required Filtering filtering,
  }) = _ProductReviewsSearch;

  factory ProductReviewsSearch.fromJson(Map<String, dynamic> json) =>
      _$ProductReviewsSearchFromJson(json);
}
