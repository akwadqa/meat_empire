import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_reviews_sorting.freezed.dart';
part 'product_reviews_sorting.g.dart';

@freezed
class ProductReviewsSorting with _$ProductReviewsSorting {
  factory ProductReviewsSorting({
    required String name,
    required String sortBy,
    required String sortOrder,
  }) = _ProductReviewsSorting;

  factory ProductReviewsSorting.fromJson(Map<String, dynamic> json) =>
      _$ProductReviewsSortingFromJson(json);
}
