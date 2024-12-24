// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResponseImpl _$$SearchResponseImplFromJson(Map<String, dynamic> json) =>
    _$SearchResponseImpl(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      search: Search.fromJson(json['search'] as Map<String, dynamic>),
      sortings: (json['sortings'] as List<dynamic>)
          .map((e) => Sorting.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalProducts: (json['total_products'] as num).toInt(),
      message: json['message'] as String,
      success: json['success'] as bool,
    );
