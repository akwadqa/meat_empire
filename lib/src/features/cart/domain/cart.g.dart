// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cart _$CartFromJson(Map<String, dynamic> json) => _Cart(
  products: (json['products'] as List<dynamic>?)
      ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
      .toList(),
  shippingCost: json['shipping_cost'],
  displayShippingCost: (json['display_shipping_cost'] as num?)?.toDouble(),
  taxSubtotal: (json['tax_subtotal'] as num?)?.toInt(),
  discount: (json['discount'] as num?)?.toInt(),
  total: json['total'] as String?,
  amount: (json['amount'] as num?)?.toInt(),
  originalSubtotal: (json['original_subtotal'] as num?)?.toInt(),
  displaySubtotal: json['display_subtotal'] as String?,
  subtotal: json['subtotal'] as String?,
  useDiscount: json['use_discount'] as bool?,
  companyShippingFailed: json['company_shipping_failed'] as bool?,
  shippingFailed: json['shipping_failed'] as bool?,
  storedTaxes: json['stored_taxes'] as String?,
  coupons: json['coupons'],
  recalculate: json['recalculate'] as bool?,
  calculateShipping: json['calculate_shipping'] as bool?,
  freeShipping: json['free_shipping'] as List<dynamic>?,
  optionsStyle: json['options_style'] as String?,
  shippingRequired: json['shipping_required'] as bool?,
  noPromotions: json['no_promotions'] as bool?,
  subtotalDiscount: json['subtotal_discount'],
  hasCoupons: json['has_coupons'] as bool?,
  productGroups: (json['product_groups'] as List<dynamic>?)
      ?.map((e) => ProductGroup.fromJson(e as Map<String, dynamic>))
      .toList(),
  chosenShipping: (json['chosen_shipping'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  chosenShippingDisabled: json['chosen_shipping_disabled'] as bool?,
  pointsInfo: json['points_info'] == null
      ? null
      : PointsInfo.fromJson(json['points_info'] as Map<String, dynamic>),
  taxSummary: json['tax_summary'],
  taxes: (json['taxes'] as List<dynamic>?)
      ?.map((e) => Taxes.fromJson(e as Map<String, dynamic>))
      .toList(),
  discountedSubtotal: json['discounted_subtotal'] as String?,
  userData: json['user_data'],
  profileId: json['profile_id'],
  guestCheckout: json['guest_checkout'] as bool?,
  locationHash: json['location_hash'] as String?,
  paymentSurcharge: (json['payment_surcharge'] as num?)?.toInt(),
  formatSubtotal: json['format_subtotal'] as String?,
  formatDisplaySubtotal: json['format_display_subtotal'] as String?,
  formatTotal: json['format_total'] as String?,
  formatShippingCost: json['format_shipping_cost'] as String?,
  formatDiscountedSubtotal: json['format_discounted_subtotal'] as String?,
  formatPaymentSurcharge: json['format_payment_surcharge'] as String?,
  formatSubtotalDiscount: json['format_subtotal_discount'] as String?,
  formatTaxSubtotal: json['format_tax_subtotal'] as String?,
  cartProducts: (json['cart_products'] as List<dynamic>?)
      ?.map((e) => CartProduct.fromJson(e as Map<String, dynamic>))
      .toList(),
  shippings: (json['shippings'] as List<dynamic>?)
      ?.map((e) => Shipping.fromJson(e as Map<String, dynamic>))
      .toList(),
  paymentId: json['payment_id'],
  orderId: json['order_id'],
  couponsDetails: json['coupons_details'] as List<dynamic>?,
  deliverySlots: (json['delivery_slots'] as List<dynamic>?)
      ?.map((e) => DeliverySlot.fromJson(e as Map<String, dynamic>))
      .toList(),
);
