// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cart {

 List<Product>? get products; dynamic get shippingCost; double? get displayShippingCost; int? get taxSubtotal; int? get discount; String? get total; int? get amount; int? get originalSubtotal; String? get displaySubtotal; String? get subtotal; bool? get useDiscount; bool? get companyShippingFailed; bool? get shippingFailed; String? get storedTaxes; dynamic get coupons; bool? get recalculate; bool? get calculateShipping; List<dynamic>? get freeShipping; String? get optionsStyle; bool? get shippingRequired; bool? get noPromotions; dynamic get subtotalDiscount; bool? get hasCoupons; List<ProductGroup>? get productGroups; List<int>? get chosenShipping; bool? get chosenShippingDisabled; PointsInfo? get pointsInfo; dynamic get taxSummary; List<Taxes>? get taxes; String? get discountedSubtotal; dynamic get userData; dynamic get profileId; bool? get guestCheckout; String? get locationHash; int? get paymentSurcharge; String? get formatSubtotal; String? get formatDisplaySubtotal; String? get formatTotal; String? get formatShippingCost; String? get formatDiscountedSubtotal; String? get formatPaymentSurcharge; String? get formatSubtotalDiscount; String? get formatTaxSubtotal; List<CartProduct>? get cartProducts; List<Shipping>? get shippings; dynamic get paymentId; dynamic get orderId; List<dynamic>? get couponsDetails; List<DeliverySlot>? get deliverySlots;
/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCopyWith<Cart> get copyWith => _$CartCopyWithImpl<Cart>(this as Cart, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cart&&const DeepCollectionEquality().equals(other.products, products)&&const DeepCollectionEquality().equals(other.shippingCost, shippingCost)&&(identical(other.displayShippingCost, displayShippingCost) || other.displayShippingCost == displayShippingCost)&&(identical(other.taxSubtotal, taxSubtotal) || other.taxSubtotal == taxSubtotal)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.originalSubtotal, originalSubtotal) || other.originalSubtotal == originalSubtotal)&&(identical(other.displaySubtotal, displaySubtotal) || other.displaySubtotal == displaySubtotal)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.useDiscount, useDiscount) || other.useDiscount == useDiscount)&&(identical(other.companyShippingFailed, companyShippingFailed) || other.companyShippingFailed == companyShippingFailed)&&(identical(other.shippingFailed, shippingFailed) || other.shippingFailed == shippingFailed)&&(identical(other.storedTaxes, storedTaxes) || other.storedTaxes == storedTaxes)&&const DeepCollectionEquality().equals(other.coupons, coupons)&&(identical(other.recalculate, recalculate) || other.recalculate == recalculate)&&(identical(other.calculateShipping, calculateShipping) || other.calculateShipping == calculateShipping)&&const DeepCollectionEquality().equals(other.freeShipping, freeShipping)&&(identical(other.optionsStyle, optionsStyle) || other.optionsStyle == optionsStyle)&&(identical(other.shippingRequired, shippingRequired) || other.shippingRequired == shippingRequired)&&(identical(other.noPromotions, noPromotions) || other.noPromotions == noPromotions)&&const DeepCollectionEquality().equals(other.subtotalDiscount, subtotalDiscount)&&(identical(other.hasCoupons, hasCoupons) || other.hasCoupons == hasCoupons)&&const DeepCollectionEquality().equals(other.productGroups, productGroups)&&const DeepCollectionEquality().equals(other.chosenShipping, chosenShipping)&&(identical(other.chosenShippingDisabled, chosenShippingDisabled) || other.chosenShippingDisabled == chosenShippingDisabled)&&(identical(other.pointsInfo, pointsInfo) || other.pointsInfo == pointsInfo)&&const DeepCollectionEquality().equals(other.taxSummary, taxSummary)&&const DeepCollectionEquality().equals(other.taxes, taxes)&&(identical(other.discountedSubtotal, discountedSubtotal) || other.discountedSubtotal == discountedSubtotal)&&const DeepCollectionEquality().equals(other.userData, userData)&&const DeepCollectionEquality().equals(other.profileId, profileId)&&(identical(other.guestCheckout, guestCheckout) || other.guestCheckout == guestCheckout)&&(identical(other.locationHash, locationHash) || other.locationHash == locationHash)&&(identical(other.paymentSurcharge, paymentSurcharge) || other.paymentSurcharge == paymentSurcharge)&&(identical(other.formatSubtotal, formatSubtotal) || other.formatSubtotal == formatSubtotal)&&(identical(other.formatDisplaySubtotal, formatDisplaySubtotal) || other.formatDisplaySubtotal == formatDisplaySubtotal)&&(identical(other.formatTotal, formatTotal) || other.formatTotal == formatTotal)&&(identical(other.formatShippingCost, formatShippingCost) || other.formatShippingCost == formatShippingCost)&&(identical(other.formatDiscountedSubtotal, formatDiscountedSubtotal) || other.formatDiscountedSubtotal == formatDiscountedSubtotal)&&(identical(other.formatPaymentSurcharge, formatPaymentSurcharge) || other.formatPaymentSurcharge == formatPaymentSurcharge)&&(identical(other.formatSubtotalDiscount, formatSubtotalDiscount) || other.formatSubtotalDiscount == formatSubtotalDiscount)&&(identical(other.formatTaxSubtotal, formatTaxSubtotal) || other.formatTaxSubtotal == formatTaxSubtotal)&&const DeepCollectionEquality().equals(other.cartProducts, cartProducts)&&const DeepCollectionEquality().equals(other.shippings, shippings)&&const DeepCollectionEquality().equals(other.paymentId, paymentId)&&const DeepCollectionEquality().equals(other.orderId, orderId)&&const DeepCollectionEquality().equals(other.couponsDetails, couponsDetails)&&const DeepCollectionEquality().equals(other.deliverySlots, deliverySlots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(products),const DeepCollectionEquality().hash(shippingCost),displayShippingCost,taxSubtotal,discount,total,amount,originalSubtotal,displaySubtotal,subtotal,useDiscount,companyShippingFailed,shippingFailed,storedTaxes,const DeepCollectionEquality().hash(coupons),recalculate,calculateShipping,const DeepCollectionEquality().hash(freeShipping),optionsStyle,shippingRequired,noPromotions,const DeepCollectionEquality().hash(subtotalDiscount),hasCoupons,const DeepCollectionEquality().hash(productGroups),const DeepCollectionEquality().hash(chosenShipping),chosenShippingDisabled,pointsInfo,const DeepCollectionEquality().hash(taxSummary),const DeepCollectionEquality().hash(taxes),discountedSubtotal,const DeepCollectionEquality().hash(userData),const DeepCollectionEquality().hash(profileId),guestCheckout,locationHash,paymentSurcharge,formatSubtotal,formatDisplaySubtotal,formatTotal,formatShippingCost,formatDiscountedSubtotal,formatPaymentSurcharge,formatSubtotalDiscount,formatTaxSubtotal,const DeepCollectionEquality().hash(cartProducts),const DeepCollectionEquality().hash(shippings),const DeepCollectionEquality().hash(paymentId),const DeepCollectionEquality().hash(orderId),const DeepCollectionEquality().hash(couponsDetails),const DeepCollectionEquality().hash(deliverySlots)]);

