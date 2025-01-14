// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersEntityImpl _$$OrdersEntityImplFromJson(Map<String, dynamic> json) =>
    _$OrdersEntityImpl(
      orderId: json['order_id'] as String,
      orderDate: json['timestamp'] as String,
      orderTotalCost: json['total'] as String,
      shippingCost: json['shipping_cost'] as String,
      status: json['status'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => OrderProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
