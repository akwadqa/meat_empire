import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_params.freezed.dart';
part 'detailed_params.g.dart';

@freezed
class DetailedParams with _$DetailedParams {
  factory DetailedParams({
    required bool getIcon,
    required bool getDetailed,
    required bool getAdditional,
    required bool getOptions,
    required bool getDiscounts,
    required bool getFeatures,
    required bool getExtra,
    required bool getTaxedPrices,
    required bool getForOneProduct,
    required bool detailedParams,
    required String featuresDisplayOn,
    required bool getActiveOptions,
    required bool getOnlySelectableOptions,
    required bool? additionalData,
    required int? userId,
    required int? imageWidth,
    required String? currencyCode,
    required bool getVariationInfo,
    required bool getVariationFeaturesVariants,
    required bool getVariationName,
    required bool getProductType,
  }) = _DetailedParams;

  factory DetailedParams.fromJson(Map<String, dynamic> json) =>
      _$DetailedParamsFromJson(json);
}