@override
String toString() {
  return 'Cart(products: $products, shippingCost: $shippingCost, displayShippingCost: $displayShippingCost, taxSubtotal: $taxSubtotal, discount: $discount, total: $total, amount: $amount, originalSubtotal: $originalSubtotal, displaySubtotal: $displaySubtotal, subtotal: $subtotal, useDiscount: $useDiscount, companyShippingFailed: $companyShippingFailed, shippingFailed: $shippingFailed, storedTaxes: $storedTaxes, coupons: $coupons, recalculate: $recalculate, calculateShipping: $calculateShipping, freeShipping: $freeShipping, optionsStyle: $optionsStyle, shippingRequired: $shippingRequired, noPromotions: $noPromotions, subtotalDiscount: $subtotalDiscount, hasCoupons: $hasCoupons, productGroups: $productGroups, chosenShipping: $chosenShipping, chosenShippingDisabled: $chosenShippingDisabled, pointsInfo: $pointsInfo, taxSummary: $taxSummary, taxes: $taxes, discountedSubtotal: $discountedSubtotal, userData: $userData, profileId: $profileId, guestCheckout: $guestCheckout, locationHash: $locationHash, paymentSurcharge: $paymentSurcharge, formatSubtotal: $formatSubtotal, formatDisplaySubtotal: $formatDisplaySubtotal, formatTotal: $formatTotal, formatShippingCost: $formatShippingCost, formatDiscountedSubtotal: $formatDiscountedSubtotal, formatPaymentSurcharge: $formatPaymentSurcharge, formatSubtotalDiscount: $formatSubtotalDiscount, formatTaxSubtotal: $formatTaxSubtotal, cartProducts: $cartProducts, shippings: $shippings, paymentId: $paymentId, orderId: $orderId, couponsDetails: $couponsDetails, deliverySlots: $deliverySlots)';
}


}

