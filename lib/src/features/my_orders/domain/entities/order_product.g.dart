// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderProduct _$OrderProductFromJson(Map<String, dynamic> json) =>
    _OrderProduct(
      productId: json['product_id'] as String,
      orderId: json['order_id'] as String,
      imageUrl: json['image_url'] as String,
      product: json['product'] as String,
      amount: (json['amount'] as num).toInt(),
    );
