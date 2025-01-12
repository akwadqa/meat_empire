import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart_product.dart';
import 'delivery_slot.dart';
import 'points_info.dart';
import 'product.dart';
import 'product_group.dart';
import 'shipping.dart';
import 'taxes.dart';
import 'user_data.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
class Cart with _$Cart {
  factory Cart({
    List<Product>? products,
    dynamic shippingCost,
    double? displayShippingCost,
    int? taxSubtotal,
    int? discount,
    String? total,
    int? amount,
    int? originalSubtotal,
    String? displaySubtotal,
    String? subtotal,
    bool? useDiscount,
    bool? companyShippingFailed,
    bool? shippingFailed,
    String? storedTaxes,
    List<dynamic>? coupons,
    bool? recalculate,
    bool? calculateShipping,
    List<dynamic>? freeShipping,
    String? optionsStyle,
    bool? shippingRequired,
    bool? noPromotions,
    dynamic subtotalDiscount,
    bool? hasCoupons,
    List<ProductGroup>? productGroups,
    List<int>? chosenShipping,
    bool? chosenShippingDisabled,
    PointsInfo? pointsInfo,
    dynamic taxSummary,
    List<Taxes>? taxes,
    String? discountedSubtotal,
    UserData? userData,
    String? profileId,
    bool? guestCheckout,
    String? locationHash,
    int? paymentSurcharge,
    String? formatSubtotal,
    String? formatDisplaySubtotal,
    String? formatTotal,
    String? formatShippingCost,
    String? formatDiscountedSubtotal,
    String? formatPaymentSurcharge,
    String? formatSubtotalDiscount,
    String? formatTaxSubtotal,
    List<CartProduct>? cartProducts,
    List<Shipping>? shippings,
    int? paymentId,
    int? orderId,
    List<dynamic>? couponsDetails,
    List<DeliverySlot>? deliverySlots,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}
