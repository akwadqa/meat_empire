// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailsImpl _$$ProductDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ProductDetailsImpl(
      minItemsInBox: (json['min_items_in_box'] as num).toInt(),
      maxItemsInBox: (json['max_items_in_box'] as num).toInt(),
      boxLength: (json['box_length'] as num).toInt(),
      boxWidth: (json['box_width'] as num).toInt(),
      boxHeight: (json['box_height'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      productCode: json['product_code'] as String,
      productType: json['product_type'] as String,
      status: json['status'] as String,
      companyId: json['company_id'] as String,
      listPrice: json['list_price'] as String,
      amount: (json['amount'] as num).toInt(),
      weight: json['weight'] as String,
      length: json['length'] as String,
      width: json['width'] as String,
      height: json['height'] as String,
      shippingFreight: json['shipping_freight'] as String,
      lowAvailLimit: json['low_avail_limit'] as String,
      timestamp: json['timestamp'] as String,
      updatedTimestamp: json['updated_timestamp'] as String,
      usergroupIds: json['usergroup_ids'] as String,
      isEdp: json['is_edp'] as String,
      edpShipping: json['edp_shipping'] as String,
      unlimitedDownload: json['unlimited_download'] as String,
      tracking: json['tracking'] as String,
      freeShipping: json['free_shipping'] as String,
      zeroPriceAction: json['zero_price_action'] as String,
      isPbp: json['is_pbp'] as String,
      isOp: json['is_op'] as String,
      isOper: json['is_oper'] as String,
      isReturnable: json['is_returnable'] as String,
      returnPeriod: json['return_period'] as String,
      availSince: json['avail_since'] as String,
      outOfStockActions: json['out_of_stock_actions'] as String,
      localization: json['localization'] as String,
      minQty: json['min_qty'] as String,
      maxQty: json['max_qty'] as String,
      qtyStep: json['qty_step'] as String,
      listQtyCount: json['list_qty_count'] as String,
      taxIds: json['tax_ids'] as List<dynamic>,
      ageVerification: json['age_verification'] as String,
      ageLimit: json['age_limit'] as String,
      optionsType: json['options_type'] as String,
      exceptionsType: json['exceptions_type'] as String,
      detailsLayout: json['details_layout'] as String,
      shippingParams: json['shipping_params'] as String,
      facebookObjType: json['facebook_obj_type'] as String,
      parentProductId: json['parent_product_id'] as String,
      buyNowUrl: json['buy_now_url'] as String,
      unitsInProduct: json['units_in_product'] as String,
      showPricePerXUnits: json['show_price_per_x_units'] as String,
      langCode: json['lang_code'] as String,
      product: json['product'] as String,
      shortname: json['shortname'] as String,
      shortDescription: json['short_description'],
      fullDescription: json['full_description'] as String,
      metaKeywords: json['meta_keywords'] as String,
      metaDescription: json['meta_description'] as String,
      searchWords: json['search_words'],
      pageTitle: json['page_title'] as String,
      ageWarningMessage: json['age_warning_message'],
      promoText: json['promo_text'],
      unitName: json['unit_name'] as String,
      price: json['price'] as String,
      categoryIds: (json['category_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      popularity: json['popularity'] as String,
      companyName: json['company_name'] as String,
      salesAmount: json['sales_amount'] as String?,
      seoName: json['seo_name'] as String,
      seoPath: json['seo_path'] as String,
      pointPrice: json['point_price'],
      discussionType: json['discussion_type'] as String?,
      averageRating: json['average_rating'],
      productReviewsCount: json['product_reviews_count'],
      basePrice: json['base_price'] as String,
      mainCategory: (json['main_category'] as num).toInt(),
      imagePairs: json['image_pairs'] as List<dynamic>,
      mainPair: MainPair.fromJson(json['main_pair'] as Map<String, dynamic>),
      sharedProduct: json['shared_product'] as String,
      productFeatures: json['product_features'] as List<dynamic>,
      headerFeatures: json['header_features'] as List<dynamic>,
      optionsTypeRaw: json['options_type_raw'],
      exceptionsTypeRaw: json['exceptions_type_raw'],
      trackingRaw: json['tracking_raw'],
      zeroPriceActionRaw: json['zero_price_action_raw'],
      minQtyRaw: json['min_qty_raw'],
      maxQtyRaw: json['max_qty_raw'],
      qtyStepRaw: json['qty_step_raw'],
      listQtyCountRaw: json['list_qty_count_raw'],
      detailsLayoutRaw: json['details_layout_raw'] as String,
      detailedParams: DetailedParams.fromJson(
        json['detailed_params'] as Map<String, dynamic>,
      ),
      sharedBetweenCompanies:
          (json['shared_between_companies'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      haveRequired: json['have_required'] as String,
      variationFeatures: (json['variation_features'] as List<dynamic>)
          .map((e) => VariationFeature.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedOptions: json['selected_options'],
      hasOptions: json['has_options'] as bool,
      productOptions: json['product_options'] == null
          ? null
          : ProductOptions.fromJson(
              json['product_options'] as Map<String, dynamic>,
            ),
      discounts: Discounts.fromJson(json['discounts'] as Map<String, dynamic>),
      qtyContent: json['qty_content'] as List<dynamic>,
      imageUrl: json['image_url'] as String,
      companyLogo: json['company_logo'] as String,
      allowAddToCart: json['allow_add_to_cart'] as bool,
      allowPostReview: json['allow_post_review'] as bool,
      formatPrice: json['format_price'] as String,
      formatListPrice: json['format_list_price'] as String,
      formatBasePrice: json['format_base_price'] as String,
      ecRewardPoints: (json['ec_reward_points'] as num).toInt(),
      attachments: json['attachments'] as List<dynamic>,
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      additionalImages: json['additional_images'] as List<dynamic>,
      websiteUrl: json['website_url'] as String,
      productReviews: json['product_reviews'] as List<dynamic>,
      productReviewsRatingStats:
          json['product_reviews_rating_stats'] as List<dynamic>,
      productReviewsSearch: ProductReviewsSearch.fromJson(
        json['product_reviews_search'] as Map<String, dynamic>,
      ),
      productReviewsSorting: (json['product_reviews_sorting'] as List<dynamic>)
          .map((e) => ProductReviewsSorting.fromJson(e as Map<String, dynamic>))
          .toList(),
      productReviewsSortingOrders:
          (json['product_reviews_sorting_orders'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      productReviewsAvailSorting: ProductReviewsAvailSorting.fromJson(
        json['product_reviews_avail_sorting'] as Map<String, dynamic>,
      ),
      variationFeatureCollection: json['variation_feature_collection'],
      allowChat: json['allow_chat'] as bool,
      chatThreadId: json['chat_thread_id'] as String,
    );
