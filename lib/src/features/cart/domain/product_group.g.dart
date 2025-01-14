// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductGroupImpl _$$ProductGroupImplFromJson(Map<String, dynamic> json) =>
    _$ProductGroupImpl(
      groupId: (json['group_id'] as num?)?.toInt(),
      companyId: (json['company_id'] as num?)?.toInt(),
      companyName: json['company_name'] as String?,
      shippings: (json['shippings'] as List<dynamic>?)
          ?.map((e) => Shipping.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedShippingId: json['selected_shipping_id'],
      shippingCost: json['shipping_cost'],
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
