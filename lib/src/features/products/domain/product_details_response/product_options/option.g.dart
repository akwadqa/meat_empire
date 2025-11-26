// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Option _$OptionFromJson(Map<String, dynamic> json) => _Option(
  variants: (json['variants'] as List<dynamic>)
      .map((e) => Variant.fromJson(e as Map<String, dynamic>))
      .toList(),
  optionId: (json['option_id'] as num).toInt(),
  optionType: json['option_type'] as String,
  optionName: json['option_name'] as String,
  isRequired: json['required'] as String,
  inventory: json['inventory'] as bool,
  innerHint: json['inner_hint'] as String,
  textModifier: (json['text_modifier'] as num).toInt(),
);
