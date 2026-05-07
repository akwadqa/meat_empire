// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    _SearchResponse(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      search: Search.fromJson(json['search'] as Map<String, dynamic>),
      sortings: (json['sortings'] as List<dynamic>)
          .map((e) => Sorting.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalProducts: json['total_products'],
      subcategories: (json['subcategories'] as List<dynamic>?)
          ?.map((e) => SubcategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
      success: json['success'] as bool,
    );
