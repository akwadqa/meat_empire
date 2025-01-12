// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      userId: json['user_id'] as String?,
      timestamp: json['timestamp'] as String?,
      type: json['type'] as String?,
      userType: json['user_type'] as String?,
      itemId: json['item_id'] as String?,
      itemType: json['item_type'] as String?,
      productId: (json['product_id'] as num?)?.toInt(),
      amount: json['amount'],
      price: json['price'] as String?,
      sessionId: json['session_id'] as String?,
      ipAddress: json['ip_address'] as String?,
      orderId: json['order_id'] as String?,
      storefrontId: json['storefront_id'] as String?,
      position: json['position'] as String?,
      companyId: json['company_id'] as String?,
      productCode: json['product_code'] as String?,
      product: json['product'] as String?,
      productOptions: (json['product_options'] as List<dynamic>?)
          ?.map((e) => ProductOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      storedPrice: json['stored_price'] as String?,
      mainPair: json['main_pair'] == null
          ? null
          : MainPair.fromJson(json['main_pair'] as Map<String, dynamic>),
      extra: json['extra'] == null
          ? null
          : Extra.fromJson(json['extra'] as Map<String, dynamic>),
      storedDiscount: json['stored_discount'] as String?,
      amountTotal: json['amount_total'],
      optionsType: json['options_type'] as String?,
      exceptionsType: json['exceptions_type'] as String?,
      optionsTypeRaw: json['options_type_raw'],
      exceptionsTypeRaw: json['exceptions_type_raw'],
      modifiersPrice: (json['modifiers_price'] as num?)?.toInt(),
      isEdp: json['is_edp'] as String?,
      edpShipping: json['edp_shipping'] as String?,
      discount: (json['discount'] as num?)?.toInt(),
      promotions: json['promotions'] as List<dynamic>?,
      basePrice: json['base_price'] as String?,
      categoryIds: (json['category_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      displayPrice: (json['display_price'] as num?)?.toInt(),
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      userData: json['user_data'] == null
          ? null
          : UserData.fromJson(json['user_data'] as Map<String, dynamic>),
      groupId: (json['group_id'] as num?)?.toInt(),
      chosenShipping: json['chosen_shipping'],
      mainCategory: (json['main_category'] as num?)?.toInt(),
      subtotal: json['subtotal'] as String?,
      formatPrice: json['format_price'] as String?,
      formatSubtotal: json['format_subtotal'] as String?,
      formatBasePrice: json['format_base_price'] as String?,
      imageUrl: json['image_url'] as String?,
      companyName: json['company_name'] as String?,
      wishlistId: json['wishlist_id'] as String?,
    );
