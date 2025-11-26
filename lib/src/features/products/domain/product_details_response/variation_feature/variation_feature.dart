import 'package:freezed_annotation/freezed_annotation.dart';

part 'variation_feature.freezed.dart';
part 'variation_feature.g.dart';

@freezed
abstract class VariationFeature with _$VariationFeature {
  factory VariationFeature({
    required String featureId,
    required String featureStyle,
    required String position,
    required String purpose,
    required String displayOnCatalog,
    required String description,
    required String internalName,
    required String prefix,
    required String suffix,
    required String purposePosition,
    required String productFeaturePurpose,
    required String variant,
    required String variantId,
    required String variantPosition,
  }) = _VariationFeature;

  factory VariationFeature.fromJson(Map<String, dynamic> json) =>
      _$VariationFeatureFromJson(json);
}
