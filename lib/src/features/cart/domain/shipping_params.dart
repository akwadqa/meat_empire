import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_params.freezed.dart';
part 'shipping_params.g.dart';

@freezed
class ShippingParams with _$ShippingParams {
  factory ShippingParams({
    int? minItemsInBox,
    int? maxItemsInBox,
    int? boxLength,
    int? boxWidth,
    int? boxHeight,
  }) = _ShippingParams;

  factory ShippingParams.fromJson(Map<String, dynamic> json) =>
      _$ShippingParamsFromJson(json);
}