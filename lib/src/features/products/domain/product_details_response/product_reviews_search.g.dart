// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_reviews_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductReviewsSearchImpl _$$ProductReviewsSearchImplFromJson(
  Map<String, dynamic> json,
) => _$ProductReviewsSearchImpl(
  page: (json['page'] as num).toInt(),
  itemsPerPage: (json['items_per_page'] as num).toInt(),
  loadProductData: json['load_product_data'] as bool,
  productId: (json['product_id'] as num).toInt(),
  status: json['status'] as String,
  storefrontId: (json['storefront_id'] as num).toInt(),
  availableFilters: (json['available_filters'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  message: json['message'],
  comment: json['comment'],
  advantages: json['advantages'],
  disadvantages: json['disadvantages'],
  totalItems: (json['total_items'] as num).toInt(),
  sortOrder: json['sort_order'] as String,
  sortBy: json['sort_by'] as String,
  sortOrderRev: json['sort_order_rev'] as String,
  filtering: Filtering.fromJson(json['filtering'] as Map<String, dynamic>),
);
