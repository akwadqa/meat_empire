import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_product.freezed.dart';
part 'order_product.g.dart';

@Freezed(
  fromJson: true,
)
class OrderProduct with _$OrderProduct {
  const factory OrderProduct({
    required String productId,
    @JsonKey(name: "order_id") required String orderId,
    @JsonKey(name: "image_url") required String imageUrl,
    required String product,
    required int amount,
  }) = _OrderProduct;

  /// Custom fromJson method
  factory OrderProduct.fromJson(Map<String, dynamic> json) {
    // Determine the key based on your condition (e.g., isUpdate)
    return _$OrderProductFromJson(json);
  }
}
