import 'package:freezed_annotation/freezed_annotation.dart';
import 'detailed_params.dart';
import 'discounts.dart';
import 'main_pair.dart';
import 'shipping_params.dart';

part 'cart_product.freezed.dart';
part 'cart_product.g.dart';

@freezed
abstract class CartProduct with _$CartProduct {
  factory CartProduct({
    String? productId,
    String? companyId,
    List<int>? categoryIds,
    String? productCode,
    int? weight,
    String? tracking,
    String? product,
    dynamic shortDescription,
    String? isEdp,
    String? edpShipping,
    String? shippingFreight,
    String? freeShipping,
    String? zeroPriceAction,
    String? taxIds,
    String? qtyStep,
    String? listQtyCount,
    String? maxQty,
    String? minQty,
    String? inStock,
    ShippingParams? shippingParams,
    String? companyStatus,
    String? outOfStockActions,
    String? updatedTimestamp,
    String? companyName,
    dynamic trackingRaw,
    dynamic zeroPriceActionRaw,
    dynamic minQtyRaw,
    dynamic maxQtyRaw,
    dynamic qtyStepRaw,
    dynamic listQtyCountRaw,
    int? mainCategory,
    String? optionsCount,
    String? price,
    String? basePrice,
    String? isPbp,
    String? isOper,
    String? isOp,
    List<dynamic>? calculation,
    String? originalPrice,
    int? modifiersPrice,
    dynamic amount,
    String? storedPrice,
    List<dynamic>? productOptions,
    String? storedDiscount,
    String? subtotal,
    int? displayPrice,
    String? displaySubtotal,
    MainPair? mainPair,
    bool? hasOptions,
    Discounts? discounts,
    List<dynamic>? qtyContent,
    DetailedParams? detailedParams,
    String? itemId,
    String? formatPrice,
    String? formatSubtotal,
    String? formatDisplaySubtotal,
    String? formatBasePrice,
    String? formatOriginalPrice,
    String? imageUrl,
    String? wishlistId,
  }) = _CartProduct;

  factory CartProduct.fromJson(Map<String, dynamic> json) =>
      _$CartProductFromJson(json);
}