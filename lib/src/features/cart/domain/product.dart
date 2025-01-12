import 'package:freezed_annotation/freezed_annotation.dart';

import 'extra.dart';
import 'main_pair.dart';
import 'product_option.dart';
import 'user_data.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    String? userId,
    String? timestamp,
    String? type,
    String? userType,
    String? itemId,
    String? itemType,
    int? productId,
    dynamic amount,
    String? price,
    String? sessionId,
    String? ipAddress,
    String? orderId,
    String? storefrontId,
    String? position,
    String? companyId,
    String? productCode,
    String? product,
    List<ProductOption>? productOptions,
    String? storedPrice,
    MainPair? mainPair,
    Extra? extra,
    String? storedDiscount,
    dynamic amountTotal,
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
    int? mainCategory,
    String? subtotal,
    String? formatPrice,
    String? formatSubtotal,
    String? formatBasePrice,
    String? imageUrl,
    String? companyName,
    String? wishlistId,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}