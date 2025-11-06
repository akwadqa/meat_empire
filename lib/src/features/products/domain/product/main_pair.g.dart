// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MainPair _$MainPairFromJson(Map<String, dynamic> json) => _MainPair(
  pairId: json['pair_id'] as String,
  imageId: json['image_id'] as String,
  detailedId: json['detailed_id'] as String,
  position: json['position'] as String,
  objectId: json['object_id'] as String,
  objectType: json['object_type'] as String,
  detailed: Detailed.fromJson(json['detailed'] as Map<String, dynamic>),
);
