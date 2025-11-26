// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductsBlock _$ProductsBlockFromJson(Map<String, dynamic> json) =>
    _ProductsBlock(
      title: json['title'] as String,
      viewType: json['view_type'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      requestParam: json['request_param'] as String?,
      sortBy: json['sort_by'] as String?,
      sortOrder: json['sort_order'] as String?,
    );
