// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartProduct _$CartProductFromJson(Map<String, dynamic> json) => _CartProduct(
  productId: json['product_id'] as String?,
  companyId: json['company_id'] as String?,
  categoryIds: (json['category_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  productCode: json['product_code'] as String?,
  weight: (json['weight'] as num?)?.toInt(),
  tracking: json['tracking'] as String?,
  product: json['product'] as String?,
  shortDescription: json['short_description'],
  isEdp: json['is_edp'] as String?,
  edpShipping: json['edp_shipping'] as String?,
  shippingFreight: json['shipping_freight'] as String?,
  freeShipping: json['free_shipping'] as String?,
  zeroPriceAction: json['zero_price_action'] as String?,
  taxIds: json['tax_ids'] as String?,
  qtyStep: json['qty_step'] as String?,
  listQtyCount: json['list_qty_count'] as String?,
  maxQty: json['max_qty'] as String?,
  minQty: json['min_qty'] as String?,
  inStock: json['in_stock'] as String?,
  shippingParams: json['shipping_params'] == null
      ? null
      : ShippingParams.fromJson(
          json['shipping_params'] as Map<String, dynamic>,
        ),
  companyStatus: json['company_status'] as String?,
  outOfStockActions: json['out_of_stock_actions'] as String?,
  updatedTimestamp: json['updated_timestamp'] as String?,
  companyName: json['company_name'] as String?,
  trackingRaw: json['tracking_raw'],
  zeroPriceActionRaw: json['zero_price_action_raw'],
  minQtyRaw: json['min_qty_raw'],
  maxQtyRaw: json['max_qty_raw'],
  qtyStepRaw: json['qty_step_raw'],
  listQtyCountRaw: json['list_qty_count_raw'],
  mainCategory: (json['main_category'] as num?)?.toInt(),
  optionsCount: json['options_count'] as String?,
  price: json['price'] as String?,
  basePrice: json['base_price'] as String?,
  isPbp: json['is_pbp'] as String?,
  isOper: json['is_oper'] as String?,
  isOp: json['is_op'] as String?,
  calculation: json['calculation'] as List<dynamic>?,
  originalPrice: json['original_price'] as String?,
  modifiersPrice: (json['modifiers_price'] as num?)?.toInt(),
  amount: json['amount'],
  storedPrice: json['stored_price'] as String?,
  productOptions: json['product_options'] as List<dynamic>?,
  storedDiscount: json['stored_discount'] as String?,
  subtotal: json['subtotal'] as String?,
  displayPrice: (json['display_price'] as num?)?.toInt(),
  displaySubtotal: json['display_subtotal'] as String?,
  mainPair: json['main_pair'] == null
      ? null
      : MainPair.fromJson(json['main_pair'] as Map<String, dynamic>),
  hasOptions: json['has_options'] as bool?,
  discounts: json['discounts'] == null
      ? null
      : Discounts.fromJson(json['discounts'] as Map<String, dynamic>),
  qtyContent: json['qty_content'] as List<dynamic>?,
  detailedParams: json['detailed_params'] == null
      ? null
      : DetailedParams.fromJson(
          json['detailed_params'] as Map<String, dynamic>,
        ),
  itemId: json['item_id'] as String?,
  formatPrice: json['format_price'] as String?,
  formatSubtotal: json['format_subtotal'] as String?,
  formatDisplaySubtotal: json['format_display_subtotal'] as String?,
  formatBasePrice: json['format_base_price'] as String?,
  formatOriginalPrice: json['format_original_price'] as String?,
  imageUrl: json['image_url'] as String?,
  wishlistId: json['wishlist_id'] as String?,
);
