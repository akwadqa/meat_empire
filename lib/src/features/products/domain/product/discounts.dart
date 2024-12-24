import 'package:freezed_annotation/freezed_annotation.dart';

part 'discounts.freezed.dart';
part 'discounts.g.dart';

@freezed
class Discounts with _$Discounts {
  factory Discounts({
    @JsonKey(name: 'A') required int a,
    @JsonKey(name: 'P') required int p,
  }) = _Discounts;

  factory Discounts.fromJson(Map<String, dynamic> json) =>
      _$DiscountsFromJson(json);
}
