// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainPairImpl _$$MainPairImplFromJson(Map<String, dynamic> json) =>
    _$MainPairImpl(
      pairId: json['pair_id'] as String?,
      imageId: json['image_id'] as String?,
      detailedId: json['detailed_id'] as String?,
      position: json['position'] as String?,
      objectId: json['object_id'] as String?,
      objectType: json['object_type'] as String?,
      detailed: json['detailed'] == null
          ? null
          : Detailed.fromJson(json['detailed'] as Map<String, dynamic>),
    );
