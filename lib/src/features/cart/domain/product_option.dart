import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_option.freezed.dart';
part 'product_option.g.dart';

@freezed
abstract class ProductOption with _$ProductOption {
  factory ProductOption({
    dynamic optionId,
    dynamic optionType,
    String? optionName,
    String? optionTypeName,
    dynamic selectedVariant,
    String? value,
  }) = _ProductOption;

  factory ProductOption.fromJson(Map<String, dynamic> json) => _$ProductOptionFromJson(json);
}