/// @nodoc
abstract mixin class $CartCopyWith<$Res>  {
  factory $CartCopyWith(Cart value, $Res Function(Cart) _then) = _$CartCopyWithImpl;
@useResult
$Res call({
 List<Product>? products, dynamic shippingCost, double? displayShippingCost, int? taxSubtotal, int? discount, String? total, int? amount, int? originalSubtotal, String? displaySubtotal, String? subtotal, bool? useDiscount, bool? companyShippingFailed, bool? shippingFailed, String? storedTaxes, dynamic coupons, bool? recalculate, bool? calculateShipping, List<dynamic>? freeShipping, String? optionsStyle, bool? shippingRequired, bool? noPromotions, dynamic subtotalDiscount, bool? hasCoupons, List<ProductGroup>? productGroups, List<int>? chosenShipping, bool? chosenShippingDisabled, PointsInfo? pointsInfo, dynamic taxSummary, List<Taxes>? taxes, String? discountedSubtotal, dynamic userData, dynamic profileId, bool? guestCheckout, String? locationHash, int? paymentSurcharge, String? formatSubtotal, String? formatDisplaySubtotal, String? formatTotal, String? formatShippingCost, String? formatDiscountedSubtotal, String? formatPaymentSurcharge, String? formatSubtotalDiscount, String? formatTaxSubtotal, List<CartProduct>? cartProducts, List<Shipping>? shippings, dynamic paymentId, dynamic orderId, List<dynamic>? couponsDetails, List<DeliverySlot>? deliverySlots
});


$PointsInfoCopyWith<$Res>? get pointsInfo;

}
/// @nodoc
class _$CartCopyWithImpl<$Res>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._self, this._then);

  final Cart _self;
  final $Res Function(Cart) _then;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = freezed,Object? shippingCost = freezed,Object? displayShippingCost = freezed,Object? taxSubtotal = freezed,Object? discount = freezed,Object? total = freezed,Object? amount = freezed,Object? originalSubtotal = freezed,Object? displaySubtotal = freezed,Object? subtotal = freezed,Object? useDiscount = freezed,Object? companyShippingFailed = freezed,Object? shippingFailed = freezed,Object? storedTaxes = freezed,Object? coupons = freezed,Object? recalculate = freezed,Object? calculateShipping = freezed,Object? freeShipping = freezed,Object? optionsStyle = freezed,Object? shippingRequired = freezed,Object? noPromotions = freezed,Object? subtotalDiscount = freezed,Object? hasCoupons = freezed,Object? productGroups = freezed,Object? chosenShipping = freezed,Object? chosenShippingDisabled = freezed,Object? pointsInfo = freezed,Object? taxSummary = freezed,Object? taxes = freezed,Object? discountedSubtotal = freezed,Object? userData = freezed,Object? profileId = freezed,Object? guestCheckout = freezed,Object? locationHash = freezed,Object? paymentSurcharge = freezed,Object? formatSubtotal = freezed,Object? formatDisplaySubtotal = freezed,Object? formatTotal = freezed,Object? formatShippingCost = freezed,Object? formatDiscountedSubtotal = freezed,Object? formatPaymentSurcharge = freezed,Object? formatSubtotalDiscount = freezed,Object? formatTaxSubtotal = freezed,Object? cartProducts = freezed,Object? shippings = freezed,Object? paymentId = freezed,Object? orderId = freezed,Object? couponsDetails = freezed,Object? deliverySlots = freezed,}) {
  return _then(_self.copyWith(
products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<Product>?,shippingCost: freezed == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as dynamic,displayShippingCost: freezed == displayShippingCost ? _self.displayShippingCost : displayShippingCost // ignore: cast_nullable_to_non_nullable
as double?,taxSubtotal: freezed == taxSubtotal ? _self.taxSubtotal : taxSubtotal // ignore: cast_nullable_to_non_nullable
as int?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,originalSubtotal: freezed == originalSubtotal ? _self.originalSubtotal : originalSubtotal // ignore: cast_nullable_to_non_nullable
as int?,displaySubtotal: freezed == displaySubtotal ? _self.displaySubtotal : displaySubtotal // ignore: cast_nullable_to_non_nullable
as String?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String?,useDiscount: freezed == useDiscount ? _self.useDiscount : useDiscount // ignore: cast_nullable_to_non_nullable
as bool?,companyShippingFailed: freezed == companyShippingFailed ? _self.companyShippingFailed : companyShippingFailed // ignore: cast_nullable_to_non_nullable
as bool?,shippingFailed: freezed == shippingFailed ? _self.shippingFailed : shippingFailed // ignore: cast_nullable_to_non_nullable
as bool?,storedTaxes: freezed == storedTaxes ? _self.storedTaxes : storedTaxes // ignore: cast_nullable_to_non_nullable
as String?,coupons: freezed == coupons ? _self.coupons : coupons // ignore: cast_nullable_to_non_nullable
as dynamic,recalculate: freezed == recalculate ? _self.recalculate : recalculate // ignore: cast_nullable_to_non_nullable
as bool?,calculateShipping: freezed == calculateShipping ? _self.calculateShipping : calculateShipping // ignore: cast_nullable_to_non_nullable
as bool?,freeShipping: freezed == freeShipping ? _self.freeShipping : freeShipping // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,optionsStyle: freezed == optionsStyle ? _self.optionsStyle : optionsStyle // ignore: cast_nullable_to_non_nullable
as String?,shippingRequired: freezed == shippingRequired ? _self.shippingRequired : shippingRequired // ignore: cast_nullable_to_non_nullable
as bool?,noPromotions: freezed == noPromotions ? _self.noPromotions : noPromotions // ignore: cast_nullable_to_non_nullable
as bool?,subtotalDiscount: freezed == subtotalDiscount ? _self.subtotalDiscount : subtotalDiscount // ignore: cast_nullable_to_non_nullable
as dynamic,hasCoupons: freezed == hasCoupons ? _self.hasCoupons : hasCoupons // ignore: cast_nullable_to_non_nullable
as bool?,productGroups: freezed == productGroups ? _self.productGroups : productGroups // ignore: cast_nullable_to_non_nullable
as List<ProductGroup>?,chosenShipping: freezed == chosenShipping ? _self.chosenShipping : chosenShipping // ignore: cast_nullable_to_non_nullable
as List<int>?,chosenShippingDisabled: freezed == chosenShippingDisabled ? _self.chosenShippingDisabled : chosenShippingDisabled // ignore: cast_nullable_to_non_nullable
as bool?,pointsInfo: freezed == pointsInfo ? _self.pointsInfo : pointsInfo // ignore: cast_nullable_to_non_nullable
as PointsInfo?,taxSummary: freezed == taxSummary ? _self.taxSummary : taxSummary // ignore: cast_nullable_to_non_nullable
as dynamic,taxes: freezed == taxes ? _self.taxes : taxes // ignore: cast_nullable_to_non_nullable
as List<Taxes>?,discountedSubtotal: freezed == discountedSubtotal ? _self.discountedSubtotal : discountedSubtotal // ignore: cast_nullable_to_non_nullable
as String?,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as dynamic,profileId: freezed == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as dynamic,guestCheckout: freezed == guestCheckout ? _self.guestCheckout : guestCheckout // ignore: cast_nullable_to_non_nullable
as bool?,locationHash: freezed == locationHash ? _self.locationHash : locationHash // ignore: cast_nullable_to_non_nullable
as String?,paymentSurcharge: freezed == paymentSurcharge ? _self.paymentSurcharge : paymentSurcharge // ignore: cast_nullable_to_non_nullable
as int?,formatSubtotal: freezed == formatSubtotal ? _self.formatSubtotal : formatSubtotal // ignore: cast_nullable_to_non_nullable
as String?,formatDisplaySubtotal: freezed == formatDisplaySubtotal ? _self.formatDisplaySubtotal : formatDisplaySubtotal // ignore: cast_nullable_to_non_nullable
as String?,formatTotal: freezed == formatTotal ? _self.formatTotal : formatTotal // ignore: cast_nullable_to_non_nullable
as String?,formatShippingCost: freezed == formatShippingCost ? _self.formatShippingCost : formatShippingCost // ignore: cast_nullable_to_non_nullable
as String?,formatDiscountedSubtotal: freezed == formatDiscountedSubtotal ? _self.formatDiscountedSubtotal : formatDiscountedSubtotal // ignore: cast_nullable_to_non_nullable
as String?,formatPaymentSurcharge: freezed == formatPaymentSurcharge ? _self.formatPaymentSurcharge : formatPaymentSurcharge // ignore: cast_nullable_to_non_nullable
as String?,formatSubtotalDiscount: freezed == formatSubtotalDiscount ? _self.formatSubtotalDiscount : formatSubtotalDiscount // ignore: cast_nullable_to_non_nullable
as String?,formatTaxSubtotal: freezed == formatTaxSubtotal ? _self.formatTaxSubtotal : formatTaxSubtotal // ignore: cast_nullable_to_non_nullable
as String?,cartProducts: freezed == cartProducts ? _self.cartProducts : cartProducts // ignore: cast_nullable_to_non_nullable
as List<CartProduct>?,shippings: freezed == shippings ? _self.shippings : shippings // ignore: cast_nullable_to_non_nullable
as List<Shipping>?,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as dynamic,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as dynamic,couponsDetails: freezed == couponsDetails ? _self.couponsDetails : couponsDetails // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,deliverySlots: freezed == deliverySlots ? _self.deliverySlots : deliverySlots // ignore: cast_nullable_to_non_nullable
as List<DeliverySlot>?,
  ));
}
/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointsInfoCopyWith<$Res>? get pointsInfo {
    if (_self.pointsInfo == null) {
    return null;
  }

  return $PointsInfoCopyWith<$Res>(_self.pointsInfo!, (value) {
    return _then(_self.copyWith(pointsInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [Cart].
extension CartPatterns on Cart {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cart() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cart value)  $default,){
final _that = this;
switch (_that) {
case _Cart():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cart value)?  $default,){
final _that = this;
switch (_that) {
case _Cart() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Product>? products,  dynamic shippingCost,  double? displayShippingCost,  int? taxSubtotal,  int? discount,  String? total,  int? amount,  int? originalSubtotal,  String? displaySubtotal,  String? subtotal,  bool? useDiscount,  bool? companyShippingFailed,  bool? shippingFailed,  String? storedTaxes,  dynamic coupons,  bool? recalculate,  bool? calculateShipping,  List<dynamic>? freeShipping,  String? optionsStyle,  bool? shippingRequired,  bool? noPromotions,  dynamic subtotalDiscount,  bool? hasCoupons,  List<ProductGroup>? productGroups,  List<int>? chosenShipping,  bool? chosenShippingDisabled,  PointsInfo? pointsInfo,  dynamic taxSummary,  List<Taxes>? taxes,  String? discountedSubtotal,  dynamic userData,  dynamic profileId,  bool? guestCheckout,  String? locationHash,  int? paymentSurcharge,  String? formatSubtotal,  String? formatDisplaySubtotal,  String? formatTotal,  String? formatShippingCost,  String? formatDiscountedSubtotal,  String? formatPaymentSurcharge,  String? formatSubtotalDiscount,  String? formatTaxSubtotal,  List<CartProduct>? cartProducts,  List<Shipping>? shippings,  dynamic paymentId,  dynamic orderId,  List<dynamic>? couponsDetails,  List<DeliverySlot>? deliverySlots)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cart() when $default != null:
return $default(_that.products,_that.shippingCost,_that.displayShippingCost,_that.taxSubtotal,_that.discount,_that.total,_that.amount,_that.originalSubtotal,_that.displaySubtotal,_that.subtotal,_that.useDiscount,_that.companyShippingFailed,_that.shippingFailed,_that.storedTaxes,_that.coupons,_that.recalculate,_that.calculateShipping,_that.freeShipping,_that.optionsStyle,_that.shippingRequired,_that.noPromotions,_that.subtotalDiscount,_that.hasCoupons,_that.productGroups,_that.chosenShipping,_that.chosenShippingDisabled,_that.pointsInfo,_that.taxSummary,_that.taxes,_that.discountedSubtotal,_that.userData,_that.profileId,_that.guestCheckout,_that.locationHash,_that.paymentSurcharge,_that.formatSubtotal,_that.formatDisplaySubtotal,_that.formatTotal,_that.formatShippingCost,_that.formatDiscountedSubtotal,_that.formatPaymentSurcharge,_that.formatSubtotalDiscount,_that.formatTaxSubtotal,_that.cartProducts,_that.shippings,_that.paymentId,_that.orderId,_that.couponsDetails,_that.deliverySlots);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Product>? products,  dynamic shippingCost,  double? displayShippingCost,  int? taxSubtotal,  int? discount,  String? total,  int? amount,  int? originalSubtotal,  String? displaySubtotal,  String? subtotal,  bool? useDiscount,  bool? companyShippingFailed,  bool? shippingFailed,  String? storedTaxes,  dynamic coupons,  bool? recalculate,  bool? calculateShipping,  List<dynamic>? freeShipping,  String? optionsStyle,  bool? shippingRequired,  bool? noPromotions,  dynamic subtotalDiscount,  bool? hasCoupons,  List<ProductGroup>? productGroups,  List<int>? chosenShipping,  bool? chosenShippingDisabled,  PointsInfo? pointsInfo,  dynamic taxSummary,  List<Taxes>? taxes,  String? discountedSubtotal,  dynamic userData,  dynamic profileId,  bool? guestCheckout,  String? locationHash,  int? paymentSurcharge,  String? formatSubtotal,  String? formatDisplaySubtotal,  String? formatTotal,  String? formatShippingCost,  String? formatDiscountedSubtotal,  String? formatPaymentSurcharge,  String? formatSubtotalDiscount,  String? formatTaxSubtotal,  List<CartProduct>? cartProducts,  List<Shipping>? shippings,  dynamic paymentId,  dynamic orderId,  List<dynamic>? couponsDetails,  List<DeliverySlot>? deliverySlots)  $default,) {final _that = this;
switch (_that) {
case _Cart():
return $default(_that.products,_that.shippingCost,_that.displayShippingCost,_that.taxSubtotal,_that.discount,_that.total,_that.amount,_that.originalSubtotal,_that.displaySubtotal,_that.subtotal,_that.useDiscount,_that.companyShippingFailed,_that.shippingFailed,_that.storedTaxes,_that.coupons,_that.recalculate,_that.calculateShipping,_that.freeShipping,_that.optionsStyle,_that.shippingRequired,_that.noPromotions,_that.subtotalDiscount,_that.hasCoupons,_that.productGroups,_that.chosenShipping,_that.chosenShippingDisabled,_that.pointsInfo,_that.taxSummary,_that.taxes,_that.discountedSubtotal,_that.userData,_that.profileId,_that.guestCheckout,_that.locationHash,_that.paymentSurcharge,_that.formatSubtotal,_that.formatDisplaySubtotal,_that.formatTotal,_that.formatShippingCost,_that.formatDiscountedSubtotal,_that.formatPaymentSurcharge,_that.formatSubtotalDiscount,_that.formatTaxSubtotal,_that.cartProducts,_that.shippings,_that.paymentId,_that.orderId,_that.couponsDetails,_that.deliverySlots);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Product>? products,  dynamic shippingCost,  double? displayShippingCost,  int? taxSubtotal,  int? discount,  String? total,  int? amount,  int? originalSubtotal,  String? displaySubtotal,  String? subtotal,  bool? useDiscount,  bool? companyShippingFailed,  bool? shippingFailed,  String? storedTaxes,  dynamic coupons,  bool? recalculate,  bool? calculateShipping,  List<dynamic>? freeShipping,  String? optionsStyle,  bool? shippingRequired,  bool? noPromotions,  dynamic subtotalDiscount,  bool? hasCoupons,  List<ProductGroup>? productGroups,  List<int>? chosenShipping,  bool? chosenShippingDisabled,  PointsInfo? pointsInfo,  dynamic taxSummary,  List<Taxes>? taxes,  String? discountedSubtotal,  dynamic userData,  dynamic profileId,  bool? guestCheckout,  String? locationHash,  int? paymentSurcharge,  String? formatSubtotal,  String? formatDisplaySubtotal,  String? formatTotal,  String? formatShippingCost,  String? formatDiscountedSubtotal,  String? formatPaymentSurcharge,  String? formatSubtotalDiscount,  String? formatTaxSubtotal,  List<CartProduct>? cartProducts,  List<Shipping>? shippings,  dynamic paymentId,  dynamic orderId,  List<dynamic>? couponsDetails,  List<DeliverySlot>? deliverySlots)?  $default,) {final _that = this;
switch (_that) {
case _Cart() when $default != null:
return $default(_that.products,_that.shippingCost,_that.displayShippingCost,_that.taxSubtotal,_that.discount,_that.total,_that.amount,_that.originalSubtotal,_that.displaySubtotal,_that.subtotal,_that.useDiscount,_that.companyShippingFailed,_that.shippingFailed,_that.storedTaxes,_that.coupons,_that.recalculate,_that.calculateShipping,_that.freeShipping,_that.optionsStyle,_that.shippingRequired,_that.noPromotions,_that.subtotalDiscount,_that.hasCoupons,_that.productGroups,_that.chosenShipping,_that.chosenShippingDisabled,_that.pointsInfo,_that.taxSummary,_that.taxes,_that.discountedSubtotal,_that.userData,_that.profileId,_that.guestCheckout,_that.locationHash,_that.paymentSurcharge,_that.formatSubtotal,_that.formatDisplaySubtotal,_that.formatTotal,_that.formatShippingCost,_that.formatDiscountedSubtotal,_that.formatPaymentSurcharge,_that.formatSubtotalDiscount,_that.formatTaxSubtotal,_that.cartProducts,_that.shippings,_that.paymentId,_that.orderId,_that.couponsDetails,_that.deliverySlots);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Cart implements Cart {
   _Cart({final  List<Product>? products, this.shippingCost, this.displayShippingCost, this.taxSubtotal, this.discount, this.total, this.amount, this.originalSubtotal, this.displaySubtotal, this.subtotal, this.useDiscount, this.companyShippingFailed, this.shippingFailed, this.storedTaxes, this.coupons, this.recalculate, this.calculateShipping, final  List<dynamic>? freeShipping, this.optionsStyle, this.shippingRequired, this.noPromotions, this.subtotalDiscount, this.hasCoupons, final  List<ProductGroup>? productGroups, final  List<int>? chosenShipping, this.chosenShippingDisabled, this.pointsInfo, this.taxSummary, final  List<Taxes>? taxes, this.discountedSubtotal, this.userData, this.profileId, this.guestCheckout, this.locationHash, this.paymentSurcharge, this.formatSubtotal, this.formatDisplaySubtotal, this.formatTotal, this.formatShippingCost, this.formatDiscountedSubtotal, this.formatPaymentSurcharge, this.formatSubtotalDiscount, this.formatTaxSubtotal, final  List<CartProduct>? cartProducts, final  List<Shipping>? shippings, this.paymentId, this.orderId, final  List<dynamic>? couponsDetails, final  List<DeliverySlot>? deliverySlots}): _products = products,_freeShipping = freeShipping,_productGroups = productGroups,_chosenShipping = chosenShipping,_taxes = taxes,_cartProducts = cartProducts,_shippings = shippings,_couponsDetails = couponsDetails,_deliverySlots = deliverySlots;
  factory _Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

 final  List<Product>? _products;
@override List<Product>? get products {
  final value = _products;
  if (value == null) return null;
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  dynamic shippingCost;
@override final  double? displayShippingCost;
@override final  int? taxSubtotal;
@override final  int? discount;
@override final  String? total;
@override final  int? amount;
@override final  int? originalSubtotal;
@override final  String? displaySubtotal;
@override final  String? subtotal;
@override final  bool? useDiscount;
@override final  bool? companyShippingFailed;
@override final  bool? shippingFailed;
@override final  String? storedTaxes;
@override final  dynamic coupons;
@override final  bool? recalculate;
@override final  bool? calculateShipping;
 final  List<dynamic>? _freeShipping;
@override List<dynamic>? get freeShipping {
  final value = _freeShipping;
  if (value == null) return null;
  if (_freeShipping is EqualUnmodifiableListView) return _freeShipping;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? optionsStyle;
@override final  bool? shippingRequired;
@override final  bool? noPromotions;
@override final  dynamic subtotalDiscount;
@override final  bool? hasCoupons;
 final  List<ProductGroup>? _productGroups;
@override List<ProductGroup>? get productGroups {
  final value = _productGroups;
  if (value == null) return null;
  if (_productGroups is EqualUnmodifiableListView) return _productGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _chosenShipping;
@override List<int>? get chosenShipping {
  final value = _chosenShipping;
  if (value == null) return null;
  if (_chosenShipping is EqualUnmodifiableListView) return _chosenShipping;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? chosenShippingDisabled;
@override final  PointsInfo? pointsInfo;
@override final  dynamic taxSummary;
 final  List<Taxes>? _taxes;
@override List<Taxes>? get taxes {
  final value = _taxes;
  if (value == null) return null;
  if (_taxes is EqualUnmodifiableListView) return _taxes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? discountedSubtotal;
@override final  dynamic userData;
@override final  dynamic profileId;
@override final  bool? guestCheckout;
@override final  String? locationHash;
@override final  int? paymentSurcharge;
@override final  String? formatSubtotal;
@override final  String? formatDisplaySubtotal;
@override final  String? formatTotal;
@override final  String? formatShippingCost;
@override final  String? formatDiscountedSubtotal;
@override final  String? formatPaymentSurcharge;
@override final  String? formatSubtotalDiscount;
@override final  String? formatTaxSubtotal;
 final  List<CartProduct>? _cartProducts;
@override List<CartProduct>? get cartProducts {
  final value = _cartProducts;
  if (value == null) return null;
  if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Shipping>? _shippings;
@override List<Shipping>? get shippings {
  final value = _shippings;
  if (value == null) return null;
  if (_shippings is EqualUnmodifiableListView) return _shippings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  dynamic paymentId;
@override final  dynamic orderId;
 final  List<dynamic>? _couponsDetails;
@override List<dynamic>? get couponsDetails {
  final value = _couponsDetails;
  if (value == null) return null;
  if (_couponsDetails is EqualUnmodifiableListView) return _couponsDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<DeliverySlot>? _deliverySlots;
@override List<DeliverySlot>? get deliverySlots {
  final value = _deliverySlots;
  if (value == null) return null;
  if (_deliverySlots is EqualUnmodifiableListView) return _deliverySlots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCopyWith<_Cart> get copyWith => __$CartCopyWithImpl<_Cart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cart&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other.shippingCost, shippingCost)&&(identical(other.displayShippingCost, displayShippingCost) || other.displayShippingCost == displayShippingCost)&&(identical(other.taxSubtotal, taxSubtotal) || other.taxSubtotal == taxSubtotal)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.originalSubtotal, originalSubtotal) || other.originalSubtotal == originalSubtotal)&&(identical(other.displaySubtotal, displaySubtotal) || other.displaySubtotal == displaySubtotal)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.useDiscount, useDiscount) || other.useDiscount == useDiscount)&&(identical(other.companyShippingFailed, companyShippingFailed) || other.companyShippingFailed == companyShippingFailed)&&(identical(other.shippingFailed, shippingFailed) || other.shippingFailed == shippingFailed)&&(identical(other.storedTaxes, storedTaxes) || other.storedTaxes == storedTaxes)&&const DeepCollectionEquality().equals(other.coupons, coupons)&&(identical(other.recalculate, recalculate) || other.recalculate == recalculate)&&(identical(other.calculateShipping, calculateShipping) || other.calculateShipping == calculateShipping)&&const DeepCollectionEquality().equals(other._freeShipping, _freeShipping)&&(identical(other.optionsStyle, optionsStyle) || other.optionsStyle == optionsStyle)&&(identical(other.shippingRequired, shippingRequired) || other.shippingRequired == shippingRequired)&&(identical(other.noPromotions, noPromotions) || other.noPromotions == noPromotions)&&const DeepCollectionEquality().equals(other.subtotalDiscount, subtotalDiscount)&&(identical(other.hasCoupons, hasCoupons) || other.hasCoupons == hasCoupons)&&const DeepCollectionEquality().equals(other._productGroups, _productGroups)&&const DeepCollectionEquality().equals(other._chosenShipping, _chosenShipping)&&(identical(other.chosenShippingDisabled, chosenShippingDisabled) || other.chosenShippingDisabled == chosenShippingDisabled)&&(identical(other.pointsInfo, pointsInfo) || other.pointsInfo == pointsInfo)&&const DeepCollectionEquality().equals(other.taxSummary, taxSummary)&&const DeepCollectionEquality().equals(other._taxes, _taxes)&&(identical(other.discountedSubtotal, discountedSubtotal) || other.discountedSubtotal == discountedSubtotal)&&const DeepCollectionEquality().equals(other.userData, userData)&&const DeepCollectionEquality().equals(other.profileId, profileId)&&(identical(other.guestCheckout, guestCheckout) || other.guestCheckout == guestCheckout)&&(identical(other.locationHash, locationHash) || other.locationHash == locationHash)&&(identical(other.paymentSurcharge, paymentSurcharge) || other.paymentSurcharge == paymentSurcharge)&&(identical(other.formatSubtotal, formatSubtotal) || other.formatSubtotal == formatSubtotal)&&(identical(other.formatDisplaySubtotal, formatDisplaySubtotal) || other.formatDisplaySubtotal == formatDisplaySubtotal)&&(identical(other.formatTotal, formatTotal) || other.formatTotal == formatTotal)&&(identical(other.formatShippingCost, formatShippingCost) || other.formatShippingCost == formatShippingCost)&&(identical(other.formatDiscountedSubtotal, formatDiscountedSubtotal) || other.formatDiscountedSubtotal == formatDiscountedSubtotal)&&(identical(other.formatPaymentSurcharge, formatPaymentSurcharge) || other.formatPaymentSurcharge == formatPaymentSurcharge)&&(identical(other.formatSubtotalDiscount, formatSubtotalDiscount) || other.formatSubtotalDiscount == formatSubtotalDiscount)&&(identical(other.formatTaxSubtotal, formatTaxSubtotal) || other.formatTaxSubtotal == formatTaxSubtotal)&&const DeepCollectionEquality().equals(other._cartProducts, _cartProducts)&&const DeepCollectionEquality().equals(other._shippings, _shippings)&&const DeepCollectionEquality().equals(other.paymentId, paymentId)&&const DeepCollectionEquality().equals(other.orderId, orderId)&&const DeepCollectionEquality().equals(other._couponsDetails, _couponsDetails)&&const DeepCollectionEquality().equals(other._deliverySlots, _deliverySlots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(shippingCost),displayShippingCost,taxSubtotal,discount,total,amount,originalSubtotal,displaySubtotal,subtotal,useDiscount,companyShippingFailed,shippingFailed,storedTaxes,const DeepCollectionEquality().hash(coupons),recalculate,calculateShipping,const DeepCollectionEquality().hash(_freeShipping),optionsStyle,shippingRequired,noPromotions,const DeepCollectionEquality().hash(subtotalDiscount),hasCoupons,const DeepCollectionEquality().hash(_productGroups),const DeepCollectionEquality().hash(_chosenShipping),chosenShippingDisabled,pointsInfo,const DeepCollectionEquality().hash(taxSummary),const DeepCollectionEquality().hash(_taxes),discountedSubtotal,const DeepCollectionEquality().hash(userData),const DeepCollectionEquality().hash(profileId),guestCheckout,locationHash,paymentSurcharge,formatSubtotal,formatDisplaySubtotal,formatTotal,formatShippingCost,formatDiscountedSubtotal,formatPaymentSurcharge,formatSubtotalDiscount,formatTaxSubtotal,const DeepCollectionEquality().hash(_cartProducts),const DeepCollectionEquality().hash(_shippings),const DeepCollectionEquality().hash(paymentId),const DeepCollectionEquality().hash(orderId),const DeepCollectionEquality().hash(_couponsDetails),const DeepCollectionEquality().hash(_deliverySlots)]);

@override
String toString() {
  return 'Cart(products: $products, shippingCost: $shippingCost, displayShippingCost: $displayShippingCost, taxSubtotal: $taxSubtotal, discount: $discount, total: $total, amount: $amount, originalSubtotal: $originalSubtotal, displaySubtotal: $displaySubtotal, subtotal: $subtotal, useDiscount: $useDiscount, companyShippingFailed: $companyShippingFailed, shippingFailed: $shippingFailed, storedTaxes: $storedTaxes, coupons: $coupons, recalculate: $recalculate, calculateShipping: $calculateShipping, freeShipping: $freeShipping, optionsStyle: $optionsStyle, shippingRequired: $shippingRequired, noPromotions: $noPromotions, subtotalDiscount: $subtotalDiscount, hasCoupons: $hasCoupons, productGroups: $productGroups, chosenShipping: $chosenShipping, chosenShippingDisabled: $chosenShippingDisabled, pointsInfo: $pointsInfo, taxSummary: $taxSummary, taxes: $taxes, discountedSubtotal: $discountedSubtotal, userData: $userData, profileId: $profileId, guestCheckout: $guestCheckout, locationHash: $locationHash, paymentSurcharge: $paymentSurcharge, formatSubtotal: $formatSubtotal, formatDisplaySubtotal: $formatDisplaySubtotal, formatTotal: $formatTotal, formatShippingCost: $formatShippingCost, formatDiscountedSubtotal: $formatDiscountedSubtotal, formatPaymentSurcharge: $formatPaymentSurcharge, formatSubtotalDiscount: $formatSubtotalDiscount, formatTaxSubtotal: $formatTaxSubtotal, cartProducts: $cartProducts, shippings: $shippings, paymentId: $paymentId, orderId: $orderId, couponsDetails: $couponsDetails, deliverySlots: $deliverySlots)';
}


}

/// @nodoc
abstract mixin class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) _then) = __$CartCopyWithImpl;
@override @useResult
$Res call({
 List<Product>? products, dynamic shippingCost, double? displayShippingCost, int? taxSubtotal, int? discount, String? total, int? amount, int? originalSubtotal, String? displaySubtotal, String? subtotal, bool? useDiscount, bool? companyShippingFailed, bool? shippingFailed, String? storedTaxes, dynamic coupons, bool? recalculate, bool? calculateShipping, List<dynamic>? freeShipping, String? optionsStyle, bool? shippingRequired, bool? noPromotions, dynamic subtotalDiscount, bool? hasCoupons, List<ProductGroup>? productGroups, List<int>? chosenShipping, bool? chosenShippingDisabled, PointsInfo? pointsInfo, dynamic taxSummary, List<Taxes>? taxes, String? discountedSubtotal, dynamic userData, dynamic profileId, bool? guestCheckout, String? locationHash, int? paymentSurcharge, String? formatSubtotal, String? formatDisplaySubtotal, String? formatTotal, String? formatShippingCost, String? formatDiscountedSubtotal, String? formatPaymentSurcharge, String? formatSubtotalDiscount, String? formatTaxSubtotal, List<CartProduct>? cartProducts, List<Shipping>? shippings, dynamic paymentId, dynamic orderId, List<dynamic>? couponsDetails, List<DeliverySlot>? deliverySlots
});


@override $PointsInfoCopyWith<$Res>? get pointsInfo;

}
/// @nodoc
class __$CartCopyWithImpl<$Res>
    implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(this._self, this._then);

  final _Cart _self;
  final $Res Function(_Cart) _then;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = freezed,Object? shippingCost = freezed,Object? displayShippingCost = freezed,Object? taxSubtotal = freezed,Object? discount = freezed,Object? total = freezed,Object? amount = freezed,Object? originalSubtotal = freezed,Object? displaySubtotal = freezed,Object? subtotal = freezed,Object? useDiscount = freezed,Object? companyShippingFailed = freezed,Object? shippingFailed = freezed,Object? storedTaxes = freezed,Object? coupons = freezed,Object? recalculate = freezed,Object? calculateShipping = freezed,Object? freeShipping = freezed,Object? optionsStyle = freezed,Object? shippingRequired = freezed,Object? noPromotions = freezed,Object? subtotalDiscount = freezed,Object? hasCoupons = freezed,Object? productGroups = freezed,Object? chosenShipping = freezed,Object? chosenShippingDisabled = freezed,Object? pointsInfo = freezed,Object? taxSummary = freezed,Object? taxes = freezed,Object? discountedSubtotal = freezed,Object? userData = freezed,Object? profileId = freezed,Object? guestCheckout = freezed,Object? locationHash = freezed,Object? paymentSurcharge = freezed,Object? formatSubtotal = freezed,Object? formatDisplaySubtotal = freezed,Object? formatTotal = freezed,Object? formatShippingCost = freezed,Object? formatDiscountedSubtotal = freezed,Object? formatPaymentSurcharge = freezed,Object? formatSubtotalDiscount = freezed,Object? formatTaxSubtotal = freezed,Object? cartProducts = freezed,Object? shippings = freezed,Object? paymentId = freezed,Object? orderId = freezed,Object? couponsDetails = freezed,Object? deliverySlots = freezed,}) {
  return _then(_Cart(
products: freezed == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>?,shippingCost: freezed == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as dynamic,displayShippingCost: freezed == displayShippingCost ? _self.displayShippingCost : displayShippingCost // ignore: cast_nullable_to_non_nullable
as double?,taxSubtotal: freezed == taxSubtotal ? _self.taxSubtotal : taxSubtotal // ignore: cast_nullable_to_non_nullable
as int?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,originalSubtotal: freezed == originalSubtotal ? _self.originalSubtotal : originalSubtotal // ignore: cast_nullable_to_non_nullable
as int?,displaySubtotal: freezed == displaySubtotal ? _self.displaySubtotal : displaySubtotal // ignore: cast_nullable_to_non_nullable
as String?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String?,useDiscount: freezed == useDiscount ? _self.useDiscount : useDiscount // ignore: cast_nullable_to_non_nullable
as bool?,companyShippingFailed: freezed == companyShippingFailed ? _self.companyShippingFailed : companyShippingFailed // ignore: cast_nullable_to_non_nullable
as bool?,shippingFailed: freezed == shippingFailed ? _self.shippingFailed : shippingFailed // ignore: cast_nullable_to_non_nullable
as bool?,storedTaxes: freezed == storedTaxes ? _self.storedTaxes : storedTaxes // ignore: cast_nullable_to_non_nullable
as String?,coupons: freezed == coupons ? _self.coupons : coupons // ignore: cast_nullable_to_non_nullable
as dynamic,recalculate: freezed == recalculate ? _self.recalculate : recalculate // ignore: cast_nullable_to_non_nullable
as bool?,calculateShipping: freezed == calculateShipping ? _self.calculateShipping : calculateShipping // ignore: cast_nullable_to_non_nullable
as bool?,freeShipping: freezed == freeShipping ? _self._freeShipping : freeShipping // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,optionsStyle: freezed == optionsStyle ? _self.optionsStyle : optionsStyle // ignore: cast_nullable_to_non_nullable
as String?,shippingRequired: freezed == shippingRequired ? _self.shippingRequired : shippingRequired // ignore: cast_nullable_to_non_nullable
as bool?,noPromotions: freezed == noPromotions ? _self.noPromotions : noPromotions // ignore: cast_nullable_to_non_nullable
as bool?,subtotalDiscount: freezed == subtotalDiscount ? _self.subtotalDiscount : subtotalDiscount // ignore: cast_nullable_to_non_nullable
as dynamic,hasCoupons: freezed == hasCoupons ? _self.hasCoupons : hasCoupons // ignore: cast_nullable_to_non_nullable
as bool?,productGroups: freezed == productGroups ? _self._productGroups : productGroups // ignore: cast_nullable_to_non_nullable
as List<ProductGroup>?,chosenShipping: freezed == chosenShipping ? _self._chosenShipping : chosenShipping // ignore: cast_nullable_to_non_nullable
as List<int>?,chosenShippingDisabled: freezed == chosenShippingDisabled ? _self.chosenShippingDisabled : chosenShippingDisabled // ignore: cast_nullable_to_non_nullable
as bool?,pointsInfo: freezed == pointsInfo ? _self.pointsInfo : pointsInfo // ignore: cast_nullable_to_non_nullable
as PointsInfo?,taxSummary: freezed == taxSummary ? _self.taxSummary : taxSummary // ignore: cast_nullable_to_non_nullable
as dynamic,taxes: freezed == taxes ? _self._taxes : taxes // ignore: cast_nullable_to_non_nullable
as List<Taxes>?,discountedSubtotal: freezed == discountedSubtotal ? _self.discountedSubtotal : discountedSubtotal // ignore: cast_nullable_to_non_nullable
as String?,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as dynamic,profileId: freezed == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as dynamic,guestCheckout: freezed == guestCheckout ? _self.guestCheckout : guestCheckout // ignore: cast_nullable_to_non_nullable
as bool?,locationHash: freezed == locationHash ? _self.locationHash : locationHash // ignore: cast_nullable_to_non_nullable
as String?,paymentSurcharge: freezed == paymentSurcharge ? _self.paymentSurcharge : paymentSurcharge // ignore: cast_nullable_to_non_nullable
as int?,formatSubtotal: freezed == formatSubtotal ? _self.formatSubtotal : formatSubtotal // ignore: cast_nullable_to_non_nullable
as String?,formatDisplaySubtotal: freezed == formatDisplaySubtotal ? _self.formatDisplaySubtotal : formatDisplaySubtotal // ignore: cast_nullable_to_non_nullable
as String?,formatTotal: freezed == formatTotal ? _self.formatTotal : formatTotal // ignore: cast_nullable_to_non_nullable
as String?,formatShippingCost: freezed == formatShippingCost ? _self.formatShippingCost : formatShippingCost // ignore: cast_nullable_to_non_nullable
as String?,formatDiscountedSubtotal: freezed == formatDiscountedSubtotal ? _self.formatDiscountedSubtotal : formatDiscountedSubtotal // ignore: cast_nullable_to_non_nullable
as String?,formatPaymentSurcharge: freezed == formatPaymentSurcharge ? _self.formatPaymentSurcharge : formatPaymentSurcharge // ignore: cast_nullable_to_non_nullable
as String?,formatSubtotalDiscount: freezed == formatSubtotalDiscount ? _self.formatSubtotalDiscount : formatSubtotalDiscount // ignore: cast_nullable_to_non_nullable
as String?,formatTaxSubtotal: freezed == formatTaxSubtotal ? _self.formatTaxSubtotal : formatTaxSubtotal // ignore: cast_nullable_to_non_nullable
as String?,cartProducts: freezed == cartProducts ? _self._cartProducts : cartProducts // ignore: cast_nullable_to_non_nullable
as List<CartProduct>?,shippings: freezed == shippings ? _self._shippings : shippings // ignore: cast_nullable_to_non_nullable
as List<Shipping>?,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as dynamic,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as dynamic,couponsDetails: freezed == couponsDetails ? _self._couponsDetails : couponsDetails // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,deliverySlots: freezed == deliverySlots ? _self._deliverySlots : deliverySlots // ignore: cast_nullable_to_non_nullable
as List<DeliverySlot>?,
  ));
}

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointsInfoCopyWith<$Res>? get pointsInfo {
    if (_self.pointsInfo == null) {
    return null;
  }

  return $PointsInfoCopyWith<$Res>(_self.pointsInfo!, (value) {
    return _then(_self.copyWith(pointsInfo: value));
  });
}
}

// dart format on
