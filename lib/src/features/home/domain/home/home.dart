import 'package:meat_empire/src/features/products/domain/product/product.dart';

import 'app_configuration.dart';
import 'banner.dart';
import 'category/category.dart';
import 'currency.dart';
import 'language.dart';
import 'layout.dart';
import 'layout_search.dart';
import 'page.dart';

class Home {
  final LayoutSearch layoutSearch;
  final List<dynamic> promotionBanners;
  final int showPromotionPopupDelay;
  final List<Layout> layout;
  final bool multipleProfile;
  final String defaultLanguage;
  final String defaultCurrency;
  final List<Currency> currencies;
  final List<Language> languages;
  final AppConfiguration appConfiguration;
  final String termsConditionPageId;
  final List<Page> pages;
  final int totalProducts;
  final String message;
  final bool success;

  Home({
    required this.layoutSearch,
    required this.promotionBanners,
    required this.showPromotionPopupDelay,
    required this.layout,
    required this.multipleProfile,
    required this.defaultLanguage,
    required this.defaultCurrency,
    required this.currencies,
    required this.languages,
    required this.appConfiguration,
    required this.termsConditionPageId,
    required this.pages,
    required this.totalProducts,
    required this.message,
    required this.success,
  });

  factory Home.fromJson(Map<String, dynamic> json) {
    return Home(
      layoutSearch: LayoutSearch.fromJson(json['layout_search']),
      promotionBanners: List<dynamic>.from(json['promotion_banners']),
      showPromotionPopupDelay: json['show_promotion_popup_delay'] as int,
      layout: (json['layout'] as List)
          .map((e) => Layout.fromJson(e as Map<String, dynamic>, (json) {
                final type = e['type'];
                return switch (type) {
                  'banner' => Banner.fromJson(json),
                  'categories' => Category.fromJson(json),
                  'products' => Product.fromJson(json),
                  _ => Product.fromJson(json)
                };
              }))
          .toList(),
      multipleProfile: json['multiple_profile'] as bool,
      defaultLanguage: json['default_language'] as String,
      defaultCurrency: json['default_currency'] as String,
      currencies: (json['currencies'] as List)
          .map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
      languages: (json['languages'] as List)
          .map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
      appConfiguration: AppConfiguration.fromJson(json['app_configuration']),
      termsConditionPageId: json['terms_condition_page_id'] as String,
      pages: (json['pages'] as List)
          .map((e) => Page.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalProducts: json['total_products'] as int,
      message: json['message'] as String,
      success: json['success'] as bool,
    );
  }
}
