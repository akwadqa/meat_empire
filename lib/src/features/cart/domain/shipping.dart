import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping.freezed.dart';
part 'shipping.g.dart';

@freezed
class Shipping with _$Shipping {
  factory Shipping({
    String? shippingId,
    String? shipping,
    String? description,
    String? serviceDeliveryTime,
    double? rate,
    String? formatRate,
  }) = _Shipping;

  factory Shipping.fromJson(Map<String, dynamic> json) =>
      _$ShippingFromJson(json);
}