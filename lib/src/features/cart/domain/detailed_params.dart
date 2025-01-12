import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_params.freezed.dart';
part 'detailed_params.g.dart';

@freezed
class DetailedParams with _$DetailedParams {
  factory DetailedParams({
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
  }) = _DetailedParams;

  factory DetailedParams.fromJson(Map<String, dynamic> json) =>
      _$DetailedParamsFromJson(json);
}