import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';
import 'shipping.dart';

part 'product_group.freezed.dart';
part 'product_group.g.dart';

@freezed
abstract class ProductGroup with _$ProductGroup {
  factory ProductGroup({
    int? groupId,
    int? companyId,
    String? companyName,
    List<Shipping>? shippings,
    dynamic selectedShippingId,
    dynamic shippingCost,
    List<Product>? products,
  }) = _ProductGroup;

  factory ProductGroup.fromJson(Map<String, dynamic> json) => _$ProductGroupFromJson(json);
}