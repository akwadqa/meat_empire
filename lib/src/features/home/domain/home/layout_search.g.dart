// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LayoutSearchImpl _$$LayoutSearchImplFromJson(Map<String, dynamic> json) =>
    _$LayoutSearchImpl(
      page: (json['page'] as num).toInt(),
      itemsPerPage: (json['items_per_page'] as num).toInt(),
      status: json['status'] as String,
      storefrontId: (json['storefront_id'] as num).toInt(),
      sortOrder: json['sort_order'] as String,
      sortBy: json['sort_by'] as String,
      sortOrderRev: json['sort_order_rev'] as String,
    );
