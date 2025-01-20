// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectedOptionImpl _$$SelectedOptionImplFromJson(Map<String, dynamic> json) =>
    _$SelectedOptionImpl(
      optionId: (json['option_id'] as num).toInt(),
      variantId: (json['variant_id'] as num).toInt(),
    );

Map<String, dynamic> _$$SelectedOptionImplToJson(
        _$SelectedOptionImpl instance) =>
    <String, dynamic>{
      'option_id': instance.optionId,
      'variant_id': instance.variantId,
    };
