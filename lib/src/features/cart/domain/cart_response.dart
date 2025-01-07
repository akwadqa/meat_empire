class CartResponse {
  bool? allowMultipleProfiles;
  List<UserProfiles>? userProfiles;
  Cart? cart;
  String? totalProducts;
  String? message;
  bool? success;

  CartResponse(
      {this.allowMultipleProfiles,
      this.userProfiles,
      this.cart,
      this.totalProducts,
      this.message,
      this.success});

  CartResponse.fromJson(Map<String, dynamic> json) {
    allowMultipleProfiles = json["allow_multiple_profiles"];
    userProfiles = json["user_profiles"] == null
        ? null
        : (json["user_profiles"] as List)
            .map((e) => UserProfiles.fromJson(e))
            .toList();
    cart = json["cart"] == null ? null : Cart.fromJson(json["cart"]);
    totalProducts = json["total_products"];
    message = json["message"];
    success = json["success"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["allow_multiple_profiles"] = allowMultipleProfiles;
    if (userProfiles != null) {
      data["user_profiles"] = userProfiles?.map((e) => e.toJson()).toList();
    }
    if (cart != null) {
      data["cart"] = cart?.toJson();
    }
    data["total_products"] = totalProducts;
    data["message"] = message;
    data["success"] = success;
    return data;
  }

  CartResponse copyWith({
    bool? allowMultipleProfiles,
    List<UserProfiles>? userProfiles,
    Cart? cart,
    String? totalProducts,
    String? message,
    bool? success,
  }) =>
      CartResponse(
        allowMultipleProfiles:
            allowMultipleProfiles ?? this.allowMultipleProfiles,
        userProfiles: userProfiles ?? this.userProfiles,
        cart: cart ?? this.cart,
        totalProducts: totalProducts ?? this.totalProducts,
        message: message ?? this.message,
        success: success ?? this.success,
      );
}

class Cart {
  List<Products>? products;
  String? shippingCost;
  double? displayShippingCost;
  int? taxSubtotal;
  int? discount;
  String? total;
  int? amount;
  int? originalSubtotal;
  String? displaySubtotal;
  String? subtotal;
  bool? useDiscount;
  bool? companyShippingFailed;
  bool? shippingFailed;
  String? storedTaxes;
  List<dynamic>? coupons;
  bool? recalculate;
  bool? calculateShipping;
  List<dynamic>? freeShipping;
  String? optionsStyle;
  bool? shippingRequired;
  bool? noPromotions;
  String? subtotalDiscount;
  bool? hasCoupons;
  List<ProductGroups>? productGroups;
  List<int>? chosenShipping;
  bool? chosenShippingDisabled;
  PointsInfo? pointsInfo;
  TaxSummary? taxSummary;
  List<Taxes>? taxes;
  String? discountedSubtotal;
  UserData2? userData;
  String? profileId;
  bool? guestCheckout;
  String? locationHash;
  int? paymentSurcharge;
  String? formatSubtotal;
  String? formatDisplaySubtotal;
  String? formatTotal;
  String? formatShippingCost;
  String? formatDiscountedSubtotal;
  String? formatPaymentSurcharge;
  String? formatSubtotalDiscount;
  String? formatTaxSubtotal;
  List<CartProducts>? cartProducts;
  List<Shippings1>? shippings;
  int? paymentId;
  int? orderId;
  List<dynamic>? couponsDetails;
  List<DeliverySlots>? deliverySlots;

  Cart(
      {this.products,
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
      this.coupons,
      this.recalculate,
      this.calculateShipping,
      this.freeShipping,
      this.optionsStyle,
      this.shippingRequired,
      this.noPromotions,
      this.subtotalDiscount,
      this.hasCoupons,
      this.productGroups,
      this.chosenShipping,
      this.chosenShippingDisabled,
      this.pointsInfo,
      this.taxSummary,
      this.taxes,
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
      this.cartProducts,
      this.shippings,
      this.paymentId,
      this.orderId,
      this.couponsDetails,
      this.deliverySlots});

  Cart.fromJson(Map<String, dynamic> json) {
    products = json["products"] == null
        ? null
        : (json["products"] as List).map((e) => Products.fromJson(e)).toList();
    shippingCost = json["shipping_cost"];
    displayShippingCost = json["display_shipping_cost"];
    taxSubtotal = json["tax_subtotal"];
    discount = json["discount"];
    total = json["total"];
    amount = json["amount"];
    originalSubtotal = json["original_subtotal"];
    displaySubtotal = json["display_subtotal"];
    subtotal = json["subtotal"];
    useDiscount = json["use_discount"];
    companyShippingFailed = json["company_shipping_failed"];
    shippingFailed = json["shipping_failed"];
    storedTaxes = json["stored_taxes"];
    coupons = json["coupons"] ?? [];
    recalculate = json["recalculate"];
    calculateShipping = json["calculate_shipping"];
    freeShipping = json["free_shipping"] ?? [];
    optionsStyle = json["options_style"];
    shippingRequired = json["shipping_required"];
    noPromotions = json["no_promotions"];
    subtotalDiscount = json["subtotal_discount"];
    hasCoupons = json["has_coupons"];
    productGroups = json["product_groups"] == null
        ? null
        : (json["product_groups"] as List)
            .map((e) => ProductGroups.fromJson(e))
            .toList();
    chosenShipping = json["chosen_shipping"] == null
        ? null
        : List<int>.from(json["chosen_shipping"]);
    chosenShippingDisabled = json["chosen_shipping_disabled"];
    pointsInfo = json["points_info"] == null
        ? null
        : PointsInfo.fromJson(json["points_info"]);
    taxSummary = json["tax_summary"] == null
        ? null
        : TaxSummary.fromJson(json["tax_summary"]);
    taxes = json["taxes"] == null
        ? null
        : (json["taxes"] as List).map((e) => Taxes.fromJson(e)).toList();
    discountedSubtotal = json["discounted_subtotal"];
    userData = json["user_data"] == null
        ? null
        : UserData2.fromJson(json["user_data"]);
    profileId = json["profile_id"];
    guestCheckout = json["guest_checkout"];
    locationHash = json["location_hash"];
    paymentSurcharge = json["payment_surcharge"];
    formatSubtotal = json["format_subtotal"];
    formatDisplaySubtotal = json["format_display_subtotal"];
    formatTotal = json["format_total"];
    formatShippingCost = json["format_shipping_cost"];
    formatDiscountedSubtotal = json["format_discounted_subtotal"];
    formatPaymentSurcharge = json["format_payment_surcharge"];
    formatSubtotalDiscount = json["format_subtotal_discount"];
    formatTaxSubtotal = json["format_tax_subtotal"];
    cartProducts = json["cart_products"] == null
        ? null
        : (json["cart_products"] as List)
            .map((e) => CartProducts.fromJson(e))
            .toList();
    shippings = json["shippings"] == null
        ? null
        : (json["shippings"] as List)
            .map((e) => Shippings1.fromJson(e))
            .toList();
    paymentId = json["payment_id"];
    orderId = json["order_id"];
    couponsDetails = json["coupons_details"] ?? [];
    deliverySlots = json["delivery_slots"] == null
        ? null
        : (json["delivery_slots"] as List)
            .map((e) => DeliverySlots.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (products != null) {
      data["products"] = products?.map((e) => e.toJson()).toList();
    }
    data["shipping_cost"] = shippingCost;
    data["display_shipping_cost"] = displayShippingCost;
    data["tax_subtotal"] = taxSubtotal;
    data["discount"] = discount;
    data["total"] = total;
    data["amount"] = amount;
    data["original_subtotal"] = originalSubtotal;
    data["display_subtotal"] = displaySubtotal;
    data["subtotal"] = subtotal;
    data["use_discount"] = useDiscount;
    data["company_shipping_failed"] = companyShippingFailed;
    data["shipping_failed"] = shippingFailed;
    data["stored_taxes"] = storedTaxes;
    if (coupons != null) {
      data["coupons"] = coupons;
    }
    data["recalculate"] = recalculate;
    data["calculate_shipping"] = calculateShipping;
    if (freeShipping != null) {
      data["free_shipping"] = freeShipping;
    }
    data["options_style"] = optionsStyle;
    data["shipping_required"] = shippingRequired;
    data["no_promotions"] = noPromotions;
    data["subtotal_discount"] = subtotalDiscount;
    data["has_coupons"] = hasCoupons;
    if (productGroups != null) {
      data["product_groups"] = productGroups?.map((e) => e.toJson()).toList();
    }
    if (chosenShipping != null) {
      data["chosen_shipping"] = chosenShipping;
    }
    data["chosen_shipping_disabled"] = chosenShippingDisabled;
    if (pointsInfo != null) {
      data["points_info"] = pointsInfo?.toJson();
    }
    if (taxSummary != null) {
      data["tax_summary"] = taxSummary?.toJson();
    }
    if (taxes != null) {
      data["taxes"] = taxes?.map((e) => e.toJson()).toList();
    }
    data["discounted_subtotal"] = discountedSubtotal;
    if (userData != null) {
      data["user_data"] = userData?.toJson();
    }
    data["profile_id"] = profileId;
    data["guest_checkout"] = guestCheckout;
    data["location_hash"] = locationHash;
    data["payment_surcharge"] = paymentSurcharge;
    data["format_subtotal"] = formatSubtotal;
    data["format_display_subtotal"] = formatDisplaySubtotal;
    data["format_total"] = formatTotal;
    data["format_shipping_cost"] = formatShippingCost;
    data["format_discounted_subtotal"] = formatDiscountedSubtotal;
    data["format_payment_surcharge"] = formatPaymentSurcharge;
    data["format_subtotal_discount"] = formatSubtotalDiscount;
    data["format_tax_subtotal"] = formatTaxSubtotal;
    if (cartProducts != null) {
      data["cart_products"] = cartProducts?.map((e) => e.toJson()).toList();
    }
    if (shippings != null) {
      data["shippings"] = shippings?.map((e) => e.toJson()).toList();
    }
    data["payment_id"] = paymentId;
    data["order_id"] = orderId;
    if (couponsDetails != null) {
      data["coupons_details"] = couponsDetails;
    }
    if (deliverySlots != null) {
      data["delivery_slots"] = deliverySlots?.map((e) => e.toJson()).toList();
    }
    return data;
  }

  Cart copyWith({
    List<Products>? products,
    String? shippingCost,
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
    String? subtotalDiscount,
    bool? hasCoupons,
    List<ProductGroups>? productGroups,
    List<int>? chosenShipping,
    bool? chosenShippingDisabled,
    PointsInfo? pointsInfo,
    TaxSummary? taxSummary,
    List<Taxes>? taxes,
    String? discountedSubtotal,
    UserData2? userData,
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
    List<CartProducts>? cartProducts,
    List<Shippings1>? shippings,
    int? paymentId,
    int? orderId,
    List<dynamic>? couponsDetails,
    List<DeliverySlots>? deliverySlots,
  }) =>
      Cart(
        products: products ?? this.products,
        shippingCost: shippingCost ?? this.shippingCost,
        displayShippingCost: displayShippingCost ?? this.displayShippingCost,
        taxSubtotal: taxSubtotal ?? this.taxSubtotal,
        discount: discount ?? this.discount,
        total: total ?? this.total,
        amount: amount ?? this.amount,
        originalSubtotal: originalSubtotal ?? this.originalSubtotal,
        displaySubtotal: displaySubtotal ?? this.displaySubtotal,
        subtotal: subtotal ?? this.subtotal,
        useDiscount: useDiscount ?? this.useDiscount,
        companyShippingFailed:
            companyShippingFailed ?? this.companyShippingFailed,
        shippingFailed: shippingFailed ?? this.shippingFailed,
        storedTaxes: storedTaxes ?? this.storedTaxes,
        coupons: coupons ?? this.coupons,
        recalculate: recalculate ?? this.recalculate,
        calculateShipping: calculateShipping ?? this.calculateShipping,
        freeShipping: freeShipping ?? this.freeShipping,
        optionsStyle: optionsStyle ?? this.optionsStyle,
        shippingRequired: shippingRequired ?? this.shippingRequired,
        noPromotions: noPromotions ?? this.noPromotions,
        subtotalDiscount: subtotalDiscount ?? this.subtotalDiscount,
        hasCoupons: hasCoupons ?? this.hasCoupons,
        productGroups: productGroups ?? this.productGroups,
        chosenShipping: chosenShipping ?? this.chosenShipping,
        chosenShippingDisabled:
            chosenShippingDisabled ?? this.chosenShippingDisabled,
        pointsInfo: pointsInfo ?? this.pointsInfo,
        taxSummary: taxSummary ?? this.taxSummary,
        taxes: taxes ?? this.taxes,
        discountedSubtotal: discountedSubtotal ?? this.discountedSubtotal,
        userData: userData ?? this.userData,
        profileId: profileId ?? this.profileId,
        guestCheckout: guestCheckout ?? this.guestCheckout,
        locationHash: locationHash ?? this.locationHash,
        paymentSurcharge: paymentSurcharge ?? this.paymentSurcharge,
        formatSubtotal: formatSubtotal ?? this.formatSubtotal,
        formatDisplaySubtotal:
            formatDisplaySubtotal ?? this.formatDisplaySubtotal,
        formatTotal: formatTotal ?? this.formatTotal,
        formatShippingCost: formatShippingCost ?? this.formatShippingCost,
        formatDiscountedSubtotal:
            formatDiscountedSubtotal ?? this.formatDiscountedSubtotal,
        formatPaymentSurcharge:
            formatPaymentSurcharge ?? this.formatPaymentSurcharge,
        formatSubtotalDiscount:
            formatSubtotalDiscount ?? this.formatSubtotalDiscount,
        formatTaxSubtotal: formatTaxSubtotal ?? this.formatTaxSubtotal,
        cartProducts: cartProducts ?? this.cartProducts,
        shippings: shippings ?? this.shippings,
        paymentId: paymentId ?? this.paymentId,
        orderId: orderId ?? this.orderId,
        couponsDetails: couponsDetails ?? this.couponsDetails,
        deliverySlots: deliverySlots ?? this.deliverySlots,
      );
}

class DeliverySlots {
  String? date;
  int? timestamp;
  String? heading;
  String? subheading;
  bool? unavailable;
  String? reason;
  List<Slots>? slots;

  DeliverySlots(
      {this.date,
      this.timestamp,
      this.heading,
      this.subheading,
      this.unavailable,
      this.reason,
      this.slots});

  DeliverySlots.fromJson(Map<String, dynamic> json) {
    date = json["date"];
    timestamp = json["timestamp"];
    heading = json["heading"];
    subheading = json["subheading"];
    unavailable = json["unavailable"];
    reason = json["reason"];
    slots = json["slots"] == null
        ? null
        : (json["slots"] as List).map((e) => Slots.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["date"] = date;
    data["timestamp"] = timestamp;
    data["heading"] = heading;
    data["subheading"] = subheading;
    data["unavailable"] = unavailable;
    data["reason"] = reason;
    if (slots != null) {
      data["slots"] = slots?.map((e) => e.toJson()).toList();
    }
    return data;
  }

  DeliverySlots copyWith({
    String? date,
    int? timestamp,
    String? heading,
    String? subheading,
    bool? unavailable,
    String? reason,
    List<Slots>? slots,
  }) =>
      DeliverySlots(
        date: date ?? this.date,
        timestamp: timestamp ?? this.timestamp,
        heading: heading ?? this.heading,
        subheading: subheading ?? this.subheading,
        unavailable: unavailable ?? this.unavailable,
        reason: reason ?? this.reason,
        slots: slots ?? this.slots,
      );
}

class Slots {
  String? slot;
  String? formatSlot;
  String? from;
  String? to;
  String? note;

  Slots({this.slot, this.formatSlot, this.from, this.to, this.note});

  Slots.fromJson(Map<String, dynamic> json) {
    slot = json["slot"];
    formatSlot = json["format_slot"];
    from = json["from"];
    to = json["to"];
    note = json["note"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["slot"] = slot;
    data["format_slot"] = formatSlot;
    data["from"] = from;
    data["to"] = to;
    data["note"] = note;
    return data;
  }

  Slots copyWith({
    String? slot,
    String? formatSlot,
    String? from,
    String? to,
    String? note,
  }) =>
      Slots(
        slot: slot ?? this.slot,
        formatSlot: formatSlot ?? this.formatSlot,
        from: from ?? this.from,
        to: to ?? this.to,
        note: note ?? this.note,
      );
}

class Shippings1 {
  String? shippingId;
  String? shipping;
  String? description;
  String? serviceDeliveryTime;
  double? rate;
  String? formatRate;

  Shippings1(
      {this.shippingId,
      this.shipping,
      this.description,
      this.serviceDeliveryTime,
      this.rate,
      this.formatRate});

  Shippings1.fromJson(Map<String, dynamic> json) {
    shippingId = json["shipping_id"];
    shipping = json["shipping"];
    description = json["description"];
    serviceDeliveryTime = json["service_delivery_time"];
    rate = json["rate"];
    formatRate = json["format_rate"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["shipping_id"] = shippingId;
    data["shipping"] = shipping;
    data["description"] = description;
    data["service_delivery_time"] = serviceDeliveryTime;
    data["rate"] = rate;
    data["format_rate"] = formatRate;
    return data;
  }

  Shippings1 copyWith({
    String? shippingId,
    String? shipping,
    String? description,
    String? serviceDeliveryTime,
    double? rate,
    String? formatRate,
  }) =>
      Shippings1(
        shippingId: shippingId ?? this.shippingId,
        shipping: shipping ?? this.shipping,
        description: description ?? this.description,
        serviceDeliveryTime: serviceDeliveryTime ?? this.serviceDeliveryTime,
        rate: rate ?? this.rate,
        formatRate: formatRate ?? this.formatRate,
      );
}

class CartProducts {
  String? productId;
  String? companyId;
  List<int>? categoryIds;
  String? productCode;
  int? weight;
  String? tracking;
  String? product;
  dynamic shortDescription;
  String? isEdp;
  String? edpShipping;
  String? shippingFreight;
  String? freeShipping;
  String? zeroPriceAction;
  String? taxIds;
  String? qtyStep;
  String? listQtyCount;
  String? maxQty;
  String? minQty;
  String? inStock;
  ShippingParams? shippingParams;
  String? companyStatus;
  String? outOfStockActions;
  String? updatedTimestamp;
  String? companyName;
  dynamic trackingRaw;
  dynamic zeroPriceActionRaw;
  dynamic minQtyRaw;
  dynamic maxQtyRaw;
  dynamic qtyStepRaw;
  dynamic listQtyCountRaw;
  int? mainCategory;
  String? optionsCount;
  String? price;
  String? basePrice;
  String? isPbp;
  String? isOper;
  String? isOp;
  List<dynamic>? calculation;
  String? originalPrice;
  int? modifiersPrice;
  dynamic amount;
  String? storedPrice;
  List<dynamic>? productOptions;
  String? storedDiscount;
  String? subtotal;
  int? displayPrice;
  String? displaySubtotal;
  MainPair2? mainPair;
  bool? hasOptions;
  Discounts? discounts;
  List<dynamic>? qtyContent;
  DetailedParams? detailedParams;
  String? itemId;
  String? formatPrice;
  String? formatSubtotal;
  String? formatDisplaySubtotal;
  String? formatBasePrice;
  String? formatOriginalPrice;
  String? imageUrl;
  String? wishlistId;

  CartProducts(
      {this.productId,
      this.companyId,
      this.categoryIds,
      this.productCode,
      this.weight,
      this.tracking,
      this.product,
      this.shortDescription,
      this.isEdp,
      this.edpShipping,
      this.shippingFreight,
      this.freeShipping,
      this.zeroPriceAction,
      this.taxIds,
      this.qtyStep,
      this.listQtyCount,
      this.maxQty,
      this.minQty,
      this.inStock,
      this.shippingParams,
      this.companyStatus,
      this.outOfStockActions,
      this.updatedTimestamp,
      this.companyName,
      this.trackingRaw,
      this.zeroPriceActionRaw,
      this.minQtyRaw,
      this.maxQtyRaw,
      this.qtyStepRaw,
      this.listQtyCountRaw,
      this.mainCategory,
      this.optionsCount,
      this.price,
      this.basePrice,
      this.isPbp,
      this.isOper,
      this.isOp,
      this.calculation,
      this.originalPrice,
      this.modifiersPrice,
      this.amount,
      this.storedPrice,
      this.productOptions,
      this.storedDiscount,
      this.subtotal,
      this.displayPrice,
      this.displaySubtotal,
      this.mainPair,
      this.hasOptions,
      this.discounts,
      this.qtyContent,
      this.detailedParams,
      this.itemId,
      this.formatPrice,
      this.formatSubtotal,
      this.formatDisplaySubtotal,
      this.formatBasePrice,
      this.formatOriginalPrice,
      this.imageUrl,
      this.wishlistId});

  CartProducts.fromJson(Map<String, dynamic> json) {
    productId = json["product_id"];
    companyId = json["company_id"];
    categoryIds = json["category_ids"] == null
        ? null
        : List<int>.from(json["category_ids"]);
    productCode = json["product_code"];
    weight = json["weight"];
    tracking = json["tracking"];
    product = json["product"];
    shortDescription = json["short_description"];
    isEdp = json["is_edp"];
    edpShipping = json["edp_shipping"];
    shippingFreight = json["shipping_freight"];
    freeShipping = json["free_shipping"];
    zeroPriceAction = json["zero_price_action"];
    taxIds = json["tax_ids"];
    qtyStep = json["qty_step"];
    listQtyCount = json["list_qty_count"];
    maxQty = json["max_qty"];
    minQty = json["min_qty"];
    inStock = json["in_stock"];
    shippingParams = json["shipping_params"] == null
        ? null
        : ShippingParams.fromJson(json["shipping_params"]);
    companyStatus = json["company_status"];
    outOfStockActions = json["out_of_stock_actions"];
    updatedTimestamp = json["updated_timestamp"];
    companyName = json["company_name"];
    trackingRaw = json["tracking_raw"];
    zeroPriceActionRaw = json["zero_price_action_raw"];
    minQtyRaw = json["min_qty_raw"];
    maxQtyRaw = json["max_qty_raw"];
    qtyStepRaw = json["qty_step_raw"];
    listQtyCountRaw = json["list_qty_count_raw"];
    mainCategory = json["main_category"];
    optionsCount = json["options_count"];
    price = json["price"];
    basePrice = json["base_price"];
    isPbp = json["is_pbp"];
    isOper = json["is_oper"];
    isOp = json["is_op"];
    calculation = json["calculation"] ?? [];
    originalPrice = json["original_price"];
    modifiersPrice = json["modifiers_price"];
    amount = json["amount"];
    storedPrice = json["stored_price"];
    productOptions = json["product_options"] ?? [];
    storedDiscount = json["stored_discount"];
    subtotal = json["subtotal"];
    displayPrice = json["display_price"];
    displaySubtotal = json["display_subtotal"];
    mainPair = json["main_pair"] == null
        ? null
        : MainPair2.fromJson(json["main_pair"]);
    hasOptions = json["has_options"];
    discounts = json["discounts"] == null
        ? null
        : Discounts.fromJson(json["discounts"]);
    qtyContent = json["qty_content"] ?? [];
    detailedParams = json["detailed_params"] == null
        ? null
        : DetailedParams.fromJson(json["detailed_params"]);
    itemId = json["item_id"];
    formatPrice = json["format_price"];
    formatSubtotal = json["format_subtotal"];
    formatDisplaySubtotal = json["format_display_subtotal"];
    formatBasePrice = json["format_base_price"];
    formatOriginalPrice = json["format_original_price"];
    imageUrl = json["image_url"];
    wishlistId = json["wishlist_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["product_id"] = productId;
    data["company_id"] = companyId;
    if (categoryIds != null) {
      data["category_ids"] = categoryIds;
    }
    data["product_code"] = productCode;
    data["weight"] = weight;
    data["tracking"] = tracking;
    data["product"] = product;
    data["short_description"] = shortDescription;
    data["is_edp"] = isEdp;
    data["edp_shipping"] = edpShipping;
    data["shipping_freight"] = shippingFreight;
    data["free_shipping"] = freeShipping;
    data["zero_price_action"] = zeroPriceAction;
    data["tax_ids"] = taxIds;
    data["qty_step"] = qtyStep;
    data["list_qty_count"] = listQtyCount;
    data["max_qty"] = maxQty;
    data["min_qty"] = minQty;
    data["in_stock"] = inStock;
    if (shippingParams != null) {
      data["shipping_params"] = shippingParams?.toJson();
    }
    data["company_status"] = companyStatus;
    data["out_of_stock_actions"] = outOfStockActions;
    data["updated_timestamp"] = updatedTimestamp;
    data["company_name"] = companyName;
    data["tracking_raw"] = trackingRaw;
    data["zero_price_action_raw"] = zeroPriceActionRaw;
    data["min_qty_raw"] = minQtyRaw;
    data["max_qty_raw"] = maxQtyRaw;
    data["qty_step_raw"] = qtyStepRaw;
    data["list_qty_count_raw"] = listQtyCountRaw;
    data["main_category"] = mainCategory;
    data["options_count"] = optionsCount;
    data["price"] = price;
    data["base_price"] = basePrice;
    data["is_pbp"] = isPbp;
    data["is_oper"] = isOper;
    data["is_op"] = isOp;
    if (calculation != null) {
      data["calculation"] = calculation;
    }
    data["original_price"] = originalPrice;
    data["modifiers_price"] = modifiersPrice;
    data["amount"] = amount;
    data["stored_price"] = storedPrice;
    if (productOptions != null) {
      data["product_options"] = productOptions;
    }
    data["stored_discount"] = storedDiscount;
    data["subtotal"] = subtotal;
    data["display_price"] = displayPrice;
    data["display_subtotal"] = displaySubtotal;
    if (mainPair != null) {
      data["main_pair"] = mainPair?.toJson();
    }
    data["has_options"] = hasOptions;
    if (discounts != null) {
      data["discounts"] = discounts?.toJson();
    }
    if (qtyContent != null) {
      data["qty_content"] = qtyContent;
    }
    if (detailedParams != null) {
      data["detailed_params"] = detailedParams?.toJson();
    }
    data["item_id"] = itemId;
    data["format_price"] = formatPrice;
    data["format_subtotal"] = formatSubtotal;
    data["format_display_subtotal"] = formatDisplaySubtotal;
    data["format_base_price"] = formatBasePrice;
    data["format_original_price"] = formatOriginalPrice;
    data["image_url"] = imageUrl;
    data["wishlist_id"] = wishlistId;
    return data;
  }

  CartProducts copyWith({
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
    int? amount,
    String? storedPrice,
    List<dynamic>? productOptions,
    String? storedDiscount,
    String? subtotal,
    int? displayPrice,
    String? displaySubtotal,
    List<dynamic>? variationFeatures,
    MainPair2? mainPair,
    List<dynamic>? selectedOptions,
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
  }) =>
      CartProducts(
        productId: productId ?? this.productId,
        companyId: companyId ?? this.companyId,
        categoryIds: categoryIds ?? this.categoryIds,
        productCode: productCode ?? this.productCode,
        weight: weight ?? this.weight,
        tracking: tracking ?? this.tracking,
        product: product ?? this.product,
        shortDescription: shortDescription ?? this.shortDescription,
        isEdp: isEdp ?? this.isEdp,
        edpShipping: edpShipping ?? this.edpShipping,
        shippingFreight: shippingFreight ?? this.shippingFreight,
        freeShipping: freeShipping ?? this.freeShipping,
        zeroPriceAction: zeroPriceAction ?? this.zeroPriceAction,
        taxIds: taxIds ?? this.taxIds,
        qtyStep: qtyStep ?? this.qtyStep,
        listQtyCount: listQtyCount ?? this.listQtyCount,
        maxQty: maxQty ?? this.maxQty,
        minQty: minQty ?? this.minQty,
        inStock: inStock ?? this.inStock,
        shippingParams: shippingParams ?? this.shippingParams,
        companyStatus: companyStatus ?? this.companyStatus,
        outOfStockActions: outOfStockActions ?? this.outOfStockActions,
        updatedTimestamp: updatedTimestamp ?? this.updatedTimestamp,
        companyName: companyName ?? this.companyName,
        trackingRaw: trackingRaw ?? this.trackingRaw,
        zeroPriceActionRaw: zeroPriceActionRaw ?? this.zeroPriceActionRaw,
        minQtyRaw: minQtyRaw ?? this.minQtyRaw,
        maxQtyRaw: maxQtyRaw ?? this.maxQtyRaw,
        qtyStepRaw: qtyStepRaw ?? this.qtyStepRaw,
        listQtyCountRaw: listQtyCountRaw ?? this.listQtyCountRaw,
        mainCategory: mainCategory ?? this.mainCategory,
        optionsCount: optionsCount ?? this.optionsCount,
        price: price ?? this.price,
        basePrice: basePrice ?? this.basePrice,
        isPbp: isPbp ?? this.isPbp,
        isOper: isOper ?? this.isOper,
        isOp: isOp ?? this.isOp,
        calculation: calculation ?? this.calculation,
        originalPrice: originalPrice ?? this.originalPrice,
        modifiersPrice: modifiersPrice ?? this.modifiersPrice,
        amount: amount ?? this.amount,
        storedPrice: storedPrice ?? this.storedPrice,
        productOptions: productOptions ?? this.productOptions,
        storedDiscount: storedDiscount ?? this.storedDiscount,
        subtotal: subtotal ?? this.subtotal,
        displayPrice: displayPrice ?? this.displayPrice,
        displaySubtotal: displaySubtotal ?? this.displaySubtotal,
        mainPair: mainPair ?? this.mainPair,
        hasOptions: hasOptions ?? this.hasOptions,
        discounts: discounts ?? this.discounts,
        qtyContent: qtyContent ?? this.qtyContent,
        detailedParams: detailedParams ?? this.detailedParams,
        itemId: itemId ?? this.itemId,
        formatPrice: formatPrice ?? this.formatPrice,
        formatSubtotal: formatSubtotal ?? this.formatSubtotal,
        formatDisplaySubtotal:
            formatDisplaySubtotal ?? this.formatDisplaySubtotal,
        formatBasePrice: formatBasePrice ?? this.formatBasePrice,
        formatOriginalPrice: formatOriginalPrice ?? this.formatOriginalPrice,
        imageUrl: imageUrl ?? this.imageUrl,
        wishlistId: wishlistId ?? this.wishlistId,
      );
}

class DetailedParams {
  bool? getIcon;
  bool? getDetailed;
  bool? getAdditional;
  bool? getOptions;
  bool? getDiscounts;
  bool? getFeatures;
  bool? getExtra;
  bool? getTaxedPrices;
  bool? getForOneProduct;
  bool? detailedParams;
  String? featuresDisplayOn;
  bool? getActiveOptions;
  bool? getOnlySelectableOptions;
  bool? getVariationInfo;
  bool? getVariationFeaturesVariants;
  bool? getVariationName;
  bool? getProductType;

  DetailedParams(
      {this.getIcon,
      this.getDetailed,
      this.getAdditional,
      this.getOptions,
      this.getDiscounts,
      this.getFeatures,
      this.getExtra,
      this.getTaxedPrices,
      this.getForOneProduct,
      this.detailedParams,
      this.featuresDisplayOn,
      this.getActiveOptions,
      this.getOnlySelectableOptions,
      this.getVariationInfo,
      this.getVariationFeaturesVariants,
      this.getVariationName,
      this.getProductType});

  DetailedParams.fromJson(Map<String, dynamic> json) {
    getIcon = json["get_icon"];
    getDetailed = json["get_detailed"];
    getAdditional = json["get_additional"];
    getOptions = json["get_options"];
    getDiscounts = json["get_discounts"];
    getFeatures = json["get_features"];
    getExtra = json["get_extra"];
    getTaxedPrices = json["get_taxed_prices"];
    getForOneProduct = json["get_for_one_product"];
    detailedParams = json["detailed_params"];
    featuresDisplayOn = json["features_display_on"];
    getActiveOptions = json["get_active_options"];
    getOnlySelectableOptions = json["get_only_selectable_options"];
    getVariationInfo = json["get_variation_info"];
    getVariationFeaturesVariants = json["get_variation_features_variants"];
    getVariationName = json["get_variation_name"];
    getProductType = json["get_product_type"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["get_icon"] = getIcon;
    data["get_detailed"] = getDetailed;
    data["get_additional"] = getAdditional;
    data["get_options"] = getOptions;
    data["get_discounts"] = getDiscounts;
    data["get_features"] = getFeatures;
    data["get_extra"] = getExtra;
    data["get_taxed_prices"] = getTaxedPrices;
    data["get_for_one_product"] = getForOneProduct;
    data["detailed_params"] = detailedParams;
    data["features_display_on"] = featuresDisplayOn;
    data["get_active_options"] = getActiveOptions;
    data["get_only_selectable_options"] = getOnlySelectableOptions;
    data["get_variation_info"] = getVariationInfo;
    data["get_variation_features_variants"] = getVariationFeaturesVariants;
    data["get_variation_name"] = getVariationName;
    data["get_product_type"] = getProductType;
    return data;
  }

  DetailedParams copyWith({
    bool? getIcon,
    bool? getDetailed,
    bool? getAdditional,
    bool? getOptions,
    bool? getDiscounts,
    bool? getFeatures,
    bool? getExtra,
    bool? getTaxedPrices,
    bool? getForOneProduct,
    bool? detailedParams,
    String? featuresDisplayOn,
    bool? getActiveOptions,
    bool? getOnlySelectableOptions,
    bool? getVariationInfo,
    bool? getVariationFeaturesVariants,
    bool? getVariationName,
    bool? getProductType,
  }) =>
      DetailedParams(
        getIcon: getIcon ?? this.getIcon,
        getDetailed: getDetailed ?? this.getDetailed,
        getAdditional: getAdditional ?? this.getAdditional,
        getOptions: getOptions ?? this.getOptions,
        getDiscounts: getDiscounts ?? this.getDiscounts,
        getFeatures: getFeatures ?? this.getFeatures,
        getExtra: getExtra ?? this.getExtra,
        getTaxedPrices: getTaxedPrices ?? this.getTaxedPrices,
        getForOneProduct: getForOneProduct ?? this.getForOneProduct,
        detailedParams: detailedParams ?? this.detailedParams,
        featuresDisplayOn: featuresDisplayOn ?? this.featuresDisplayOn,
        getActiveOptions: getActiveOptions ?? this.getActiveOptions,
        getOnlySelectableOptions:
            getOnlySelectableOptions ?? this.getOnlySelectableOptions,
        getVariationInfo: getVariationInfo ?? this.getVariationInfo,
        getVariationFeaturesVariants:
            getVariationFeaturesVariants ?? this.getVariationFeaturesVariants,
        getVariationName: getVariationName ?? this.getVariationName,
        getProductType: getProductType ?? this.getProductType,
      );
}

class Discounts {
  int? a;
  int? p;

  Discounts({this.a, this.p});

  Discounts.fromJson(Map<String, dynamic> json) {
    a = json["A"];
    p = json["P"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["A"] = a;
    data["P"] = p;
    return data;
  }

  Discounts copyWith({
    int? a,
    int? p,
  }) =>
      Discounts(
        a: a ?? this.a,
        p: p ?? this.p,
      );
}

class MainPair2 {
  String? pairId;
  String? imageId;
  String? detailedId;
  String? position;
  String? objectId;
  String? objectType;
  Detailed2? detailed;

  MainPair2(
      {this.pairId,
      this.imageId,
      this.detailedId,
      this.position,
      this.objectId,
      this.objectType,
      this.detailed});

  MainPair2.fromJson(Map<String, dynamic> json) {
    pairId = json["pair_id"];
    imageId = json["image_id"];
    detailedId = json["detailed_id"];
    position = json["position"];
    objectId = json["object_id"];
    objectType = json["object_type"];
    detailed =
        json["detailed"] == null ? null : Detailed2.fromJson(json["detailed"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["pair_id"] = pairId;
    data["image_id"] = imageId;
    data["detailed_id"] = detailedId;
    data["position"] = position;
    data["object_id"] = objectId;
    data["object_type"] = objectType;
    if (detailed != null) {
      data["detailed"] = detailed?.toJson();
    }
    return data;
  }

  MainPair2 copyWith({
    String? pairId,
    String? imageId,
    String? detailedId,
    String? position,
    String? objectId,
    String? objectType,
    Detailed2? detailed,
  }) =>
      MainPair2(
        pairId: pairId ?? this.pairId,
        imageId: imageId ?? this.imageId,
        detailedId: detailedId ?? this.detailedId,
        position: position ?? this.position,
        objectId: objectId ?? this.objectId,
        objectType: objectType ?? this.objectType,
        detailed: detailed ?? this.detailed,
      );
}

class Detailed2 {
  String? objectId;
  String? objectType;
  String? type;
  String? imagePath;
  String? alt;
  String? imageX;
  String? imageY;
  String? httpImagePath;
  String? httpsImagePath;
  String? absolutePath;
  String? relativePath;
  bool? isHighRes;

  Detailed2(
      {this.objectId,
      this.objectType,
      this.type,
      this.imagePath,
      this.alt,
      this.imageX,
      this.imageY,
      this.httpImagePath,
      this.httpsImagePath,
      this.absolutePath,
      this.relativePath,
      this.isHighRes});

  Detailed2.fromJson(Map<String, dynamic> json) {
    objectId = json["object_id"];
    objectType = json["object_type"];
    type = json["type"];
    imagePath = json["image_path"];
    alt = json["alt"];
    imageX = json["image_x"];
    imageY = json["image_y"];
    httpImagePath = json["http_image_path"];
    httpsImagePath = json["https_image_path"];
    absolutePath = json["absolute_path"];
    relativePath = json["relative_path"];
    isHighRes = json["is_high_res"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["object_id"] = objectId;
    data["object_type"] = objectType;
    data["type"] = type;
    data["image_path"] = imagePath;
    data["alt"] = alt;
    data["image_x"] = imageX;
    data["image_y"] = imageY;
    data["http_image_path"] = httpImagePath;
    data["https_image_path"] = httpsImagePath;
    data["absolute_path"] = absolutePath;
    data["relative_path"] = relativePath;
    data["is_high_res"] = isHighRes;
    return data;
  }

  Detailed2 copyWith({
    String? objectId,
    String? objectType,
    String? type,
    String? imagePath,
    String? alt,
    String? imageX,
    String? imageY,
    String? httpImagePath,
    String? httpsImagePath,
    String? absolutePath,
    String? relativePath,
    bool? isHighRes,
  }) =>
      Detailed2(
        objectId: objectId ?? this.objectId,
        objectType: objectType ?? this.objectType,
        type: type ?? this.type,
        imagePath: imagePath ?? this.imagePath,
        alt: alt ?? this.alt,
        imageX: imageX ?? this.imageX,
        imageY: imageY ?? this.imageY,
        httpImagePath: httpImagePath ?? this.httpImagePath,
        httpsImagePath: httpsImagePath ?? this.httpsImagePath,
        absolutePath: absolutePath ?? this.absolutePath,
        relativePath: relativePath ?? this.relativePath,
        isHighRes: isHighRes ?? this.isHighRes,
      );
}

class ShippingParams {
  int? minItemsInBox;
  int? maxItemsInBox;
  int? boxLength;
  int? boxWidth;
  int? boxHeight;

  ShippingParams(
      {this.minItemsInBox,
      this.maxItemsInBox,
      this.boxLength,
      this.boxWidth,
      this.boxHeight});

  ShippingParams.fromJson(Map<String, dynamic> json) {
    minItemsInBox = json["min_items_in_box"];
    maxItemsInBox = json["max_items_in_box"];
    boxLength = json["box_length"];
    boxWidth = json["box_width"];
    boxHeight = json["box_height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["min_items_in_box"] = minItemsInBox;
    data["max_items_in_box"] = maxItemsInBox;
    data["box_length"] = boxLength;
    data["box_width"] = boxWidth;
    data["box_height"] = boxHeight;
    return data;
  }

  ShippingParams copyWith({
    int? minItemsInBox,
    int? maxItemsInBox,
    int? boxLength,
    int? boxWidth,
    int? boxHeight,
  }) =>
      ShippingParams(
        minItemsInBox: minItemsInBox ?? this.minItemsInBox,
        maxItemsInBox: maxItemsInBox ?? this.maxItemsInBox,
        boxLength: boxLength ?? this.boxLength,
        boxWidth: boxWidth ?? this.boxWidth,
        boxHeight: boxHeight ?? this.boxHeight,
      );
}

class UserData2 {
  String? userId;
  String? status;
  String? userType;
  String? userLogin;
  String? referer;
  String? isRoot;
  String? companyId;
  String? lastActivity;
  String? timestamp;
  String? password;
  String? salt;
  String? firstname;
  String? lastname;
  String? company;
  String? email;
  String? phone;
  String? fax;
  String? url;
  String? taxExempt;
  String? langCode;
  String? birthday;
  String? purchaseTimestampFrom;
  String? purchaseTimestampTo;
  String? responsibleEmail;
  String? passwordChangeTimestamp;
  String? apiKey;
  String? helpdeskUserId;
  String? janrainIdentifier;
  String? profileId;
  String? profileType;
  String? bFirstname;
  String? bLastname;
  String? bAddress;
  String? bAddress2;
  String? bCity;
  String? bCounty;
  String? bState;
  String? bCountry;
  String? bZipcode;
  String? bPhone;
  String? sFirstname;
  String? sLastname;
  String? sAddress;
  String? sAddress2;
  String? sCity;
  String? sCounty;
  String? sState;
  String? sCountry;
  String? sZipcode;
  String? sPhone;
  String? sAddressType;
  String? profileName;
  String? profileUpdateTimestamp;
  List<dynamic>? fields;
  String? bCountryDescr;
  String? sCountryDescr;
  String? bStateDescr;
  String? sStateDescr;
  int? points;

  UserData2(
      {this.userId,
      this.status,
      this.userType,
      this.userLogin,
      this.referer,
      this.isRoot,
      this.companyId,
      this.lastActivity,
      this.timestamp,
      this.password,
      this.salt,
      this.firstname,
      this.lastname,
      this.company,
      this.email,
      this.phone,
      this.fax,
      this.url,
      this.taxExempt,
      this.langCode,
      this.birthday,
      this.purchaseTimestampFrom,
      this.purchaseTimestampTo,
      this.responsibleEmail,
      this.passwordChangeTimestamp,
      this.apiKey,
      this.helpdeskUserId,
      this.janrainIdentifier,
      this.profileId,
      this.profileType,
      this.bFirstname,
      this.bLastname,
      this.bAddress,
      this.bAddress2,
      this.bCity,
      this.bCounty,
      this.bState,
      this.bCountry,
      this.bZipcode,
      this.bPhone,
      this.sFirstname,
      this.sLastname,
      this.sAddress,
      this.sAddress2,
      this.sCity,
      this.sCounty,
      this.sState,
      this.sCountry,
      this.sZipcode,
      this.sPhone,
      this.sAddressType,
      this.profileName,
      this.profileUpdateTimestamp,
      this.fields,
      this.bCountryDescr,
      this.sCountryDescr,
      this.bStateDescr,
      this.sStateDescr,
      this.points});

  UserData2.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    status = json["status"];
    userType = json["user_type"];
    userLogin = json["user_login"];
    referer = json["referer"];
    isRoot = json["is_root"];
    companyId = json["company_id"];
    lastActivity = json["last_activity"];
    timestamp = json["timestamp"];
    password = json["password"];
    salt = json["salt"];
    firstname = json["firstname"];
    lastname = json["lastname"];
    company = json["company"];
    email = json["email"];
    phone = json["phone"];
    fax = json["fax"];
    url = json["url"];
    taxExempt = json["tax_exempt"];
    langCode = json["lang_code"];
    birthday = json["birthday"];
    purchaseTimestampFrom = json["purchase_timestamp_from"];
    purchaseTimestampTo = json["purchase_timestamp_to"];
    responsibleEmail = json["responsible_email"];
    passwordChangeTimestamp = json["password_change_timestamp"];
    apiKey = json["api_key"];
    helpdeskUserId = json["helpdesk_user_id"];
    janrainIdentifier = json["janrain_identifier"];
    profileId = json["profile_id"];
    profileType = json["profile_type"];
    bFirstname = json["b_firstname"];
    bLastname = json["b_lastname"];
    bAddress = json["b_address"];
    bAddress2 = json["b_address_2"];
    bCity = json["b_city"];
    bCounty = json["b_county"];
    bState = json["b_state"];
    bCountry = json["b_country"];
    bZipcode = json["b_zipcode"];
    bPhone = json["b_phone"];
    sFirstname = json["s_firstname"];
    sLastname = json["s_lastname"];
    sAddress = json["s_address"];
    sAddress2 = json["s_address_2"];
    sCity = json["s_city"];
    sCounty = json["s_county"];
    sState = json["s_state"];
    sCountry = json["s_country"];
    sZipcode = json["s_zipcode"];
    sPhone = json["s_phone"];
    sAddressType = json["s_address_type"];
    profileName = json["profile_name"];
    profileUpdateTimestamp = json["profile_update_timestamp"];
    fields = json["fields"] ?? [];
    bCountryDescr = json["b_country_descr"];
    sCountryDescr = json["s_country_descr"];
    bStateDescr = json["b_state_descr"];
    sStateDescr = json["s_state_descr"];
    points = json["points"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["user_id"] = userId;
    data["status"] = status;
    data["user_type"] = userType;
    data["user_login"] = userLogin;
    data["referer"] = referer;
    data["is_root"] = isRoot;
    data["company_id"] = companyId;
    data["last_activity"] = lastActivity;
    data["timestamp"] = timestamp;
    data["password"] = password;
    data["salt"] = salt;
    data["firstname"] = firstname;
    data["lastname"] = lastname;
    data["company"] = company;
    data["email"] = email;
    data["phone"] = phone;
    data["fax"] = fax;
    data["url"] = url;
    data["tax_exempt"] = taxExempt;
    data["lang_code"] = langCode;
    data["birthday"] = birthday;
    data["purchase_timestamp_from"] = purchaseTimestampFrom;
    data["purchase_timestamp_to"] = purchaseTimestampTo;
    data["responsible_email"] = responsibleEmail;
    data["password_change_timestamp"] = passwordChangeTimestamp;
    data["api_key"] = apiKey;
    data["helpdesk_user_id"] = helpdeskUserId;
    data["janrain_identifier"] = janrainIdentifier;
    data["profile_id"] = profileId;
    data["profile_type"] = profileType;
    data["b_firstname"] = bFirstname;
    data["b_lastname"] = bLastname;
    data["b_address"] = bAddress;
    data["b_address_2"] = bAddress2;
    data["b_city"] = bCity;
    data["b_county"] = bCounty;
    data["b_state"] = bState;
    data["b_country"] = bCountry;
    data["b_zipcode"] = bZipcode;
    data["b_phone"] = bPhone;
    data["s_firstname"] = sFirstname;
    data["s_lastname"] = sLastname;
    data["s_address"] = sAddress;
    data["s_address_2"] = sAddress2;
    data["s_city"] = sCity;
    data["s_county"] = sCounty;
    data["s_state"] = sState;
    data["s_country"] = sCountry;
    data["s_zipcode"] = sZipcode;
    data["s_phone"] = sPhone;
    data["s_address_type"] = sAddressType;
    data["profile_name"] = profileName;
    data["profile_update_timestamp"] = profileUpdateTimestamp;
    if (fields != null) {
      data["fields"] = fields;
    }
    data["b_country_descr"] = bCountryDescr;
    data["s_country_descr"] = sCountryDescr;
    data["b_state_descr"] = bStateDescr;
    data["s_state_descr"] = sStateDescr;
    data["points"] = points;
    return data;
  }

  UserData2 copyWith({
    String? userId,
    String? status,
    String? userType,
    String? userLogin,
    String? referer,
    String? isRoot,
    String? companyId,
    String? lastActivity,
    String? timestamp,
    String? password,
    String? salt,
    String? firstname,
    String? lastname,
    String? company,
    String? email,
    String? phone,
    String? fax,
    String? url,
    String? taxExempt,
    String? langCode,
    String? birthday,
    String? purchaseTimestampFrom,
    String? purchaseTimestampTo,
    String? responsibleEmail,
    String? passwordChangeTimestamp,
    String? apiKey,
    String? helpdeskUserId,
    String? janrainIdentifier,
    String? profileId,
    String? profileType,
    String? bFirstname,
    String? bLastname,
    String? bAddress,
    String? bAddress2,
    String? bCity,
    String? bCounty,
    String? bState,
    String? bCountry,
    String? bZipcode,
    String? bPhone,
    String? sFirstname,
    String? sLastname,
    String? sAddress,
    String? sAddress2,
    String? sCity,
    String? sCounty,
    String? sState,
    String? sCountry,
    String? sZipcode,
    String? sPhone,
    String? sAddressType,
    String? profileName,
    String? profileUpdateTimestamp,
    List<dynamic>? fields,
    String? bCountryDescr,
    String? sCountryDescr,
    String? bStateDescr,
    String? sStateDescr,
    int? points,
  }) =>
      UserData2(
        userId: userId ?? this.userId,
        status: status ?? this.status,
        userType: userType ?? this.userType,
        userLogin: userLogin ?? this.userLogin,
        referer: referer ?? this.referer,
        isRoot: isRoot ?? this.isRoot,
        companyId: companyId ?? this.companyId,
        lastActivity: lastActivity ?? this.lastActivity,
        timestamp: timestamp ?? this.timestamp,
        password: password ?? this.password,
        salt: salt ?? this.salt,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        company: company ?? this.company,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        fax: fax ?? this.fax,
        url: url ?? this.url,
        taxExempt: taxExempt ?? this.taxExempt,
        langCode: langCode ?? this.langCode,
        birthday: birthday ?? this.birthday,
        purchaseTimestampFrom:
            purchaseTimestampFrom ?? this.purchaseTimestampFrom,
        purchaseTimestampTo: purchaseTimestampTo ?? this.purchaseTimestampTo,
        responsibleEmail: responsibleEmail ?? this.responsibleEmail,
        passwordChangeTimestamp:
            passwordChangeTimestamp ?? this.passwordChangeTimestamp,
        apiKey: apiKey ?? this.apiKey,
        helpdeskUserId: helpdeskUserId ?? this.helpdeskUserId,
        janrainIdentifier: janrainIdentifier ?? this.janrainIdentifier,
        profileId: profileId ?? this.profileId,
        profileType: profileType ?? this.profileType,
        bFirstname: bFirstname ?? this.bFirstname,
        bLastname: bLastname ?? this.bLastname,
        bAddress: bAddress ?? this.bAddress,
        bAddress2: bAddress2 ?? this.bAddress2,
        bCity: bCity ?? this.bCity,
        bCounty: bCounty ?? this.bCounty,
        bState: bState ?? this.bState,
        bCountry: bCountry ?? this.bCountry,
        bZipcode: bZipcode ?? this.bZipcode,
        bPhone: bPhone ?? this.bPhone,
        sFirstname: sFirstname ?? this.sFirstname,
        sLastname: sLastname ?? this.sLastname,
        sAddress: sAddress ?? this.sAddress,
        sAddress2: sAddress2 ?? this.sAddress2,
        sCity: sCity ?? this.sCity,
        sCounty: sCounty ?? this.sCounty,
        sState: sState ?? this.sState,
        sCountry: sCountry ?? this.sCountry,
        sZipcode: sZipcode ?? this.sZipcode,
        sPhone: sPhone ?? this.sPhone,
        sAddressType: sAddressType ?? this.sAddressType,
        profileName: profileName ?? this.profileName,
        profileUpdateTimestamp:
            profileUpdateTimestamp ?? this.profileUpdateTimestamp,
        fields: fields ?? this.fields,
        bCountryDescr: bCountryDescr ?? this.bCountryDescr,
        sCountryDescr: sCountryDescr ?? this.sCountryDescr,
        bStateDescr: bStateDescr ?? this.bStateDescr,
        sStateDescr: sStateDescr ?? this.sStateDescr,
        points: points ?? this.points,
      );
}

class Taxes {
  String? taxValue;
  String? taxName;

  Taxes({this.taxValue, this.taxName});

  Taxes.fromJson(Map<String, dynamic> json) {
    taxValue = json["tax_value"];
    taxName = json["tax_name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["tax_value"] = taxValue;
    data["tax_name"] = taxName;
    return data;
  }

  Taxes copyWith({
    String? taxValue,
    String? taxName,
  }) =>
      Taxes(
        taxValue: taxValue ?? this.taxValue,
        taxName: taxName ?? this.taxName,
      );
}

class TaxSummary {
  double? included;
  int? added;
  double? total;

  TaxSummary({this.included, this.added, this.total});

  TaxSummary.fromJson(Map<String, dynamic> json) {
    included = json["included"];
    added = json["added"];
    total = json["total"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["included"] = included;
    data["added"] = added;
    data["total"] = total;
    return data;
  }

  TaxSummary copyWith({
    double? included,
    int? added,
    double? total,
  }) =>
      TaxSummary(
        included: included ?? this.included,
        added: added ?? this.added,
        total: total ?? this.total,
      );
}

class PointsInfo {
  int? rawTotalPrice;
  int? totalPrice;

  PointsInfo({this.rawTotalPrice, this.totalPrice});

  PointsInfo.fromJson(Map<String, dynamic> json) {
    rawTotalPrice = json["raw_total_price"];
    totalPrice = json["total_price"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["raw_total_price"] = rawTotalPrice;
    data["total_price"] = totalPrice;
    return data;
  }

  PointsInfo copyWith({
    int? rawTotalPrice,
    int? totalPrice,
  }) =>
      PointsInfo(
        rawTotalPrice: rawTotalPrice ?? this.rawTotalPrice,
        totalPrice: totalPrice ?? this.totalPrice,
      );
}

class RateInfo {
  String? rateId;
  String? shippingId;
  String? destinationId;
  String? baseRate;

  RateInfo({this.rateId, this.shippingId, this.destinationId, this.baseRate});

  RateInfo.fromJson(Map<String, dynamic> json) {
    rateId = json["rate_id"];
    shippingId = json["shipping_id"];
    destinationId = json["destination_id"];
    baseRate = json["base_rate"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["rate_id"] = rateId;
    data["shipping_id"] = shippingId;
    data["destination_id"] = destinationId;
    data["base_rate"] = baseRate;
    return data;
  }

  RateInfo copyWith({
    String? rateId,
    String? shippingId,
    String? destinationId,
    String? baseRate,
  }) =>
      RateInfo(
        rateId: rateId ?? this.rateId,
        shippingId: shippingId ?? this.shippingId,
        destinationId: destinationId ?? this.destinationId,
        baseRate: baseRate ?? this.baseRate,
      );
}

class ProductGroups {
  int? groupId;
  int? companyId;
  String? companyName;
  List<Shippings>? shippings;
  String? selectedShippingId;
  String? shippingCost;
  List<Products1>? products;

  ProductGroups(
      {this.groupId,
      this.companyId,
      this.companyName,
      this.shippings,
      this.selectedShippingId,
      this.shippingCost,
      this.products});

  ProductGroups.fromJson(Map<String, dynamic> json) {
    groupId = json["group_id"];
    companyId = json["company_id"];
    companyName = json["company_name"];
    shippings = json["shippings"] == null
        ? null
        : (json["shippings"] as List)
            .map((e) => Shippings.fromJson(e))
            .toList();
    selectedShippingId = json["selected_shipping_id"];
    shippingCost = json["shipping_cost"];
    products = json["products"] == null
        ? null
        : (json["products"] as List).map((e) => Products1.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["group_id"] = groupId;
    data["company_id"] = companyId;
    data["company_name"] = companyName;
    if (shippings != null) {
      data["shippings"] = shippings?.map((e) => e.toJson()).toList();
    }
    data["selected_shipping_id"] = selectedShippingId;
    data["shipping_cost"] = shippingCost;
    if (products != null) {
      data["products"] = products?.map((e) => e.toJson()).toList();
    }
    return data;
  }

  ProductGroups copyWith({
    int? groupId,
    int? companyId,
    String? companyName,
    List<Shippings>? shippings,
    String? selectedShippingId,
    String? shippingCost,
    List<Products1>? products,
  }) =>
      ProductGroups(
        groupId: groupId ?? this.groupId,
        companyId: companyId ?? this.companyId,
        companyName: companyName ?? this.companyName,
        shippings: shippings ?? this.shippings,
        selectedShippingId: selectedShippingId ?? this.selectedShippingId,
        shippingCost: shippingCost ?? this.shippingCost,
        products: products ?? this.products,
      );
}

class Products1 {
  String? userId;
  String? timestamp;
  String? type;
  String? userType;
  String? itemId;
  String? itemType;
  int? productId;
  dynamic amount;
  String? price;
  String? sessionId;
  String? ipAddress;
  String? orderId;
  String? storefrontId;
  String? position;
  String? companyId;
  String? productCode;
  String? product;
  List<ProductOptions2>? productOptions;
  String? storedPrice;
  MainPair1? mainPair;
  Extra1? extra;
  String? storedDiscount;
  dynamic amountTotal;
  String? optionsType;
  String? exceptionsType;
  dynamic optionsTypeRaw;
  dynamic exceptionsTypeRaw;
  int? modifiersPrice;
  String? isEdp;
  String? edpShipping;
  int? discount;
  List<dynamic>? promotions;
  String? basePrice;
  List<int>? categoryIds;
  int? displayPrice;
  String? firstname;
  String? lastname;
  String? phone;
  String? email;
  UserData1? userData;
  int? groupId;
  dynamic chosenShipping;
  int? mainCategory;
  String? subtotal;
  String? formatPrice;
  String? formatSubtotal;
  String? formatBasePrice;
  String? imageUrl;
  String? companyName;
  String? wishlistId;

  Products1(
      {this.userId,
      this.timestamp,
      this.type,
      this.userType,
      this.itemId,
      this.itemType,
      this.productId,
      this.amount,
      this.price,
      this.sessionId,
      this.ipAddress,
      this.orderId,
      this.storefrontId,
      this.position,
      this.companyId,
      this.productCode,
      this.product,
      this.productOptions,
      this.storedPrice,
      this.mainPair,
      this.extra,
      this.storedDiscount,
      this.amountTotal,
      this.optionsType,
      this.exceptionsType,
      this.optionsTypeRaw,
      this.exceptionsTypeRaw,
      this.modifiersPrice,
      this.isEdp,
      this.edpShipping,
      this.discount,
      this.promotions,
      this.basePrice,
      this.categoryIds,
      this.displayPrice,
      this.firstname,
      this.lastname,
      this.phone,
      this.email,
      this.userData,
      this.groupId,
      this.chosenShipping,
      this.mainCategory,
      this.subtotal,
      this.formatPrice,
      this.formatSubtotal,
      this.formatBasePrice,
      this.imageUrl,
      this.companyName,
      this.wishlistId});

  Products1.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    timestamp = json["timestamp"];
    type = json["type"];
    userType = json["user_type"];
    itemId = json["item_id"];
    itemType = json["item_type"];
    productId = json["product_id"];
    amount = json["amount"];
    price = json["price"];
    sessionId = json["session_id"];
    ipAddress = json["ip_address"];
    orderId = json["order_id"];
    storefrontId = json["storefront_id"];
    position = json["position"];
    companyId = json["company_id"];
    productCode = json["product_code"];
    product = json["product"];
    productOptions = json["product_options"] == null
        ? null
        : (json["product_options"] as List)
            .map((e) => ProductOptions2.fromJson(e))
            .toList();
    storedPrice = json["stored_price"];
    mainPair = json["main_pair"] == null
        ? null
        : MainPair1.fromJson(json["main_pair"]);
    extra = json["extra"] == null ? null : Extra1.fromJson(json["extra"]);
    storedDiscount = json["stored_discount"];
    amountTotal = json["amount_total"];
    optionsType = json["options_type"];
    exceptionsType = json["exceptions_type"];
    optionsTypeRaw = json["options_type_raw"];
    exceptionsTypeRaw = json["exceptions_type_raw"];
    modifiersPrice = json["modifiers_price"];
    isEdp = json["is_edp"];
    edpShipping = json["edp_shipping"];
    discount = json["discount"];
    promotions = json["promotions"] ?? [];
    basePrice = json["base_price"];
    categoryIds = json["category_ids"] == null
        ? null
        : List<int>.from(json["category_ids"]);
    displayPrice = json["display_price"];
    firstname = json["firstname"];
    lastname = json["lastname"];
    phone = json["phone"];
    email = json["email"];
    userData = json["user_data"] == null
        ? null
        : UserData1.fromJson(json["user_data"]);
    groupId = json["group_id"];
    chosenShipping = json["chosen_shipping"];
    mainCategory = json["main_category"];
    subtotal = json["subtotal"];
    formatPrice = json["format_price"];
    formatSubtotal = json["format_subtotal"];
    formatBasePrice = json["format_base_price"];
    imageUrl = json["image_url"];
    companyName = json["company_name"];
    wishlistId = json["wishlist_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["user_id"] = userId;
    data["timestamp"] = timestamp;
    data["type"] = type;
    data["user_type"] = userType;
    data["item_id"] = itemId;
    data["item_type"] = itemType;
    data["product_id"] = productId;
    data["amount"] = amount;
    data["price"] = price;
    data["session_id"] = sessionId;
    data["ip_address"] = ipAddress;
    data["order_id"] = orderId;
    data["storefront_id"] = storefrontId;
    data["position"] = position;
    data["company_id"] = companyId;
    data["product_code"] = productCode;
    data["product"] = product;
    if (productOptions != null) {
      data["product_options"] = productOptions?.map((e) => e.toJson()).toList();
    }
    data["stored_price"] = storedPrice;
    if (mainPair != null) {
      data["main_pair"] = mainPair?.toJson();
    }
    if (extra != null) {
      data["extra"] = extra?.toJson();
    }
    data["stored_discount"] = storedDiscount;
    data["amount_total"] = amountTotal;
    data["options_type"] = optionsType;
    data["exceptions_type"] = exceptionsType;
    data["options_type_raw"] = optionsTypeRaw;
    data["exceptions_type_raw"] = exceptionsTypeRaw;
    data["modifiers_price"] = modifiersPrice;
    data["is_edp"] = isEdp;
    data["edp_shipping"] = edpShipping;
    data["discount"] = discount;
    if (promotions != null) {
      data["promotions"] = promotions;
    }
    data["base_price"] = basePrice;
    if (categoryIds != null) {
      data["category_ids"] = categoryIds;
    }
    data["display_price"] = displayPrice;
    data["firstname"] = firstname;
    data["lastname"] = lastname;
    data["phone"] = phone;
    data["email"] = email;
    if (userData != null) {
      data["user_data"] = userData?.toJson();
    }
    data["group_id"] = groupId;
    data["chosen_shipping"] = chosenShipping;
    data["main_category"] = mainCategory;
    data["subtotal"] = subtotal;
    data["format_price"] = formatPrice;
    data["format_subtotal"] = formatSubtotal;
    data["format_base_price"] = formatBasePrice;
    data["image_url"] = imageUrl;
    data["company_name"] = companyName;
    data["wishlist_id"] = wishlistId;
    return data;
  }

  Products1 copyWith({
    String? userId,
    String? timestamp,
    String? type,
    String? userType,
    String? itemId,
    String? itemType,
    int? productId,
    int? amount,
    String? price,
    String? sessionId,
    String? ipAddress,
    String? orderId,
    String? storefrontId,
    String? position,
    String? companyId,
    String? productCode,
    String? product,
    List<ProductOptions2>? productOptions,
    String? storedPrice,
    MainPair1? mainPair,
    Extra1? extra,
    String? storedDiscount,
    int? amountTotal,
    String? optionsType,
    String? exceptionsType,
    dynamic optionsTypeRaw,
    dynamic exceptionsTypeRaw,
    int? modifiersPrice,
    String? isEdp,
    String? edpShipping,
    int? discount,
    List<dynamic>? promotions,
    String? basePrice,
    List<int>? categoryIds,
    int? displayPrice,
    String? firstname,
    String? lastname,
    String? phone,
    String? email,
    UserData1? userData,
    int? groupId,
    dynamic chosenShipping,
    int? mainCategory,
    String? subtotal,
    String? formatPrice,
    String? formatSubtotal,
    String? formatBasePrice,
    String? imageUrl,
    String? companyName,
    String? wishlistId,
  }) =>
      Products1(
        userId: userId ?? this.userId,
        timestamp: timestamp ?? this.timestamp,
        type: type ?? this.type,
        userType: userType ?? this.userType,
        itemId: itemId ?? this.itemId,
        itemType: itemType ?? this.itemType,
        productId: productId ?? this.productId,
        amount: amount ?? this.amount,
        price: price ?? this.price,
        sessionId: sessionId ?? this.sessionId,
        ipAddress: ipAddress ?? this.ipAddress,
        orderId: orderId ?? this.orderId,
        storefrontId: storefrontId ?? this.storefrontId,
        position: position ?? this.position,
        companyId: companyId ?? this.companyId,
        productCode: productCode ?? this.productCode,
        product: product ?? this.product,
        productOptions: productOptions ?? this.productOptions,
        storedPrice: storedPrice ?? this.storedPrice,
        mainPair: mainPair ?? this.mainPair,
        extra: extra ?? this.extra,
        storedDiscount: storedDiscount ?? this.storedDiscount,
        amountTotal: amountTotal ?? this.amountTotal,
        optionsType: optionsType ?? this.optionsType,
        exceptionsType: exceptionsType ?? this.exceptionsType,
        optionsTypeRaw: optionsTypeRaw ?? this.optionsTypeRaw,
        exceptionsTypeRaw: exceptionsTypeRaw ?? this.exceptionsTypeRaw,
        modifiersPrice: modifiersPrice ?? this.modifiersPrice,
        isEdp: isEdp ?? this.isEdp,
        edpShipping: edpShipping ?? this.edpShipping,
        discount: discount ?? this.discount,
        promotions: promotions ?? this.promotions,
        basePrice: basePrice ?? this.basePrice,
        categoryIds: categoryIds ?? this.categoryIds,
        displayPrice: displayPrice ?? this.displayPrice,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        userData: userData ?? this.userData,
        groupId: groupId ?? this.groupId,
        chosenShipping: chosenShipping ?? this.chosenShipping,
        mainCategory: mainCategory ?? this.mainCategory,
        subtotal: subtotal ?? this.subtotal,
        formatPrice: formatPrice ?? this.formatPrice,
        formatSubtotal: formatSubtotal ?? this.formatSubtotal,
        formatBasePrice: formatBasePrice ?? this.formatBasePrice,
        imageUrl: imageUrl ?? this.imageUrl,
        companyName: companyName ?? this.companyName,
        wishlistId: wishlistId ?? this.wishlistId,
      );
}

class UserData1 {
  String? userId;
  String? status;
  String? userType;
  String? userLogin;
  String? referer;
  String? isRoot;
  String? companyId;
  String? lastActivity;
  String? timestamp;
  String? salt;
  String? firstname;
  String? lastname;
  String? company;
  String? email;
  String? phone;
  String? fax;
  String? url;
  String? taxExempt;
  String? langCode;
  String? birthday;
  String? purchaseTimestampFrom;
  String? purchaseTimestampTo;
  String? responsibleEmail;
  String? passwordChangeTimestamp;
  String? apiKey;
  String? helpdeskUserId;
  String? janrainIdentifier;
  String? profileId;
  String? profileType;
  String? bFirstname;
  String? bLastname;
  String? bAddress;
  String? bAddress2;
  String? bCity;
  String? bCounty;
  String? bState;
  String? bCountry;
  String? bZipcode;
  String? bPhone;
  String? sFirstname;
  String? sLastname;
  String? sAddress;
  String? sAddress2;
  String? sCity;
  String? sCounty;
  String? sState;
  String? sCountry;
  String? sZipcode;
  String? sPhone;
  String? sAddressType;
  String? profileName;
  String? profileUpdateTimestamp;
  List<dynamic>? fields;
  String? bCountryDescr;
  String? sCountryDescr;
  String? bStateDescr;
  String? sStateDescr;
  int? points;

  UserData1(
      {this.userId,
      this.status,
      this.userType,
      this.userLogin,
      this.referer,
      this.isRoot,
      this.companyId,
      this.lastActivity,
      this.timestamp,
      this.salt,
      this.firstname,
      this.lastname,
      this.company,
      this.email,
      this.phone,
      this.fax,
      this.url,
      this.taxExempt,
      this.langCode,
      this.birthday,
      this.purchaseTimestampFrom,
      this.purchaseTimestampTo,
      this.responsibleEmail,
      this.passwordChangeTimestamp,
      this.apiKey,
      this.helpdeskUserId,
      this.janrainIdentifier,
      this.profileId,
      this.profileType,
      this.bFirstname,
      this.bLastname,
      this.bAddress,
      this.bAddress2,
      this.bCity,
      this.bCounty,
      this.bState,
      this.bCountry,
      this.bZipcode,
      this.bPhone,
      this.sFirstname,
      this.sLastname,
      this.sAddress,
      this.sAddress2,
      this.sCity,
      this.sCounty,
      this.sState,
      this.sCountry,
      this.sZipcode,
      this.sPhone,
      this.sAddressType,
      this.profileName,
      this.profileUpdateTimestamp,
      this.fields,
      this.bCountryDescr,
      this.sCountryDescr,
      this.bStateDescr,
      this.sStateDescr,
      this.points});

  UserData1.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    status = json["status"];
    userType = json["user_type"];
    userLogin = json["user_login"];
    referer = json["referer"];
    isRoot = json["is_root"];
    companyId = json["company_id"];
    lastActivity = json["last_activity"];
    timestamp = json["timestamp"];
    salt = json["salt"];
    firstname = json["firstname"];
    lastname = json["lastname"];
    company = json["company"];
    email = json["email"];
    phone = json["phone"];
    fax = json["fax"];
    url = json["url"];
    taxExempt = json["tax_exempt"];
    langCode = json["lang_code"];
    birthday = json["birthday"];
    purchaseTimestampFrom = json["purchase_timestamp_from"];
    purchaseTimestampTo = json["purchase_timestamp_to"];
    responsibleEmail = json["responsible_email"];
    passwordChangeTimestamp = json["password_change_timestamp"];
    apiKey = json["api_key"];
    helpdeskUserId = json["helpdesk_user_id"];
    janrainIdentifier = json["janrain_identifier"];
    profileId = json["profile_id"];
    profileType = json["profile_type"];
    bFirstname = json["b_firstname"];
    bLastname = json["b_lastname"];
    bAddress = json["b_address"];
    bAddress2 = json["b_address_2"];
    bCity = json["b_city"];
    bCounty = json["b_county"];
    bState = json["b_state"];
    bCountry = json["b_country"];
    bZipcode = json["b_zipcode"];
    bPhone = json["b_phone"];
    sFirstname = json["s_firstname"];
    sLastname = json["s_lastname"];
    sAddress = json["s_address"];
    sAddress2 = json["s_address_2"];
    sCity = json["s_city"];
    sCounty = json["s_county"];
    sState = json["s_state"];
    sCountry = json["s_country"];
    sZipcode = json["s_zipcode"];
    sPhone = json["s_phone"];
    sAddressType = json["s_address_type"];
    profileName = json["profile_name"];
    profileUpdateTimestamp = json["profile_update_timestamp"];
    fields = json["fields"] ?? [];
    bCountryDescr = json["b_country_descr"];
    sCountryDescr = json["s_country_descr"];
    bStateDescr = json["b_state_descr"];
    sStateDescr = json["s_state_descr"];
    points = json["points"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["user_id"] = userId;
    data["status"] = status;
    data["user_type"] = userType;
    data["user_login"] = userLogin;
    data["referer"] = referer;
    data["is_root"] = isRoot;
    data["company_id"] = companyId;
    data["last_activity"] = lastActivity;
    data["timestamp"] = timestamp;
    data["salt"] = salt;
    data["firstname"] = firstname;
    data["lastname"] = lastname;
    data["company"] = company;
    data["email"] = email;
    data["phone"] = phone;
    data["fax"] = fax;
    data["url"] = url;
    data["tax_exempt"] = taxExempt;
    data["lang_code"] = langCode;
    data["birthday"] = birthday;
    data["purchase_timestamp_from"] = purchaseTimestampFrom;
    data["purchase_timestamp_to"] = purchaseTimestampTo;
    data["responsible_email"] = responsibleEmail;
    data["password_change_timestamp"] = passwordChangeTimestamp;
    data["api_key"] = apiKey;
    data["helpdesk_user_id"] = helpdeskUserId;
    data["janrain_identifier"] = janrainIdentifier;
    data["profile_id"] = profileId;
    data["profile_type"] = profileType;
    data["b_firstname"] = bFirstname;
    data["b_lastname"] = bLastname;
    data["b_address"] = bAddress;
    data["b_address_2"] = bAddress2;
    data["b_city"] = bCity;
    data["b_county"] = bCounty;
    data["b_state"] = bState;
    data["b_country"] = bCountry;
    data["b_zipcode"] = bZipcode;
    data["b_phone"] = bPhone;
    data["s_firstname"] = sFirstname;
    data["s_lastname"] = sLastname;
    data["s_address"] = sAddress;
    data["s_address_2"] = sAddress2;
    data["s_city"] = sCity;
    data["s_county"] = sCounty;
    data["s_state"] = sState;
    data["s_country"] = sCountry;
    data["s_zipcode"] = sZipcode;
    data["s_phone"] = sPhone;
    data["s_address_type"] = sAddressType;
    data["profile_name"] = profileName;
    data["profile_update_timestamp"] = profileUpdateTimestamp;
    if (fields != null) {
      data["fields"] = fields;
    }
    data["b_country_descr"] = bCountryDescr;
    data["s_country_descr"] = sCountryDescr;
    data["b_state_descr"] = bStateDescr;
    data["s_state_descr"] = sStateDescr;
    data["points"] = points;
    return data;
  }

  UserData1 copyWith({
    String? userId,
    String? status,
    String? userType,
    String? userLogin,
    String? referer,
    String? isRoot,
    String? companyId,
    String? lastActivity,
    String? timestamp,
    String? salt,
    String? firstname,
    String? lastname,
    String? company,
    String? email,
    String? phone,
    String? fax,
    String? url,
    String? taxExempt,
    String? langCode,
    String? birthday,
    String? purchaseTimestampFrom,
    String? purchaseTimestampTo,
    String? responsibleEmail,
    String? passwordChangeTimestamp,
    String? apiKey,
    String? helpdeskUserId,
    String? janrainIdentifier,
    String? profileId,
    String? profileType,
    String? bFirstname,
    String? bLastname,
    String? bAddress,
    String? bAddress2,
    String? bCity,
    String? bCounty,
    String? bState,
    String? bCountry,
    String? bZipcode,
    String? bPhone,
    String? sFirstname,
    String? sLastname,
    String? sAddress,
    String? sAddress2,
    String? sCity,
    String? sCounty,
    String? sState,
    String? sCountry,
    String? sZipcode,
    String? sPhone,
    String? sAddressType,
    String? profileName,
    String? profileUpdateTimestamp,
    List<dynamic>? fields,
    String? bCountryDescr,
    String? sCountryDescr,
    String? bStateDescr,
    String? sStateDescr,
    int? points,
  }) =>
      UserData1(
        userId: userId ?? this.userId,
        status: status ?? this.status,
        userType: userType ?? this.userType,
        userLogin: userLogin ?? this.userLogin,
        referer: referer ?? this.referer,
        isRoot: isRoot ?? this.isRoot,
        companyId: companyId ?? this.companyId,
        lastActivity: lastActivity ?? this.lastActivity,
        timestamp: timestamp ?? this.timestamp,
        salt: salt ?? this.salt,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        company: company ?? this.company,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        fax: fax ?? this.fax,
        url: url ?? this.url,
        taxExempt: taxExempt ?? this.taxExempt,
        langCode: langCode ?? this.langCode,
        birthday: birthday ?? this.birthday,
        purchaseTimestampFrom:
            purchaseTimestampFrom ?? this.purchaseTimestampFrom,
        purchaseTimestampTo: purchaseTimestampTo ?? this.purchaseTimestampTo,
        responsibleEmail: responsibleEmail ?? this.responsibleEmail,
        passwordChangeTimestamp:
            passwordChangeTimestamp ?? this.passwordChangeTimestamp,
        apiKey: apiKey ?? this.apiKey,
        helpdeskUserId: helpdeskUserId ?? this.helpdeskUserId,
        janrainIdentifier: janrainIdentifier ?? this.janrainIdentifier,
        profileId: profileId ?? this.profileId,
        profileType: profileType ?? this.profileType,
        bFirstname: bFirstname ?? this.bFirstname,
        bLastname: bLastname ?? this.bLastname,
        bAddress: bAddress ?? this.bAddress,
        bAddress2: bAddress2 ?? this.bAddress2,
        bCity: bCity ?? this.bCity,
        bCounty: bCounty ?? this.bCounty,
        bState: bState ?? this.bState,
        bCountry: bCountry ?? this.bCountry,
        bZipcode: bZipcode ?? this.bZipcode,
        bPhone: bPhone ?? this.bPhone,
        sFirstname: sFirstname ?? this.sFirstname,
        sLastname: sLastname ?? this.sLastname,
        sAddress: sAddress ?? this.sAddress,
        sAddress2: sAddress2 ?? this.sAddress2,
        sCity: sCity ?? this.sCity,
        sCounty: sCounty ?? this.sCounty,
        sState: sState ?? this.sState,
        sCountry: sCountry ?? this.sCountry,
        sZipcode: sZipcode ?? this.sZipcode,
        sPhone: sPhone ?? this.sPhone,
        sAddressType: sAddressType ?? this.sAddressType,
        profileName: profileName ?? this.profileName,
        profileUpdateTimestamp:
            profileUpdateTimestamp ?? this.profileUpdateTimestamp,
        fields: fields ?? this.fields,
        bCountryDescr: bCountryDescr ?? this.bCountryDescr,
        sCountryDescr: sCountryDescr ?? this.sCountryDescr,
        bStateDescr: bStateDescr ?? this.bStateDescr,
        sStateDescr: sStateDescr ?? this.sStateDescr,
        points: points ?? this.points,
      );
}

class Extra1 {
  String? unlimitedDownload;
  String? updatedTimestamp;

  Extra1({this.unlimitedDownload, this.updatedTimestamp});

  Extra1.fromJson(Map<String, dynamic> json) {
    unlimitedDownload = json["unlimited_download"];
    updatedTimestamp = json["updated_timestamp"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["unlimited_download"] = unlimitedDownload;
    data["updated_timestamp"] = updatedTimestamp;
    return data;
  }

  Extra1 copyWith({
    String? unlimitedDownload,
    String? updatedTimestamp,
  }) =>
      Extra1(
        unlimitedDownload: unlimitedDownload ?? this.unlimitedDownload,
        updatedTimestamp: updatedTimestamp ?? this.updatedTimestamp,
      );
}

class MainPair1 {
  String? pairId;
  String? imageId;
  String? detailedId;
  String? position;
  String? objectId;
  String? objectType;
  Detailed1? detailed;

  MainPair1(
      {this.pairId,
      this.imageId,
      this.detailedId,
      this.position,
      this.objectId,
      this.objectType,
      this.detailed});

  MainPair1.fromJson(Map<String, dynamic> json) {
    pairId = json["pair_id"];
    imageId = json["image_id"];
    detailedId = json["detailed_id"];
    position = json["position"];
    objectId = json["object_id"];
    objectType = json["object_type"];
    detailed =
        json["detailed"] == null ? null : Detailed1.fromJson(json["detailed"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["pair_id"] = pairId;
    data["image_id"] = imageId;
    data["detailed_id"] = detailedId;
    data["position"] = position;
    data["object_id"] = objectId;
    data["object_type"] = objectType;
    if (detailed != null) {
      data["detailed"] = detailed?.toJson();
    }
    return data;
  }

  MainPair1 copyWith({
    String? pairId,
    String? imageId,
    String? detailedId,
    String? position,
    String? objectId,
    String? objectType,
    Detailed1? detailed,
  }) =>
      MainPair1(
        pairId: pairId ?? this.pairId,
        imageId: imageId ?? this.imageId,
        detailedId: detailedId ?? this.detailedId,
        position: position ?? this.position,
        objectId: objectId ?? this.objectId,
        objectType: objectType ?? this.objectType,
        detailed: detailed ?? this.detailed,
      );
}

class Detailed1 {
  String? objectId;
  String? objectType;
  String? type;
  String? imagePath;
  String? alt;
  String? imageX;
  String? imageY;
  String? httpImagePath;
  String? httpsImagePath;
  String? absolutePath;
  String? relativePath;
  bool? isHighRes;

  Detailed1(
      {this.objectId,
      this.objectType,
      this.type,
      this.imagePath,
      this.alt,
      this.imageX,
      this.imageY,
      this.httpImagePath,
      this.httpsImagePath,
      this.absolutePath,
      this.relativePath,
      this.isHighRes});

  Detailed1.fromJson(Map<String, dynamic> json) {
    objectId = json["object_id"];
    objectType = json["object_type"];
    type = json["type"];
    imagePath = json["image_path"];
    alt = json["alt"];
    imageX = json["image_x"];
    imageY = json["image_y"];
    httpImagePath = json["http_image_path"];
    httpsImagePath = json["https_image_path"];
    absolutePath = json["absolute_path"];
    relativePath = json["relative_path"];
    isHighRes = json["is_high_res"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["object_id"] = objectId;
    data["object_type"] = objectType;
    data["type"] = type;
    data["image_path"] = imagePath;
    data["alt"] = alt;
    data["image_x"] = imageX;
    data["image_y"] = imageY;
    data["http_image_path"] = httpImagePath;
    data["https_image_path"] = httpsImagePath;
    data["absolute_path"] = absolutePath;
    data["relative_path"] = relativePath;
    data["is_high_res"] = isHighRes;
    return data;
  }

  Detailed1 copyWith({
    String? objectId,
    String? objectType,
    String? type,
    String? imagePath,
    String? alt,
    String? imageX,
    String? imageY,
    String? httpImagePath,
    String? httpsImagePath,
    String? absolutePath,
    String? relativePath,
    bool? isHighRes,
  }) =>
      Detailed1(
        objectId: objectId ?? this.objectId,
        objectType: objectType ?? this.objectType,
        type: type ?? this.type,
        imagePath: imagePath ?? this.imagePath,
        alt: alt ?? this.alt,
        imageX: imageX ?? this.imageX,
        imageY: imageY ?? this.imageY,
        httpImagePath: httpImagePath ?? this.httpImagePath,
        httpsImagePath: httpsImagePath ?? this.httpsImagePath,
        absolutePath: absolutePath ?? this.absolutePath,
        relativePath: relativePath ?? this.relativePath,
        isHighRes: isHighRes ?? this.isHighRes,
      );
}

class ProductOptions2 {
  dynamic optionId;
  dynamic optionType;
  String? optionName;
  String? optionTypeName;
  dynamic selectedVariant;
  String? value;

  ProductOptions2(
      {this.optionId,
      this.optionType,
      this.optionName,
      this.optionTypeName,
      this.selectedVariant,
      this.value});

  ProductOptions2.fromJson(Map<String, dynamic> json) {
    optionId = json["option_id"];
    optionType = json["option_type"];
    optionName = json["option_name"];
    optionTypeName = json["option_type_name"];
    selectedVariant = json["selected_variant"];
    value = json["value"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["option_id"] = optionId;
    data["option_type"] = optionType;
    data["option_name"] = optionName;
    data["option_type_name"] = optionTypeName;
    data["selected_variant"] = selectedVariant;
    data["value"] = value;
    return data;
  }

  ProductOptions2 copyWith({
    dynamic optionId,
    dynamic optionType,
    String? optionName,
    String? optionTypeName,
    dynamic selectedVariant,
    String? value,
  }) =>
      ProductOptions2(
        optionId: optionId ?? this.optionId,
        optionType: optionType ?? this.optionType,
        optionName: optionName ?? this.optionName,
        optionTypeName: optionTypeName ?? this.optionTypeName,
        selectedVariant: selectedVariant ?? this.selectedVariant,
        value: value ?? this.value,
      );
}

class Shippings {
  String? shippingId;
  String? shipping;
  String? description;
  String? serviceDeliveryTime;
  double? rate;
  String? formatRate;

  Shippings(
      {this.shippingId,
      this.shipping,
      this.description,
      this.serviceDeliveryTime,
      this.rate,
      this.formatRate});

  Shippings.fromJson(Map<String, dynamic> json) {
    shippingId = json["shipping_id"];
    shipping = json["shipping"];
    description = json["description"];
    serviceDeliveryTime = json["service_delivery_time"];
    rate = json["rate"];
    formatRate = json["format_rate"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["shipping_id"] = shippingId;
    data["shipping"] = shipping;
    data["description"] = description;
    data["service_delivery_time"] = serviceDeliveryTime;
    data["rate"] = rate;
    data["format_rate"] = formatRate;
    return data;
  }

  Shippings copyWith({
    String? shippingId,
    String? shipping,
    String? description,
    String? serviceDeliveryTime,
    double? rate,
    String? formatRate,
  }) =>
      Shippings(
        shippingId: shippingId ?? this.shippingId,
        shipping: shipping ?? this.shipping,
        description: description ?? this.description,
        serviceDeliveryTime: serviceDeliveryTime ?? this.serviceDeliveryTime,
        rate: rate ?? this.rate,
        formatRate: formatRate ?? this.formatRate,
      );
}

class Bonuses1 {
  String? bonus;
  String? discountBonus;
  String? discountValue;
  String? promotionId;

  Bonuses1(
      {this.bonus, this.discountBonus, this.discountValue, this.promotionId});

  Bonuses1.fromJson(Map<String, dynamic> json) {
    bonus = json["bonus"];
    discountBonus = json["discount_bonus"];
    discountValue = json["discount_value"];
    promotionId = json["promotion_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["bonus"] = bonus;
    data["discount_bonus"] = discountBonus;
    data["discount_value"] = discountValue;
    data["promotion_id"] = promotionId;
    return data;
  }

  Bonuses1 copyWith({
    String? bonus,
    String? discountBonus,
    String? discountValue,
    String? promotionId,
  }) =>
      Bonuses1(
        bonus: bonus ?? this.bonus,
        discountBonus: discountBonus ?? this.discountBonus,
        discountValue: discountValue ?? this.discountValue,
        promotionId: promotionId ?? this.promotionId,
      );
}

class Conditions {
  String? set;
  String? setValue;

  Conditions({this.set, this.setValue});

  Conditions.fromJson(Map<String, dynamic> json) {
    set = json["set"];
    setValue = json["set_value"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["set"] = set;
    data["set_value"] = setValue;
    return data;
  }

  Conditions copyWith({
    String? set,
    String? setValue,
  }) =>
      Conditions(
        set: set ?? this.set,
        setValue: setValue ?? this.setValue,
      );
}

class Products {
  String? userId;
  String? timestamp;
  String? type;
  String? userType;
  String? itemId;
  String? itemType;
  int? productId;
  dynamic amount;
  String? price;
  String? sessionId;
  String? ipAddress;
  String? orderId;
  String? storefrontId;
  String? position;
  String? companyId;
  String? productCode;
  String? product;
  List<ProductOptions>? productOptions;
  String? storedPrice;
  MainPair? mainPair;
  Extra? extra;
  String? storedDiscount;
  dynamic amountTotal;
  String? optionsType;
  String? exceptionsType;
  dynamic optionsTypeRaw;
  dynamic exceptionsTypeRaw;
  int? modifiersPrice;
  String? isEdp;
  String? edpShipping;
  int? discount;
  List<dynamic>? promotions;
  String? basePrice;
  List<int>? categoryIds;
  int? displayPrice;
  String? firstname;
  String? lastname;
  String? phone;
  String? email;
  UserData? userData;
  int? groupId;
  dynamic chosenShipping;
  String? subtotal;
  String? formatPrice;
  String? formatSubtotal;
  String? formatBasePrice;
  String? imageUrl;
  String? companyName;
  String? wishlistId;

  Products(
      {this.userId,
      this.timestamp,
      this.type,
      this.userType,
      this.itemId,
      this.itemType,
      this.productId,
      this.amount,
      this.price,
      this.sessionId,
      this.ipAddress,
      this.orderId,
      this.storefrontId,
      this.position,
      this.companyId,
      this.productCode,
      this.product,
      this.productOptions,
      this.storedPrice,
      this.mainPair,
      this.extra,
      this.storedDiscount,
      this.amountTotal,
      this.optionsType,
      this.exceptionsType,
      this.optionsTypeRaw,
      this.exceptionsTypeRaw,
      this.modifiersPrice,
      this.isEdp,
      this.edpShipping,
      this.discount,
      this.promotions,
      this.basePrice,
      this.categoryIds,
      this.displayPrice,
      this.firstname,
      this.lastname,
      this.phone,
      this.email,
      this.userData,
      this.groupId,
      this.chosenShipping,
      this.subtotal,
      this.formatPrice,
      this.formatSubtotal,
      this.formatBasePrice,
      this.imageUrl,
      this.companyName,
      this.wishlistId});

  Products.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    timestamp = json["timestamp"];
    type = json["type"];
    userType = json["user_type"];
    itemId = json["item_id"];
    itemType = json["item_type"];
    productId = json["product_id"];
    amount = json["amount"];
    price = json["price"];
    sessionId = json["session_id"];
    ipAddress = json["ip_address"];
    orderId = json["order_id"];
    storefrontId = json["storefront_id"];
    position = json["position"];
    companyId = json["company_id"];
    productCode = json["product_code"];
    product = json["product"];
    productOptions = json["product_options"] == null
        ? null
        : (json["product_options"] as List)
            .map((e) => ProductOptions.fromJson(e))
            .toList();
    storedPrice = json["stored_price"];
    mainPair =
        json["main_pair"] == null ? null : MainPair.fromJson(json["main_pair"]);
    extra = json["extra"] == null ? null : Extra.fromJson(json["extra"]);
    storedDiscount = json["stored_discount"];
    amountTotal = json["amount_total"];
    optionsType = json["options_type"];
    exceptionsType = json["exceptions_type"];
    optionsTypeRaw = json["options_type_raw"];
    exceptionsTypeRaw = json["exceptions_type_raw"];
    modifiersPrice = json["modifiers_price"];
    isEdp = json["is_edp"];
    edpShipping = json["edp_shipping"];
    discount = json["discount"];
    promotions = json["promotions"] ?? [];
    basePrice = json["base_price"];
    categoryIds = json["category_ids"] == null
        ? null
        : List<int>.from(json["category_ids"]);
    displayPrice = json["display_price"];
    firstname = json["firstname"];
    lastname = json["lastname"];
    phone = json["phone"];
    email = json["email"];
    userData =
        json["user_data"] == null ? null : UserData.fromJson(json["user_data"]);
    groupId = json["group_id"];
    chosenShipping = json["chosen_shipping"];
    subtotal = json["subtotal"];
    formatPrice = json["format_price"];
    formatSubtotal = json["format_subtotal"];
    formatBasePrice = json["format_base_price"];
    imageUrl = json["image_url"];
    companyName = json["company_name"];
    wishlistId = json["wishlist_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["user_id"] = userId;
    data["timestamp"] = timestamp;
    data["type"] = type;
    data["user_type"] = userType;
    data["item_id"] = itemId;
    data["item_type"] = itemType;
    data["product_id"] = productId;
    data["amount"] = amount;
    data["price"] = price;
    data["session_id"] = sessionId;
    data["ip_address"] = ipAddress;
    data["order_id"] = orderId;
    data["storefront_id"] = storefrontId;
    data["position"] = position;
    data["company_id"] = companyId;
    data["product_code"] = productCode;
    data["product"] = product;
    if (productOptions != null) {
      data["product_options"] = productOptions?.map((e) => e.toJson()).toList();
    }
    data["stored_price"] = storedPrice;
    if (mainPair != null) {
      data["main_pair"] = mainPair?.toJson();
    }
    if (extra != null) {
      data["extra"] = extra?.toJson();
    }
    data["stored_discount"] = storedDiscount;
    data["amount_total"] = amountTotal;
    data["options_type"] = optionsType;
    data["exceptions_type"] = exceptionsType;
    data["options_type_raw"] = optionsTypeRaw;
    data["exceptions_type_raw"] = exceptionsTypeRaw;
    data["modifiers_price"] = modifiersPrice;
    data["is_edp"] = isEdp;
    data["edp_shipping"] = edpShipping;
    data["discount"] = discount;
    if (promotions != null) {
      data["promotions"] = promotions;
    }
    data["base_price"] = basePrice;
    if (categoryIds != null) {
      data["category_ids"] = categoryIds;
    }
    data["display_price"] = displayPrice;
    data["firstname"] = firstname;
    data["lastname"] = lastname;
    data["phone"] = phone;
    data["email"] = email;
    if (userData != null) {
      data["user_data"] = userData?.toJson();
    }
    data["group_id"] = groupId;
    data["chosen_shipping"] = chosenShipping;
    data["subtotal"] = subtotal;
    data["format_price"] = formatPrice;
    data["format_subtotal"] = formatSubtotal;
    data["format_base_price"] = formatBasePrice;
    data["image_url"] = imageUrl;
    data["company_name"] = companyName;
    data["wishlist_id"] = wishlistId;
    return data;
  }

  Products copyWith({
    String? userId,
    String? timestamp,
    String? type,
    String? userType,
    String? itemId,
    String? itemType,
    int? productId,
    int? amount,
    String? price,
    String? sessionId,
    String? ipAddress,
    String? orderId,
    String? storefrontId,
    String? position,
    String? companyId,
    String? productCode,
    String? product,
    List<ProductOptions>? productOptions,
    String? storedPrice,
    MainPair? mainPair,
    Extra? extra,
    String? storedDiscount,
    int? amountTotal,
    String? optionsType,
    String? exceptionsType,
    dynamic optionsTypeRaw,
    dynamic exceptionsTypeRaw,
    int? modifiersPrice,
    String? isEdp,
    String? edpShipping,
    int? discount,
    List<dynamic>? promotions,
    String? basePrice,
    List<int>? categoryIds,
    int? displayPrice,
    String? firstname,
    String? lastname,
    String? phone,
    String? email,
    UserData? userData,
    int? groupId,
    dynamic chosenShipping,
    String? subtotal,
    String? formatPrice,
    String? formatSubtotal,
    String? formatBasePrice,
    String? imageUrl,
    String? companyName,
    String? wishlistId,
  }) =>
      Products(
        userId: userId ?? this.userId,
        timestamp: timestamp ?? this.timestamp,
        type: type ?? this.type,
        userType: userType ?? this.userType,
        itemId: itemId ?? this.itemId,
        itemType: itemType ?? this.itemType,
        productId: productId ?? this.productId,
        amount: amount ?? this.amount,
        price: price ?? this.price,
        sessionId: sessionId ?? this.sessionId,
        ipAddress: ipAddress ?? this.ipAddress,
        orderId: orderId ?? this.orderId,
        storefrontId: storefrontId ?? this.storefrontId,
        position: position ?? this.position,
        companyId: companyId ?? this.companyId,
        productCode: productCode ?? this.productCode,
        product: product ?? this.product,
        productOptions: productOptions ?? this.productOptions,
        storedPrice: storedPrice ?? this.storedPrice,
        mainPair: mainPair ?? this.mainPair,
        extra: extra ?? this.extra,
        storedDiscount: storedDiscount ?? this.storedDiscount,
        amountTotal: amountTotal ?? this.amountTotal,
        optionsType: optionsType ?? this.optionsType,
        exceptionsType: exceptionsType ?? this.exceptionsType,
        optionsTypeRaw: optionsTypeRaw ?? this.optionsTypeRaw,
        exceptionsTypeRaw: exceptionsTypeRaw ?? this.exceptionsTypeRaw,
        modifiersPrice: modifiersPrice ?? this.modifiersPrice,
        isEdp: isEdp ?? this.isEdp,
        edpShipping: edpShipping ?? this.edpShipping,
        discount: discount ?? this.discount,
        promotions: promotions ?? this.promotions,
        basePrice: basePrice ?? this.basePrice,
        categoryIds: categoryIds ?? this.categoryIds,
        displayPrice: displayPrice ?? this.displayPrice,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        userData: userData ?? this.userData,
        groupId: groupId ?? this.groupId,
        chosenShipping: chosenShipping ?? this.chosenShipping,
        subtotal: subtotal ?? this.subtotal,
        formatPrice: formatPrice ?? this.formatPrice,
        formatSubtotal: formatSubtotal ?? this.formatSubtotal,
        formatBasePrice: formatBasePrice ?? this.formatBasePrice,
        imageUrl: imageUrl ?? this.imageUrl,
        companyName: companyName ?? this.companyName,
        wishlistId: wishlistId ?? this.wishlistId,
      );
}

class UserData {
  String? userId;
  String? status;
  String? userType;
  String? userLogin;
  String? referer;
  String? isRoot;
  String? companyId;
  String? lastActivity;
  String? timestamp;
  String? salt;
  String? firstname;
  String? lastname;
  String? company;
  String? email;
  String? phone;
  String? fax;
  String? url;
  String? taxExempt;
  String? langCode;
  String? birthday;
  String? purchaseTimestampFrom;
  String? purchaseTimestampTo;
  String? responsibleEmail;
  String? passwordChangeTimestamp;
  String? apiKey;
  String? helpdeskUserId;
  String? janrainIdentifier;
  String? profileId;
  String? profileType;
  String? bFirstname;
  String? bLastname;
  String? bAddress;
  String? bAddress2;
  String? bCity;
  String? bCounty;
  String? bState;
  String? bCountry;
  String? bZipcode;
  String? bPhone;
  String? sFirstname;
  String? sLastname;
  String? sAddress;
  String? sAddress2;
  String? sCity;
  String? sCounty;
  String? sState;
  String? sCountry;
  String? sZipcode;
  String? sPhone;
  String? sAddressType;
  String? profileName;
  String? profileUpdateTimestamp;
  List<dynamic>? fields;
  String? bCountryDescr;
  String? sCountryDescr;
  String? bStateDescr;
  String? sStateDescr;
  int? points;

  UserData(
      {this.userId,
      this.status,
      this.userType,
      this.userLogin,
      this.referer,
      this.isRoot,
      this.companyId,
      this.lastActivity,
      this.timestamp,
      this.salt,
      this.firstname,
      this.lastname,
      this.company,
      this.email,
      this.phone,
      this.fax,
      this.url,
      this.taxExempt,
      this.langCode,
      this.birthday,
      this.purchaseTimestampFrom,
      this.purchaseTimestampTo,
      this.responsibleEmail,
      this.passwordChangeTimestamp,
      this.apiKey,
      this.helpdeskUserId,
      this.janrainIdentifier,
      this.profileId,
      this.profileType,
      this.bFirstname,
      this.bLastname,
      this.bAddress,
      this.bAddress2,
      this.bCity,
      this.bCounty,
      this.bState,
      this.bCountry,
      this.bZipcode,
      this.bPhone,
      this.sFirstname,
      this.sLastname,
      this.sAddress,
      this.sAddress2,
      this.sCity,
      this.sCounty,
      this.sState,
      this.sCountry,
      this.sZipcode,
      this.sPhone,
      this.sAddressType,
      this.profileName,
      this.profileUpdateTimestamp,
      this.fields,
      this.bCountryDescr,
      this.sCountryDescr,
      this.bStateDescr,
      this.sStateDescr,
      this.points});

  UserData.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    status = json["status"];
    userType = json["user_type"];
    userLogin = json["user_login"];
    referer = json["referer"];
    isRoot = json["is_root"];
    companyId = json["company_id"];
    lastActivity = json["last_activity"];
    timestamp = json["timestamp"];
    salt = json["salt"];
    firstname = json["firstname"];
    lastname = json["lastname"];
    company = json["company"];
    email = json["email"];
    phone = json["phone"];
    fax = json["fax"];
    url = json["url"];
    taxExempt = json["tax_exempt"];
    langCode = json["lang_code"];
    birthday = json["birthday"];
    purchaseTimestampFrom = json["purchase_timestamp_from"];
    purchaseTimestampTo = json["purchase_timestamp_to"];
    responsibleEmail = json["responsible_email"];
    passwordChangeTimestamp = json["password_change_timestamp"];
    apiKey = json["api_key"];
    helpdeskUserId = json["helpdesk_user_id"];
    janrainIdentifier = json["janrain_identifier"];
    profileId = json["profile_id"];
    profileType = json["profile_type"];
    bFirstname = json["b_firstname"];
    bLastname = json["b_lastname"];
    bAddress = json["b_address"];
    bAddress2 = json["b_address_2"];
    bCity = json["b_city"];
    bCounty = json["b_county"];
    bState = json["b_state"];
    bCountry = json["b_country"];
    bZipcode = json["b_zipcode"];
    bPhone = json["b_phone"];
    sFirstname = json["s_firstname"];
    sLastname = json["s_lastname"];
    sAddress = json["s_address"];
    sAddress2 = json["s_address_2"];
    sCity = json["s_city"];
    sCounty = json["s_county"];
    sState = json["s_state"];
    sCountry = json["s_country"];
    sZipcode = json["s_zipcode"];
    sPhone = json["s_phone"];
    sAddressType = json["s_address_type"];
    profileName = json["profile_name"];
    profileUpdateTimestamp = json["profile_update_timestamp"];
    fields = json["fields"] ?? [];
    bCountryDescr = json["b_country_descr"];
    sCountryDescr = json["s_country_descr"];
    bStateDescr = json["b_state_descr"];
    sStateDescr = json["s_state_descr"];
    points = json["points"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["user_id"] = userId;
    data["status"] = status;
    data["user_type"] = userType;
    data["user_login"] = userLogin;
    data["referer"] = referer;
    data["is_root"] = isRoot;
    data["company_id"] = companyId;
    data["last_activity"] = lastActivity;
    data["timestamp"] = timestamp;
    data["salt"] = salt;
    data["firstname"] = firstname;
    data["lastname"] = lastname;
    data["company"] = company;
    data["email"] = email;
    data["phone"] = phone;
    data["fax"] = fax;
    data["url"] = url;
    data["tax_exempt"] = taxExempt;
    data["lang_code"] = langCode;
    data["birthday"] = birthday;
    data["purchase_timestamp_from"] = purchaseTimestampFrom;
    data["purchase_timestamp_to"] = purchaseTimestampTo;
    data["responsible_email"] = responsibleEmail;
    data["password_change_timestamp"] = passwordChangeTimestamp;
    data["api_key"] = apiKey;
    data["helpdesk_user_id"] = helpdeskUserId;
    data["janrain_identifier"] = janrainIdentifier;
    data["profile_id"] = profileId;
    data["profile_type"] = profileType;
    data["b_firstname"] = bFirstname;
    data["b_lastname"] = bLastname;
    data["b_address"] = bAddress;
    data["b_address_2"] = bAddress2;
    data["b_city"] = bCity;
    data["b_county"] = bCounty;
    data["b_state"] = bState;
    data["b_country"] = bCountry;
    data["b_zipcode"] = bZipcode;
    data["b_phone"] = bPhone;
    data["s_firstname"] = sFirstname;
    data["s_lastname"] = sLastname;
    data["s_address"] = sAddress;
    data["s_address_2"] = sAddress2;
    data["s_city"] = sCity;
    data["s_county"] = sCounty;
    data["s_state"] = sState;
    data["s_country"] = sCountry;
    data["s_zipcode"] = sZipcode;
    data["s_phone"] = sPhone;
    data["s_address_type"] = sAddressType;
    data["profile_name"] = profileName;
    data["profile_update_timestamp"] = profileUpdateTimestamp;
    if (fields != null) {
      data["fields"] = fields;
    }
    data["b_country_descr"] = bCountryDescr;
    data["s_country_descr"] = sCountryDescr;
    data["b_state_descr"] = bStateDescr;
    data["s_state_descr"] = sStateDescr;
    data["points"] = points;
    return data;
  }

  UserData copyWith({
    String? userId,
    String? status,
    String? userType,
    String? userLogin,
    String? referer,
    String? isRoot,
    String? companyId,
    String? lastActivity,
    String? timestamp,
    String? salt,
    String? firstname,
    String? lastname,
    String? company,
    String? email,
    String? phone,
    String? fax,
    String? url,
    String? taxExempt,
    String? langCode,
    String? birthday,
    String? purchaseTimestampFrom,
    String? purchaseTimestampTo,
    String? responsibleEmail,
    String? passwordChangeTimestamp,
    String? apiKey,
    String? helpdeskUserId,
    String? janrainIdentifier,
    String? profileId,
    String? profileType,
    String? bFirstname,
    String? bLastname,
    String? bAddress,
    String? bAddress2,
    String? bCity,
    String? bCounty,
    String? bState,
    String? bCountry,
    String? bZipcode,
    String? bPhone,
    String? sFirstname,
    String? sLastname,
    String? sAddress,
    String? sAddress2,
    String? sCity,
    String? sCounty,
    String? sState,
    String? sCountry,
    String? sZipcode,
    String? sPhone,
    String? sAddressType,
    String? profileName,
    String? profileUpdateTimestamp,
    List<dynamic>? fields,
    String? bCountryDescr,
    String? sCountryDescr,
    String? bStateDescr,
    String? sStateDescr,
    int? points,
  }) =>
      UserData(
        userId: userId ?? this.userId,
        status: status ?? this.status,
        userType: userType ?? this.userType,
        userLogin: userLogin ?? this.userLogin,
        referer: referer ?? this.referer,
        isRoot: isRoot ?? this.isRoot,
        companyId: companyId ?? this.companyId,
        lastActivity: lastActivity ?? this.lastActivity,
        timestamp: timestamp ?? this.timestamp,
        salt: salt ?? this.salt,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        company: company ?? this.company,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        fax: fax ?? this.fax,
        url: url ?? this.url,
        taxExempt: taxExempt ?? this.taxExempt,
        langCode: langCode ?? this.langCode,
        birthday: birthday ?? this.birthday,
        purchaseTimestampFrom:
            purchaseTimestampFrom ?? this.purchaseTimestampFrom,
        purchaseTimestampTo: purchaseTimestampTo ?? this.purchaseTimestampTo,
        responsibleEmail: responsibleEmail ?? this.responsibleEmail,
        passwordChangeTimestamp:
            passwordChangeTimestamp ?? this.passwordChangeTimestamp,
        apiKey: apiKey ?? this.apiKey,
        helpdeskUserId: helpdeskUserId ?? this.helpdeskUserId,
        janrainIdentifier: janrainIdentifier ?? this.janrainIdentifier,
        profileId: profileId ?? this.profileId,
        profileType: profileType ?? this.profileType,
        bFirstname: bFirstname ?? this.bFirstname,
        bLastname: bLastname ?? this.bLastname,
        bAddress: bAddress ?? this.bAddress,
        bAddress2: bAddress2 ?? this.bAddress2,
        bCity: bCity ?? this.bCity,
        bCounty: bCounty ?? this.bCounty,
        bState: bState ?? this.bState,
        bCountry: bCountry ?? this.bCountry,
        bZipcode: bZipcode ?? this.bZipcode,
        bPhone: bPhone ?? this.bPhone,
        sFirstname: sFirstname ?? this.sFirstname,
        sLastname: sLastname ?? this.sLastname,
        sAddress: sAddress ?? this.sAddress,
        sAddress2: sAddress2 ?? this.sAddress2,
        sCity: sCity ?? this.sCity,
        sCounty: sCounty ?? this.sCounty,
        sState: sState ?? this.sState,
        sCountry: sCountry ?? this.sCountry,
        sZipcode: sZipcode ?? this.sZipcode,
        sPhone: sPhone ?? this.sPhone,
        sAddressType: sAddressType ?? this.sAddressType,
        profileName: profileName ?? this.profileName,
        profileUpdateTimestamp:
            profileUpdateTimestamp ?? this.profileUpdateTimestamp,
        fields: fields ?? this.fields,
        bCountryDescr: bCountryDescr ?? this.bCountryDescr,
        sCountryDescr: sCountryDescr ?? this.sCountryDescr,
        bStateDescr: bStateDescr ?? this.bStateDescr,
        sStateDescr: sStateDescr ?? this.sStateDescr,
        points: points ?? this.points,
      );
}

class Extra {
  String? unlimitedDownload;
  String? updatedTimestamp;

  Extra({this.unlimitedDownload, this.updatedTimestamp});

  Extra.fromJson(Map<String, dynamic> json) {
    unlimitedDownload = json["unlimited_download"];
    updatedTimestamp = json["updated_timestamp"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["unlimited_download"] = unlimitedDownload;
    data["updated_timestamp"] = updatedTimestamp;
    return data;
  }

  Extra copyWith({
    String? unlimitedDownload,
    String? updatedTimestamp,
  }) =>
      Extra(
        unlimitedDownload: unlimitedDownload ?? this.unlimitedDownload,
        updatedTimestamp: updatedTimestamp ?? this.updatedTimestamp,
      );
}

class MainPair {
  String? pairId;
  String? imageId;
  String? detailedId;
  String? position;
  String? objectId;
  String? objectType;
  Detailed? detailed;

  MainPair(
      {this.pairId,
      this.imageId,
      this.detailedId,
      this.position,
      this.objectId,
      this.objectType,
      this.detailed});

  MainPair.fromJson(Map<String, dynamic> json) {
    pairId = json["pair_id"];
    imageId = json["image_id"];
    detailedId = json["detailed_id"];
    position = json["position"];
    objectId = json["object_id"];
    objectType = json["object_type"];
    detailed =
        json["detailed"] == null ? null : Detailed.fromJson(json["detailed"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["pair_id"] = pairId;
    data["image_id"] = imageId;
    data["detailed_id"] = detailedId;
    data["position"] = position;
    data["object_id"] = objectId;
    data["object_type"] = objectType;
    if (detailed != null) {
      data["detailed"] = detailed?.toJson();
    }
    return data;
  }

  MainPair copyWith({
    String? pairId,
    String? imageId,
    String? detailedId,
    String? position,
    String? objectId,
    String? objectType,
    Detailed? detailed,
  }) =>
      MainPair(
        pairId: pairId ?? this.pairId,
        imageId: imageId ?? this.imageId,
        detailedId: detailedId ?? this.detailedId,
        position: position ?? this.position,
        objectId: objectId ?? this.objectId,
        objectType: objectType ?? this.objectType,
        detailed: detailed ?? this.detailed,
      );
}

class Detailed {
  String? objectId;
  String? objectType;
  String? type;
  String? imagePath;
  String? alt;
  String? imageX;
  String? imageY;
  String? httpImagePath;
  String? httpsImagePath;
  String? absolutePath;
  String? relativePath;
  bool? isHighRes;

  Detailed(
      {this.objectId,
      this.objectType,
      this.type,
      this.imagePath,
      this.alt,
      this.imageX,
      this.imageY,
      this.httpImagePath,
      this.httpsImagePath,
      this.absolutePath,
      this.relativePath,
      this.isHighRes});

  Detailed.fromJson(Map<String, dynamic> json) {
    objectId = json["object_id"];
    objectType = json["object_type"];
    type = json["type"];
    imagePath = json["image_path"];
    alt = json["alt"];
    imageX = json["image_x"];
    imageY = json["image_y"];
    httpImagePath = json["http_image_path"];
    httpsImagePath = json["https_image_path"];
    absolutePath = json["absolute_path"];
    relativePath = json["relative_path"];
    isHighRes = json["is_high_res"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["object_id"] = objectId;
    data["object_type"] = objectType;
    data["type"] = type;
    data["image_path"] = imagePath;
    data["alt"] = alt;
    data["image_x"] = imageX;
    data["image_y"] = imageY;
    data["http_image_path"] = httpImagePath;
    data["https_image_path"] = httpsImagePath;
    data["absolute_path"] = absolutePath;
    data["relative_path"] = relativePath;
    data["is_high_res"] = isHighRes;
    return data;
  }

  Detailed copyWith({
    String? objectId,
    String? objectType,
    String? type,
    String? imagePath,
    String? alt,
    String? imageX,
    String? imageY,
    String? httpImagePath,
    String? httpsImagePath,
    String? absolutePath,
    String? relativePath,
    bool? isHighRes,
  }) =>
      Detailed(
        objectId: objectId ?? this.objectId,
        objectType: objectType ?? this.objectType,
        type: type ?? this.type,
        imagePath: imagePath ?? this.imagePath,
        alt: alt ?? this.alt,
        imageX: imageX ?? this.imageX,
        imageY: imageY ?? this.imageY,
        httpImagePath: httpImagePath ?? this.httpImagePath,
        httpsImagePath: httpsImagePath ?? this.httpsImagePath,
        absolutePath: absolutePath ?? this.absolutePath,
        relativePath: relativePath ?? this.relativePath,
        isHighRes: isHighRes ?? this.isHighRes,
      );
}

class ProductOptions {
  dynamic optionId;
  dynamic optionType;
  String? optionName;
  String? optionTypeName;
  dynamic selectedVariant;
  String? value;

  ProductOptions(
      {this.optionId,
      this.optionType,
      this.optionName,
      this.optionTypeName,
      this.selectedVariant,
      this.value});

  ProductOptions.fromJson(Map<String, dynamic> json) {
    optionId = json["option_id"];
    optionType = json["option_type"];
    optionName = json["option_name"];
    optionTypeName = json["option_type_name"];
    selectedVariant = json["selected_variant"];
    value = json["value"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["option_id"] = optionId;
    data["option_type"] = optionType;
    data["option_name"] = optionName;
    data["option_type_name"] = optionTypeName;
    data["selected_variant"] = selectedVariant;
    data["value"] = value;
    return data;
  }

  ProductOptions copyWith({
    dynamic optionId,
    dynamic optionType,
    String? optionName,
    String? optionTypeName,
    dynamic selectedVariant,
    String? value,
  }) =>
      ProductOptions(
        optionId: optionId ?? this.optionId,
        optionType: optionType ?? this.optionType,
        optionName: optionName ?? this.optionName,
        optionTypeName: optionTypeName ?? this.optionTypeName,
        selectedVariant: selectedVariant ?? this.selectedVariant,
        value: value ?? this.value,
      );
}

class UserProfiles {
  String? userId;
  String? status;
  String? userType;
  String? userLogin;
  String? referer;
  String? isRoot;
  String? companyId;
  String? lastActivity;
  String? timestamp;
  String? password;
  String? salt;
  String? firstname;
  String? lastname;
  String? company;
  String? email;
  String? phone;
  String? fax;
  String? url;
  String? taxExempt;
  String? langCode;
  String? birthday;
  String? purchaseTimestampFrom;
  String? purchaseTimestampTo;
  String? responsibleEmail;
  String? passwordChangeTimestamp;
  String? apiKey;
  String? helpdeskUserId;
  String? janrainIdentifier;
  String? profileId;
  String? profileType;
  String? bFirstname;
  String? bLastname;
  String? bAddress;
  String? bAddress2;
  String? bCity;
  String? bCounty;
  String? bState;
  String? bCountry;
  String? bZipcode;
  String? bPhone;
  String? sFirstname;
  String? sLastname;
  String? sAddress;
  String? sAddress2;
  String? sCity;
  String? sCounty;
  String? sState;
  String? sCountry;
  String? sZipcode;
  String? sPhone;
  String? sAddressType;
  String? profileName;
  String? profileUpdateTimestamp;
  List<dynamic>? fields;
  String? bCountryDescr;
  String? sCountryDescr;
  String? bStateDescr;
  String? sStateDescr;
  int? points;

  UserProfiles(
      {this.userId,
      this.status,
      this.userType,
      this.userLogin,
      this.referer,
      this.isRoot,
      this.companyId,
      this.lastActivity,
      this.timestamp,
      this.password,
      this.salt,
      this.firstname,
      this.lastname,
      this.company,
      this.email,
      this.phone,
      this.fax,
      this.url,
      this.taxExempt,
      this.langCode,
      this.birthday,
      this.purchaseTimestampFrom,
      this.purchaseTimestampTo,
      this.responsibleEmail,
      this.passwordChangeTimestamp,
      this.apiKey,
      this.helpdeskUserId,
      this.janrainIdentifier,
      this.profileId,
      this.profileType,
      this.bFirstname,
      this.bLastname,
      this.bAddress,
      this.bAddress2,
      this.bCity,
      this.bCounty,
      this.bState,
      this.bCountry,
      this.bZipcode,
      this.bPhone,
      this.sFirstname,
      this.sLastname,
      this.sAddress,
      this.sAddress2,
      this.sCity,
      this.sCounty,
      this.sState,
      this.sCountry,
      this.sZipcode,
      this.sPhone,
      this.sAddressType,
      this.profileName,
      this.profileUpdateTimestamp,
      this.fields,
      this.bCountryDescr,
      this.sCountryDescr,
      this.bStateDescr,
      this.sStateDescr,
      this.points});

  UserProfiles.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    status = json["status"];
    userType = json["user_type"];
    userLogin = json["user_login"];
    referer = json["referer"];
    isRoot = json["is_root"];
    companyId = json["company_id"];
    lastActivity = json["last_activity"];
    timestamp = json["timestamp"];
    password = json["password"];
    salt = json["salt"];
    firstname = json["firstname"];
    lastname = json["lastname"];
    company = json["company"];
    email = json["email"];
    phone = json["phone"];
    fax = json["fax"];
    url = json["url"];
    taxExempt = json["tax_exempt"];
    langCode = json["lang_code"];
    birthday = json["birthday"];
    purchaseTimestampFrom = json["purchase_timestamp_from"];
    purchaseTimestampTo = json["purchase_timestamp_to"];
    responsibleEmail = json["responsible_email"];
    passwordChangeTimestamp = json["password_change_timestamp"];
    apiKey = json["api_key"];
    helpdeskUserId = json["helpdesk_user_id"];
    janrainIdentifier = json["janrain_identifier"];
    profileId = json["profile_id"];
    profileType = json["profile_type"];
    bFirstname = json["b_firstname"];
    bLastname = json["b_lastname"];
    bAddress = json["b_address"];
    bAddress2 = json["b_address_2"];
    bCity = json["b_city"];
    bCounty = json["b_county"];
    bState = json["b_state"];
    bCountry = json["b_country"];
    bZipcode = json["b_zipcode"];
    bPhone = json["b_phone"];
    sFirstname = json["s_firstname"];
    sLastname = json["s_lastname"];
    sAddress = json["s_address"];
    sAddress2 = json["s_address_2"];
    sCity = json["s_city"];
    sCounty = json["s_county"];
    sState = json["s_state"];
    sCountry = json["s_country"];
    sZipcode = json["s_zipcode"];
    sPhone = json["s_phone"];
    sAddressType = json["s_address_type"];
    profileName = json["profile_name"];
    profileUpdateTimestamp = json["profile_update_timestamp"];
    fields = json["fields"] ?? [];
    bCountryDescr = json["b_country_descr"];
    sCountryDescr = json["s_country_descr"];
    bStateDescr = json["b_state_descr"];
    sStateDescr = json["s_state_descr"];
    points = json["points"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["user_id"] = userId;
    data["status"] = status;
    data["user_type"] = userType;
    data["user_login"] = userLogin;
    data["referer"] = referer;
    data["is_root"] = isRoot;
    data["company_id"] = companyId;
    data["last_activity"] = lastActivity;
    data["timestamp"] = timestamp;
    data["password"] = password;
    data["salt"] = salt;
    data["firstname"] = firstname;
    data["lastname"] = lastname;
    data["company"] = company;
    data["email"] = email;
    data["phone"] = phone;
    data["fax"] = fax;
    data["url"] = url;
    data["tax_exempt"] = taxExempt;
    data["lang_code"] = langCode;
    data["birthday"] = birthday;
    data["purchase_timestamp_from"] = purchaseTimestampFrom;
    data["purchase_timestamp_to"] = purchaseTimestampTo;
    data["responsible_email"] = responsibleEmail;
    data["password_change_timestamp"] = passwordChangeTimestamp;
    data["api_key"] = apiKey;
    data["helpdesk_user_id"] = helpdeskUserId;
    data["janrain_identifier"] = janrainIdentifier;
    data["profile_id"] = profileId;
    data["profile_type"] = profileType;
    data["b_firstname"] = bFirstname;
    data["b_lastname"] = bLastname;
    data["b_address"] = bAddress;
    data["b_address_2"] = bAddress2;
    data["b_city"] = bCity;
    data["b_county"] = bCounty;
    data["b_state"] = bState;
    data["b_country"] = bCountry;
    data["b_zipcode"] = bZipcode;
    data["b_phone"] = bPhone;
    data["s_firstname"] = sFirstname;
    data["s_lastname"] = sLastname;
    data["s_address"] = sAddress;
    data["s_address_2"] = sAddress2;
    data["s_city"] = sCity;
    data["s_county"] = sCounty;
    data["s_state"] = sState;
    data["s_country"] = sCountry;
    data["s_zipcode"] = sZipcode;
    data["s_phone"] = sPhone;
    data["s_address_type"] = sAddressType;
    data["profile_name"] = profileName;
    data["profile_update_timestamp"] = profileUpdateTimestamp;
    if (fields != null) {
      data["fields"] = fields;
    }
    data["b_country_descr"] = bCountryDescr;
    data["s_country_descr"] = sCountryDescr;
    data["b_state_descr"] = bStateDescr;
    data["s_state_descr"] = sStateDescr;
    data["points"] = points;
    return data;
  }

  UserProfiles copyWith({
    String? userId,
    String? status,
    String? userType,
    String? userLogin,
    String? referer,
    String? isRoot,
    String? companyId,
    String? lastActivity,
    String? timestamp,
    String? password,
    String? salt,
    String? firstname,
    String? lastname,
    String? company,
    String? email,
    String? phone,
    String? fax,
    String? url,
    String? taxExempt,
    String? langCode,
    String? birthday,
    String? purchaseTimestampFrom,
    String? purchaseTimestampTo,
    String? responsibleEmail,
    String? passwordChangeTimestamp,
    String? apiKey,
    String? helpdeskUserId,
    String? janrainIdentifier,
    String? profileId,
    String? profileType,
    String? bFirstname,
    String? bLastname,
    String? bAddress,
    String? bAddress2,
    String? bCity,
    String? bCounty,
    String? bState,
    String? bCountry,
    String? bZipcode,
    String? bPhone,
    String? sFirstname,
    String? sLastname,
    String? sAddress,
    String? sAddress2,
    String? sCity,
    String? sCounty,
    String? sState,
    String? sCountry,
    String? sZipcode,
    String? sPhone,
    String? sAddressType,
    String? profileName,
    String? profileUpdateTimestamp,
    List<dynamic>? fields,
    String? bCountryDescr,
    String? sCountryDescr,
    String? bStateDescr,
    String? sStateDescr,
    int? points,
  }) =>
      UserProfiles(
        userId: userId ?? this.userId,
        status: status ?? this.status,
        userType: userType ?? this.userType,
        userLogin: userLogin ?? this.userLogin,
        referer: referer ?? this.referer,
        isRoot: isRoot ?? this.isRoot,
        companyId: companyId ?? this.companyId,
        lastActivity: lastActivity ?? this.lastActivity,
        timestamp: timestamp ?? this.timestamp,
        password: password ?? this.password,
        salt: salt ?? this.salt,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        company: company ?? this.company,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        fax: fax ?? this.fax,
        url: url ?? this.url,
        taxExempt: taxExempt ?? this.taxExempt,
        langCode: langCode ?? this.langCode,
        birthday: birthday ?? this.birthday,
        purchaseTimestampFrom:
            purchaseTimestampFrom ?? this.purchaseTimestampFrom,
        purchaseTimestampTo: purchaseTimestampTo ?? this.purchaseTimestampTo,
        responsibleEmail: responsibleEmail ?? this.responsibleEmail,
        passwordChangeTimestamp:
            passwordChangeTimestamp ?? this.passwordChangeTimestamp,
        apiKey: apiKey ?? this.apiKey,
        helpdeskUserId: helpdeskUserId ?? this.helpdeskUserId,
        janrainIdentifier: janrainIdentifier ?? this.janrainIdentifier,
        profileId: profileId ?? this.profileId,
        profileType: profileType ?? this.profileType,
        bFirstname: bFirstname ?? this.bFirstname,
        bLastname: bLastname ?? this.bLastname,
        bAddress: bAddress ?? this.bAddress,
        bAddress2: bAddress2 ?? this.bAddress2,
        bCity: bCity ?? this.bCity,
        bCounty: bCounty ?? this.bCounty,
        bState: bState ?? this.bState,
        bCountry: bCountry ?? this.bCountry,
        bZipcode: bZipcode ?? this.bZipcode,
        bPhone: bPhone ?? this.bPhone,
        sFirstname: sFirstname ?? this.sFirstname,
        sLastname: sLastname ?? this.sLastname,
        sAddress: sAddress ?? this.sAddress,
        sAddress2: sAddress2 ?? this.sAddress2,
        sCity: sCity ?? this.sCity,
        sCounty: sCounty ?? this.sCounty,
        sState: sState ?? this.sState,
        sCountry: sCountry ?? this.sCountry,
        sZipcode: sZipcode ?? this.sZipcode,
        sPhone: sPhone ?? this.sPhone,
        sAddressType: sAddressType ?? this.sAddressType,
        profileName: profileName ?? this.profileName,
        profileUpdateTimestamp:
            profileUpdateTimestamp ?? this.profileUpdateTimestamp,
        fields: fields ?? this.fields,
        bCountryDescr: bCountryDescr ?? this.bCountryDescr,
        sCountryDescr: sCountryDescr ?? this.sCountryDescr,
        bStateDescr: bStateDescr ?? this.bStateDescr,
        sStateDescr: sStateDescr ?? this.sStateDescr,
        points: points ?? this.points,
      );
}
