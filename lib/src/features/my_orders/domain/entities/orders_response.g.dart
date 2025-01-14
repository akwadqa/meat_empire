// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersResponseImpl _$$OrdersResponseImplFromJson(Map<String, dynamic> json) =>
    _$OrdersResponseImpl(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => OrdersEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderStatuses: (json['order_statuses'] as List<dynamic>)
          .map((e) => OrderStatuses.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
      success: json['success'] as bool,
    );
