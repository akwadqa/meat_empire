// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  List<Product>? get products => throw _privateConstructorUsedError;
  dynamic get shippingCost => throw _privateConstructorUsedError;
  double? get displayShippingCost => throw _privateConstructorUsedError;
  int? get taxSubtotal => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  int? get originalSubtotal => throw _privateConstructorUsedError;
  String? get displaySubtotal => throw _privateConstructorUsedError;
  String? get subtotal => throw _privateConstructorUsedError;
  bool? get useDiscount => throw _privateConstructorUsedError;
  bool? get companyShippingFailed => throw _privateConstructorUsedError;
  bool? get shippingFailed => throw _privateConstructorUsedError;
  String? get storedTaxes => throw _privateConstructorUsedError;
  List<dynamic>? get coupons => throw _privateConstructorUsedError;
  bool? get recalculate => throw _privateConstructorUsedError;
  bool? get calculateShipping => throw _privateConstructorUsedError;
  List<dynamic>? get freeShipping => throw _privateConstructorUsedError;
  String? get optionsStyle => throw _privateConstructorUsedError;
  bool? get shippingRequired => throw _privateConstructorUsedError;
  bool? get noPromotions => throw _privateConstructorUsedError;
  dynamic get subtotalDiscount => throw _privateConstructorUsedError;
  bool? get hasCoupons => throw _privateConstructorUsedError;
  List<ProductGroup>? get productGroups => throw _privateConstructorUsedError;
  List<int>? get chosenShipping => throw _privateConstructorUsedError;
  bool? get chosenShippingDisabled => throw _privateConstructorUsedError;
  PointsInfo? get pointsInfo => throw _privateConstructorUsedError;
  dynamic get taxSummary => throw _privateConstructorUsedError;
  List<Taxes>? get taxes => throw _privateConstructorUsedError;
  String? get discountedSubtotal => throw _privateConstructorUsedError;
  dynamic get userData => throw _privateConstructorUsedError;
  dynamic get profileId => throw _privateConstructorUsedError;
  bool? get guestCheckout => throw _privateConstructorUsedError;
  String? get locationHash => throw _privateConstructorUsedError;
  int? get paymentSurcharge => throw _privateConstructorUsedError;
  String? get formatSubtotal => throw _privateConstructorUsedError;
  String? get formatDisplaySubtotal => throw _privateConstructorUsedError;
  String? get formatTotal => throw _privateConstructorUsedError;
  String? get formatShippingCost => throw _privateConstructorUsedError;
  String? get formatDiscountedSubtotal => throw _privateConstructorUsedError;
  String? get formatPaymentSurcharge => throw _privateConstructorUsedError;
  String? get formatSubtotalDiscount => throw _privateConstructorUsedError;
  String? get formatTaxSubtotal => throw _privateConstructorUsedError;
  List<CartProduct>? get cartProducts => throw _privateConstructorUsedError;
  List<Shipping>? get shippings => throw _privateConstructorUsedError;
  dynamic get paymentId => throw _privateConstructorUsedError;
  dynamic get orderId => throw _privateConstructorUsedError;
  List<dynamic>? get couponsDetails => throw _privateConstructorUsedError;
  List<DeliverySlot>? get deliverySlots => throw _privateConstructorUsedError;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call(
      {List<Product>? products,
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
      dynamic userData,
      dynamic profileId,
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
      dynamic paymentId,
      dynamic orderId,
      List<dynamic>? couponsDetails,
      List<DeliverySlot>? deliverySlots});

  $PointsInfoCopyWith<$Res>? get pointsInfo;
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? shippingCost = freezed,
    Object? displayShippingCost = freezed,
    Object? taxSubtotal = freezed,
    Object? discount = freezed,
    Object? total = freezed,
    Object? amount = freezed,
    Object? originalSubtotal = freezed,
    Object? displaySubtotal = freezed,
    Object? subtotal = freezed,
    Object? useDiscount = freezed,
    Object? companyShippingFailed = freezed,
    Object? shippingFailed = freezed,
    Object? storedTaxes = freezed,
    Object? coupons = freezed,
    Object? recalculate = freezed,
    Object? calculateShipping = freezed,
    Object? freeShipping = freezed,
    Object? optionsStyle = freezed,
    Object? shippingRequired = freezed,
    Object? noPromotions = freezed,
    Object? subtotalDiscount = freezed,
    Object? hasCoupons = freezed,
    Object? productGroups = freezed,
    Object? chosenShipping = freezed,
    Object? chosenShippingDisabled = freezed,
    Object? pointsInfo = freezed,
    Object? taxSummary = freezed,
    Object? taxes = freezed,
    Object? discountedSubtotal = freezed,
    Object? userData = freezed,
    Object? profileId = freezed,
    Object? guestCheckout = freezed,
    Object? locationHash = freezed,
    Object? paymentSurcharge = freezed,
    Object? formatSubtotal = freezed,
    Object? formatDisplaySubtotal = freezed,
    Object? formatTotal = freezed,
    Object? formatShippingCost = freezed,
    Object? formatDiscountedSubtotal = freezed,
    Object? formatPaymentSurcharge = freezed,
    Object? formatSubtotalDiscount = freezed,
    Object? formatTaxSubtotal = freezed,
    Object? cartProducts = freezed,
    Object? shippings = freezed,
    Object? paymentId = freezed,
    Object? orderId = freezed,
    Object? couponsDetails = freezed,
    Object? deliverySlots = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      shippingCost: freezed == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as dynamic,
      displayShippingCost: freezed == displayShippingCost
          ? _value.displayShippingCost
          : displayShippingCost // ignore: cast_nullable_to_non_nullable
              as double?,
      taxSubtotal: freezed == taxSubtotal
          ? _value.taxSubtotal
          : taxSubtotal // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      originalSubtotal: freezed == originalSubtotal
          ? _value.originalSubtotal
          : originalSubtotal // ignore: cast_nullable_to_non_nullable
              as int?,
      displaySubtotal: freezed == displaySubtotal
          ? _value.displaySubtotal
          : displaySubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      useDiscount: freezed == useDiscount
          ? _value.useDiscount
          : useDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      companyShippingFailed: freezed == companyShippingFailed
          ? _value.companyShippingFailed
          : companyShippingFailed // ignore: cast_nullable_to_non_nullable
              as bool?,
      shippingFailed: freezed == shippingFailed
          ? _value.shippingFailed
          : shippingFailed // ignore: cast_nullable_to_non_nullable
              as bool?,
      storedTaxes: freezed == storedTaxes
          ? _value.storedTaxes
          : storedTaxes // ignore: cast_nullable_to_non_nullable
              as String?,
      coupons: freezed == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      recalculate: freezed == recalculate
          ? _value.recalculate
          : recalculate // ignore: cast_nullable_to_non_nullable
              as bool?,
      calculateShipping: freezed == calculateShipping
          ? _value.calculateShipping
          : calculateShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      freeShipping: freezed == freeShipping
          ? _value.freeShipping
          : freeShipping // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      optionsStyle: freezed == optionsStyle
          ? _value.optionsStyle
          : optionsStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingRequired: freezed == shippingRequired
          ? _value.shippingRequired
          : shippingRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      noPromotions: freezed == noPromotions
          ? _value.noPromotions
          : noPromotions // ignore: cast_nullable_to_non_nullable
              as bool?,
      subtotalDiscount: freezed == subtotalDiscount
          ? _value.subtotalDiscount
          : subtotalDiscount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hasCoupons: freezed == hasCoupons
          ? _value.hasCoupons
          : hasCoupons // ignore: cast_nullable_to_non_nullable
              as bool?,
      productGroups: freezed == productGroups
          ? _value.productGroups
          : productGroups // ignore: cast_nullable_to_non_nullable
              as List<ProductGroup>?,
      chosenShipping: freezed == chosenShipping
          ? _value.chosenShipping
          : chosenShipping // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      chosenShippingDisabled: freezed == chosenShippingDisabled
          ? _value.chosenShippingDisabled
          : chosenShippingDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      pointsInfo: freezed == pointsInfo
          ? _value.pointsInfo
          : pointsInfo // ignore: cast_nullable_to_non_nullable
              as PointsInfo?,
      taxSummary: freezed == taxSummary
          ? _value.taxSummary
          : taxSummary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      taxes: freezed == taxes
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as List<Taxes>?,
      discountedSubtotal: freezed == discountedSubtotal
          ? _value.discountedSubtotal
          : discountedSubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      guestCheckout: freezed == guestCheckout
          ? _value.guestCheckout
          : guestCheckout // ignore: cast_nullable_to_non_nullable
              as bool?,
      locationHash: freezed == locationHash
          ? _value.locationHash
          : locationHash // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentSurcharge: freezed == paymentSurcharge
          ? _value.paymentSurcharge
          : paymentSurcharge // ignore: cast_nullable_to_non_nullable
              as int?,
      formatSubtotal: freezed == formatSubtotal
          ? _value.formatSubtotal
          : formatSubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      formatDisplaySubtotal: freezed == formatDisplaySubtotal
          ? _value.formatDisplaySubtotal
          : formatDisplaySubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      formatTotal: freezed == formatTotal
          ? _value.formatTotal
          : formatTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      formatShippingCost: freezed == formatShippingCost
          ? _value.formatShippingCost
          : formatShippingCost // ignore: cast_nullable_to_non_nullable
              as String?,
      formatDiscountedSubtotal: freezed == formatDiscountedSubtotal
          ? _value.formatDiscountedSubtotal
          : formatDiscountedSubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      formatPaymentSurcharge: freezed == formatPaymentSurcharge
          ? _value.formatPaymentSurcharge
          : formatPaymentSurcharge // ignore: cast_nullable_to_non_nullable
              as String?,
      formatSubtotalDiscount: freezed == formatSubtotalDiscount
          ? _value.formatSubtotalDiscount
          : formatSubtotalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      formatTaxSubtotal: freezed == formatTaxSubtotal
          ? _value.formatTaxSubtotal
          : formatTaxSubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      cartProducts: freezed == cartProducts
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>?,
      shippings: freezed == shippings
          ? _value.shippings
          : shippings // ignore: cast_nullable_to_non_nullable
              as List<Shipping>?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      couponsDetails: freezed == couponsDetails
          ? _value.couponsDetails
          : couponsDetails // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      deliverySlots: freezed == deliverySlots
          ? _value.deliverySlots
          : deliverySlots // ignore: cast_nullable_to_non_nullable
              as List<DeliverySlot>?,
    ) as $Val);
  }

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PointsInfoCopyWith<$Res>? get pointsInfo {
    if (_value.pointsInfo == null) {
      return null;
    }

    return $PointsInfoCopyWith<$Res>(_value.pointsInfo!, (value) {
      return _then(_value.copyWith(pointsInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartImplCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$CartImplCopyWith(
          _$CartImpl value, $Res Function(_$CartImpl) then) =
      __$$CartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Product>? products,
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
      dynamic userData,
      dynamic profileId,
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
      dynamic paymentId,
      dynamic orderId,
      List<dynamic>? couponsDetails,
      List<DeliverySlot>? deliverySlots});

  @override
  $PointsInfoCopyWith<$Res>? get pointsInfo;
}

/// @nodoc
class __$$CartImplCopyWithImpl<$Res>
    extends _$CartCopyWithImpl<$Res, _$CartImpl>
    implements _$$CartImplCopyWith<$Res> {
  __$$CartImplCopyWithImpl(_$CartImpl _value, $Res Function(_$CartImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? shippingCost = freezed,
    Object? displayShippingCost = freezed,
    Object? taxSubtotal = freezed,
    Object? discount = freezed,
    Object? total = freezed,
    Object? amount = freezed,
    Object? originalSubtotal = freezed,
    Object? displaySubtotal = freezed,
    Object? subtotal = freezed,
    Object? useDiscount = freezed,
    Object? companyShippingFailed = freezed,
    Object? shippingFailed = freezed,
    Object? storedTaxes = freezed,
    Object? coupons = freezed,
    Object? recalculate = freezed,
    Object? calculateShipping = freezed,
    Object? freeShipping = freezed,
    Object? optionsStyle = freezed,
    Object? shippingRequired = freezed,
    Object? noPromotions = freezed,
    Object? subtotalDiscount = freezed,
    Object? hasCoupons = freezed,
    Object? productGroups = freezed,
    Object? chosenShipping = freezed,
    Object? chosenShippingDisabled = freezed,
    Object? pointsInfo = freezed,
    Object? taxSummary = freezed,
    Object? taxes = freezed,
    Object? discountedSubtotal = freezed,
    Object? userData = freezed,
    Object? profileId = freezed,
    Object? guestCheckout = freezed,
    Object? locationHash = freezed,
    Object? paymentSurcharge = freezed,
    Object? formatSubtotal = freezed,
    Object? formatDisplaySubtotal = freezed,
    Object? formatTotal = freezed,
    Object? formatShippingCost = freezed,
    Object? formatDiscountedSubtotal = freezed,
    Object? formatPaymentSurcharge = freezed,
    Object? formatSubtotalDiscount = freezed,
    Object? formatTaxSubtotal = freezed,
    Object? cartProducts = freezed,
    Object? shippings = freezed,
    Object? paymentId = freezed,
    Object? orderId = freezed,
    Object? couponsDetails = freezed,
    Object? deliverySlots = freezed,
  }) {
    return _then(_$CartImpl(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      shippingCost: freezed == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as dynamic,
      displayShippingCost: freezed == displayShippingCost
          ? _value.displayShippingCost
          : displayShippingCost // ignore: cast_nullable_to_non_nullable
              as double?,
      taxSubtotal: freezed == taxSubtotal
          ? _value.taxSubtotal
          : taxSubtotal // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      originalSubtotal: freezed == originalSubtotal
          ? _value.originalSubtotal
          : originalSubtotal // ignore: cast_nullable_to_non_nullable
              as int?,
      displaySubtotal: freezed == displaySubtotal
          ? _value.displaySubtotal
          : displaySubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      useDiscount: freezed == useDiscount
          ? _value.useDiscount
          : useDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      companyShippingFailed: freezed == companyShippingFailed
          ? _value.companyShippingFailed
          : companyShippingFailed // ignore: cast_nullable_to_non_nullable
              as bool?,
      shippingFailed: freezed == shippingFailed
          ? _value.shippingFailed
          : shippingFailed // ignore: cast_nullable_to_non_nullable
              as bool?,
      storedTaxes: freezed == storedTaxes
          ? _value.storedTaxes
          : storedTaxes // ignore: cast_nullable_to_non_nullable
              as String?,
      coupons: freezed == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      recalculate: freezed == recalculate
          ? _value.recalculate
          : recalculate // ignore: cast_nullable_to_non_nullable
              as bool?,
      calculateShipping: freezed == calculateShipping
          ? _value.calculateShipping
          : calculateShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      freeShipping: freezed == freeShipping
          ? _value._freeShipping
          : freeShipping // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      optionsStyle: freezed == optionsStyle
          ? _value.optionsStyle
          : optionsStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingRequired: freezed == shippingRequired
          ? _value.shippingRequired
          : shippingRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      noPromotions: freezed == noPromotions
          ? _value.noPromotions
          : noPromotions // ignore: cast_nullable_to_non_nullable
              as bool?,
      subtotalDiscount: freezed == subtotalDiscount
          ? _value.subtotalDiscount
          : subtotalDiscount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hasCoupons: freezed == hasCoupons
          ? _value.hasCoupons
          : hasCoupons // ignore: cast_nullable_to_non_nullable
              as bool?,
      productGroups: freezed == productGroups
          ? _value._productGroups
          : productGroups // ignore: cast_nullable_to_non_nullable
              as List<ProductGroup>?,
      chosenShipping: freezed == chosenShipping
          ? _value._chosenShipping
          : chosenShipping // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      chosenShippingDisabled: freezed == chosenShippingDisabled
          ? _value.chosenShippingDisabled
          : chosenShippingDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      pointsInfo: freezed == pointsInfo
          ? _value.pointsInfo
          : pointsInfo // ignore: cast_nullable_to_non_nullable
              as PointsInfo?,
      taxSummary: freezed == taxSummary
          ? _value.taxSummary
          : taxSummary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      taxes: freezed == taxes
          ? _value._taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as List<Taxes>?,
      discountedSubtotal: freezed == discountedSubtotal
          ? _value.discountedSubtotal
          : discountedSubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      guestCheckout: freezed == guestCheckout
          ? _value.guestCheckout
          : guestCheckout // ignore: cast_nullable_to_non_nullable
              as bool?,
      locationHash: freezed == locationHash
          ? _value.locationHash
          : locationHash // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentSurcharge: freezed == paymentSurcharge
          ? _value.paymentSurcharge
          : paymentSurcharge // ignore: cast_nullable_to_non_nullable
              as int?,
      formatSubtotal: freezed == formatSubtotal
          ? _value.formatSubtotal
          : formatSubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      formatDisplaySubtotal: freezed == formatDisplaySubtotal
          ? _value.formatDisplaySubtotal
          : formatDisplaySubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      formatTotal: freezed == formatTotal
          ? _value.formatTotal
          : formatTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      formatShippingCost: freezed == formatShippingCost
          ? _value.formatShippingCost
          : formatShippingCost // ignore: cast_nullable_to_non_nullable
              as String?,
      formatDiscountedSubtotal: freezed == formatDiscountedSubtotal
          ? _value.formatDiscountedSubtotal
          : formatDiscountedSubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      formatPaymentSurcharge: freezed == formatPaymentSurcharge
          ? _value.formatPaymentSurcharge
          : formatPaymentSurcharge // ignore: cast_nullable_to_non_nullable
              as String?,
      formatSubtotalDiscount: freezed == formatSubtotalDiscount
          ? _value.formatSubtotalDiscount
          : formatSubtotalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      formatTaxSubtotal: freezed == formatTaxSubtotal
          ? _value.formatTaxSubtotal
          : formatTaxSubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      cartProducts: freezed == cartProducts
          ? _value._cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>?,
      shippings: freezed == shippings
          ? _value._shippings
          : shippings // ignore: cast_nullable_to_non_nullable
              as List<Shipping>?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      couponsDetails: freezed == couponsDetails
          ? _value._couponsDetails
          : couponsDetails // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      deliverySlots: freezed == deliverySlots
          ? _value._deliverySlots
          : deliverySlots // ignore: cast_nullable_to_non_nullable
              as List<DeliverySlot>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CartImpl implements _Cart {
  _$CartImpl(
      {final List<Product>? products,
      this.shippingCost,
      this.displayShippingCost,
      this.taxSubtotal,
      this.discount,
      this.total,
      this.amount,
      this.originalSubtotal,
      this.displaySubtotal,
      this.subtotal,
      this.useDiscount,
      this.companyShippingFailed,
      this.shippingFailed,
      this.storedTaxes,
      final List<dynamic>? coupons,
      this.recalculate,
      this.calculateShipping,
      final List<dynamic>? freeShipping,
      this.optionsStyle,
      this.shippingRequired,
      this.noPromotions,
      this.subtotalDiscount,
      this.hasCoupons,
      final List<ProductGroup>? productGroups,
      final List<int>? chosenShipping,
      this.chosenShippingDisabled,
      this.pointsInfo,
      this.taxSummary,
      final List<Taxes>? taxes,
      this.discountedSubtotal,
      this.userData,
      this.profileId,
      this.guestCheckout,
      this.locationHash,
      this.paymentSurcharge,
      this.formatSubtotal,
      this.formatDisplaySubtotal,
      this.formatTotal,
      this.formatShippingCost,
      this.formatDiscountedSubtotal,
      this.formatPaymentSurcharge,
      this.formatSubtotalDiscount,
      this.formatTaxSubtotal,
      final List<CartProduct>? cartProducts,
      final List<Shipping>? shippings,
      this.paymentId,
      this.orderId,
      final List<dynamic>? couponsDetails,
      final List<DeliverySlot>? deliverySlots})
      : _products = products,
        _coupons = coupons,
        _freeShipping = freeShipping,
        _productGroups = productGroups,
        _chosenShipping = chosenShipping,
        _taxes = taxes,
        _cartProducts = cartProducts,
        _shippings = shippings,
        _couponsDetails = couponsDetails,
        _deliverySlots = deliverySlots;

  factory _$CartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartImplFromJson(json);

  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic shippingCost;
  @override
  final double? displayShippingCost;
  @override
  final int? taxSubtotal;
  @override
  final int? discount;
  @override
  final String? total;
  @override
  final int? amount;
  @override
  final int? originalSubtotal;
  @override
  final String? displaySubtotal;
  @override
  final String? subtotal;
  @override
  final bool? useDiscount;
  @override
  final bool? companyShippingFailed;
  @override
  final bool? shippingFailed;
  @override
  final String? storedTaxes;
  final List<dynamic>? _coupons;
  @override
  List<dynamic>? get coupons {
    final value = _coupons;
    if (value == null) return null;
    if (_coupons is EqualUnmodifiableListView) return _coupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? recalculate;
  @override
  final bool? calculateShipping;
  final List<dynamic>? _freeShipping;
  @override
  List<dynamic>? get freeShipping {
    final value = _freeShipping;
    if (value == null) return null;
    if (_freeShipping is EqualUnmodifiableListView) return _freeShipping;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? optionsStyle;
  @override
  final bool? shippingRequired;
  @override
  final bool? noPromotions;
  @override
  final dynamic subtotalDiscount;
  @override
  final bool? hasCoupons;
  final List<ProductGroup>? _productGroups;
  @override
  List<ProductGroup>? get productGroups {
    final value = _productGroups;
    if (value == null) return null;
    if (_productGroups is EqualUnmodifiableListView) return _productGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _chosenShipping;
  @override
  List<int>? get chosenShipping {
    final value = _chosenShipping;
    if (value == null) return null;
    if (_chosenShipping is EqualUnmodifiableListView) return _chosenShipping;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? chosenShippingDisabled;
  @override
  final PointsInfo? pointsInfo;
  @override
  final dynamic taxSummary;
  final List<Taxes>? _taxes;
  @override
  List<Taxes>? get taxes {
    final value = _taxes;
    if (value == null) return null;
    if (_taxes is EqualUnmodifiableListView) return _taxes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? discountedSubtotal;
  @override
  final dynamic userData;
  @override
  final dynamic profileId;
  @override
  final bool? guestCheckout;
  @override
  final String? locationHash;
  @override
  final int? paymentSurcharge;
  @override
  final String? formatSubtotal;
  @override
  final String? formatDisplaySubtotal;
  @override
  final String? formatTotal;
  @override
  final String? formatShippingCost;
  @override
  final String? formatDiscountedSubtotal;
  @override
  final String? formatPaymentSurcharge;
  @override
  final String? formatSubtotalDiscount;
  @override
  final String? formatTaxSubtotal;
  final List<CartProduct>? _cartProducts;
  @override
  List<CartProduct>? get cartProducts {
    final value = _cartProducts;
    if (value == null) return null;
    if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Shipping>? _shippings;
  @override
  List<Shipping>? get shippings {
    final value = _shippings;
    if (value == null) return null;
    if (_shippings is EqualUnmodifiableListView) return _shippings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic paymentId;
  @override
  final dynamic orderId;
  final List<dynamic>? _couponsDetails;
  @override
  List<dynamic>? get couponsDetails {
    final value = _couponsDetails;
    if (value == null) return null;
    if (_couponsDetails is EqualUnmodifiableListView) return _couponsDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DeliverySlot>? _deliverySlots;
  @override
  List<DeliverySlot>? get deliverySlots {
    final value = _deliverySlots;
    if (value == null) return null;
    if (_deliverySlots is EqualUnmodifiableListView) return _deliverySlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Cart(products: $products, shippingCost: $shippingCost, displayShippingCost: $displayShippingCost, taxSubtotal: $taxSubtotal, discount: $discount, total: $total, amount: $amount, originalSubtotal: $originalSubtotal, displaySubtotal: $displaySubtotal, subtotal: $subtotal, useDiscount: $useDiscount, companyShippingFailed: $companyShippingFailed, shippingFailed: $shippingFailed, storedTaxes: $storedTaxes, coupons: $coupons, recalculate: $recalculate, calculateShipping: $calculateShipping, freeShipping: $freeShipping, optionsStyle: $optionsStyle, shippingRequired: $shippingRequired, noPromotions: $noPromotions, subtotalDiscount: $subtotalDiscount, hasCoupons: $hasCoupons, productGroups: $productGroups, chosenShipping: $chosenShipping, chosenShippingDisabled: $chosenShippingDisabled, pointsInfo: $pointsInfo, taxSummary: $taxSummary, taxes: $taxes, discountedSubtotal: $discountedSubtotal, userData: $userData, profileId: $profileId, guestCheckout: $guestCheckout, locationHash: $locationHash, paymentSurcharge: $paymentSurcharge, formatSubtotal: $formatSubtotal, formatDisplaySubtotal: $formatDisplaySubtotal, formatTotal: $formatTotal, formatShippingCost: $formatShippingCost, formatDiscountedSubtotal: $formatDiscountedSubtotal, formatPaymentSurcharge: $formatPaymentSurcharge, formatSubtotalDiscount: $formatSubtotalDiscount, formatTaxSubtotal: $formatTaxSubtotal, cartProducts: $cartProducts, shippings: $shippings, paymentId: $paymentId, orderId: $orderId, couponsDetails: $couponsDetails, deliverySlots: $deliverySlots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other.shippingCost, shippingCost) &&
            (identical(other.displayShippingCost, displayShippingCost) ||
                other.displayShippingCost == displayShippingCost) &&
            (identical(other.taxSubtotal, taxSubtotal) ||
                other.taxSubtotal == taxSubtotal) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.originalSubtotal, originalSubtotal) ||
                other.originalSubtotal == originalSubtotal) &&
            (identical(other.displaySubtotal, displaySubtotal) ||
                other.displaySubtotal == displaySubtotal) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.useDiscount, useDiscount) ||
                other.useDiscount == useDiscount) &&
            (identical(other.companyShippingFailed, companyShippingFailed) ||
                other.companyShippingFailed == companyShippingFailed) &&
            (identical(other.shippingFailed, shippingFailed) ||
                other.shippingFailed == shippingFailed) &&
            (identical(other.storedTaxes, storedTaxes) ||
                other.storedTaxes == storedTaxes) &&
            const DeepCollectionEquality().equals(other._coupons, _coupons) &&
            (identical(other.recalculate, recalculate) ||
                other.recalculate == recalculate) &&
            (identical(other.calculateShipping, calculateShipping) ||
                other.calculateShipping == calculateShipping) &&
            const DeepCollectionEquality()
                .equals(other._freeShipping, _freeShipping) &&
            (identical(other.optionsStyle, optionsStyle) ||
                other.optionsStyle == optionsStyle) &&
            (identical(other.shippingRequired, shippingRequired) ||
                other.shippingRequired == shippingRequired) &&
            (identical(other.noPromotions, noPromotions) ||
                other.noPromotions == noPromotions) &&
            const DeepCollectionEquality()
                .equals(other.subtotalDiscount, subtotalDiscount) &&
            (identical(other.hasCoupons, hasCoupons) ||
                other.hasCoupons == hasCoupons) &&
            const DeepCollectionEquality()
                .equals(other._productGroups, _productGroups) &&
            const DeepCollectionEquality()
                .equals(other._chosenShipping, _chosenShipping) &&
            (identical(other.chosenShippingDisabled, chosenShippingDisabled) ||
                other.chosenShippingDisabled == chosenShippingDisabled) &&
            (identical(other.pointsInfo, pointsInfo) ||
                other.pointsInfo == pointsInfo) &&
            const DeepCollectionEquality()
                .equals(other.taxSummary, taxSummary) &&
            const DeepCollectionEquality().equals(other._taxes, _taxes) &&
            (identical(other.discountedSubtotal, discountedSubtotal) ||
                other.discountedSubtotal == discountedSubtotal) &&
            const DeepCollectionEquality().equals(other.userData, userData) &&
            const DeepCollectionEquality().equals(other.profileId, profileId) &&
            (identical(other.guestCheckout, guestCheckout) ||
                other.guestCheckout == guestCheckout) &&
            (identical(other.locationHash, locationHash) ||
                other.locationHash == locationHash) &&
            (identical(other.paymentSurcharge, paymentSurcharge) ||
                other.paymentSurcharge == paymentSurcharge) &&
            (identical(other.formatSubtotal, formatSubtotal) ||
                other.formatSubtotal == formatSubtotal) &&
            (identical(other.formatDisplaySubtotal, formatDisplaySubtotal) ||
                other.formatDisplaySubtotal == formatDisplaySubtotal) &&
            (identical(other.formatTotal, formatTotal) ||
                other.formatTotal == formatTotal) &&
            (identical(other.formatShippingCost, formatShippingCost) ||
                other.formatShippingCost == formatShippingCost) &&
            (identical(
                    other.formatDiscountedSubtotal, formatDiscountedSubtotal) ||
                other.formatDiscountedSubtotal == formatDiscountedSubtotal) &&
            (identical(other.formatPaymentSurcharge, formatPaymentSurcharge) ||
                other.formatPaymentSurcharge == formatPaymentSurcharge) &&
            (identical(other.formatSubtotalDiscount, formatSubtotalDiscount) ||
                other.formatSubtotalDiscount == formatSubtotalDiscount) &&
            (identical(other.formatTaxSubtotal, formatTaxSubtotal) ||
                other.formatTaxSubtotal == formatTaxSubtotal) &&
            const DeepCollectionEquality()
                .equals(other._cartProducts, _cartProducts) &&
            const DeepCollectionEquality()
                .equals(other._shippings, _shippings) &&
            const DeepCollectionEquality().equals(other.paymentId, paymentId) &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality()
                .equals(other._couponsDetails, _couponsDetails) &&
            const DeepCollectionEquality()
                .equals(other._deliverySlots, _deliverySlots));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_products),
        const DeepCollectionEquality().hash(shippingCost),
        displayShippingCost,
        taxSubtotal,
        discount,
        total,
        amount,
        originalSubtotal,
        displaySubtotal,
        subtotal,
        useDiscount,
        companyShippingFailed,
        shippingFailed,
        storedTaxes,
        const DeepCollectionEquality().hash(_coupons),
        recalculate,
        calculateShipping,
        const DeepCollectionEquality().hash(_freeShipping),
        optionsStyle,
        shippingRequired,
        noPromotions,
        const DeepCollectionEquality().hash(subtotalDiscount),
        hasCoupons,
        const DeepCollectionEquality().hash(_productGroups),
        const DeepCollectionEquality().hash(_chosenShipping),
        chosenShippingDisabled,
        pointsInfo,
        const DeepCollectionEquality().hash(taxSummary),
        const DeepCollectionEquality().hash(_taxes),
        discountedSubtotal,
        const DeepCollectionEquality().hash(userData),
        const DeepCollectionEquality().hash(profileId),
        guestCheckout,
        locationHash,
        paymentSurcharge,
        formatSubtotal,
        formatDisplaySubtotal,
        formatTotal,
        formatShippingCost,
        formatDiscountedSubtotal,
        formatPaymentSurcharge,
        formatSubtotalDiscount,
        formatTaxSubtotal,
        const DeepCollectionEquality().hash(_cartProducts),
        const DeepCollectionEquality().hash(_shippings),
        const DeepCollectionEquality().hash(paymentId),
        const DeepCollectionEquality().hash(orderId),
        const DeepCollectionEquality().hash(_couponsDetails),
        const DeepCollectionEquality().hash(_deliverySlots)
      ]);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      __$$CartImplCopyWithImpl<_$CartImpl>(this, _$identity);
}

abstract class _Cart implements Cart {
  factory _Cart(
      {final List<Product>? products,
      final dynamic shippingCost,
      final double? displayShippingCost,
      final int? taxSubtotal,
      final int? discount,
      final String? total,
      final int? amount,
      final int? originalSubtotal,
      final String? displaySubtotal,
      final String? subtotal,
      final bool? useDiscount,
      final bool? companyShippingFailed,
      final bool? shippingFailed,
      final String? storedTaxes,
      final List<dynamic>? coupons,
      final bool? recalculate,
      final bool? calculateShipping,
      final List<dynamic>? freeShipping,
      final String? optionsStyle,
      final bool? shippingRequired,
      final bool? noPromotions,
      final dynamic subtotalDiscount,
      final bool? hasCoupons,
      final List<ProductGroup>? productGroups,
      final List<int>? chosenShipping,
      final bool? chosenShippingDisabled,
      final PointsInfo? pointsInfo,
      final dynamic taxSummary,
      final List<Taxes>? taxes,
      final String? discountedSubtotal,
      final dynamic userData,
      final dynamic profileId,
      final bool? guestCheckout,
      final String? locationHash,
      final int? paymentSurcharge,
      final String? formatSubtotal,
      final String? formatDisplaySubtotal,
      final String? formatTotal,
      final String? formatShippingCost,
      final String? formatDiscountedSubtotal,
      final String? formatPaymentSurcharge,
      final String? formatSubtotalDiscount,
      final String? formatTaxSubtotal,
      final List<CartProduct>? cartProducts,
      final List<Shipping>? shippings,
      final dynamic paymentId,
      final dynamic orderId,
      final List<dynamic>? couponsDetails,
      final List<DeliverySlot>? deliverySlots}) = _$CartImpl;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$CartImpl.fromJson;

  @override
  List<Product>? get products;
  @override
  dynamic get shippingCost;
  @override
  double? get displayShippingCost;
  @override
  int? get taxSubtotal;
  @override
  int? get discount;
  @override
  String? get total;
  @override
  int? get amount;
  @override
  int? get originalSubtotal;
  @override
  String? get displaySubtotal;
  @override
  String? get subtotal;
  @override
  bool? get useDiscount;
  @override
  bool? get companyShippingFailed;
  @override
  bool? get shippingFailed;
  @override
  String? get storedTaxes;
  @override
  List<dynamic>? get coupons;
  @override
  bool? get recalculate;
  @override
  bool? get calculateShipping;
  @override
  List<dynamic>? get freeShipping;
  @override
  String? get optionsStyle;
  @override
  bool? get shippingRequired;
  @override
  bool? get noPromotions;
  @override
  dynamic get subtotalDiscount;
  @override
  bool? get hasCoupons;
  @override
  List<ProductGroup>? get productGroups;
  @override
  List<int>? get chosenShipping;
  @override
  bool? get chosenShippingDisabled;
  @override
  PointsInfo? get pointsInfo;
  @override
  dynamic get taxSummary;
  @override
  List<Taxes>? get taxes;
  @override
  String? get discountedSubtotal;
  @override
  dynamic get userData;
  @override
  dynamic get profileId;
  @override
  bool? get guestCheckout;
  @override
  String? get locationHash;
  @override
  int? get paymentSurcharge;
  @override
  String? get formatSubtotal;
  @override
  String? get formatDisplaySubtotal;
  @override
  String? get formatTotal;
  @override
  String? get formatShippingCost;
  @override
  String? get formatDiscountedSubtotal;
  @override
  String? get formatPaymentSurcharge;
  @override
  String? get formatSubtotalDiscount;
  @override
  String? get formatTaxSubtotal;
  @override
  List<CartProduct>? get cartProducts;
  @override
  List<Shipping>? get shippings;
  @override
  dynamic get paymentId;
  @override
  dynamic get orderId;
  @override
  List<dynamic>? get couponsDetails;
  @override
  List<DeliverySlot>? get deliverySlots;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
