// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductOptions _$ProductOptionsFromJson(Map<String, dynamic> json) =>
    _ProductOptions(
      options: (json['options'] as List<dynamic>)
          .map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedOptions: (json['selected_options'] as List<dynamic>)
          .map((e) => SelectedOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
