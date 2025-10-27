// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailsResponseImpl _$$ProductDetailsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductDetailsResponseImpl(
  appAction: json['app_action'] as String,
  timezone: json['timezone'] as String,
  product: ProductDetails.fromJson(json['product'] as Map<String, dynamic>),
  currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
  productsBlock: (json['products_block'] as List<dynamic>)
      .map((e) => ProductsBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalProducts: json['total_products'],
  message: json['message'] as String,
  success: json['success'] as bool,
);
