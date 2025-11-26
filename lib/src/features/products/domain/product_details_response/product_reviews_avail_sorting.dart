import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_reviews_avail_sorting.freezed.dart';
part 'product_reviews_avail_sorting.g.dart';

@freezed
abstract class ProductReviewsAvailSorting with _$ProductReviewsAvailSorting {
  factory ProductReviewsAvailSorting({
    @JsonKey(name: 'product_review_timestamp-asc')
    required String productReviewTimestampAsc,
    @JsonKey(name: 'product_review_timestamp-desc')
    required String productReviewTimestampDesc,
    @JsonKey(name: 'helpfulness-asc') required String helpfulnessAsc,
    @JsonKey(name: 'helpfulness-desc') required String helpfulnessDesc,
    @JsonKey(name: 'rating_value-asc') required String ratingValueAsc,
    @JsonKey(name: 'rating_value-desc') required String ratingValueDesc,
  }) = _ProductReviewsAvailSorting;

  factory ProductReviewsAvailSorting.fromJson(Map<String, dynamic> json) =>
      _$ProductReviewsAvailSortingFromJson(json);
}
