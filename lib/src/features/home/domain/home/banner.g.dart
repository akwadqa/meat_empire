// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Banner _$BannerFromJson(Map<String, dynamic> json) => _Banner(
  id: json['id'] as String,
  name: json['name'] as String,
  type: json['type'] as String,
  position: json['position'] as String,
  locationId: json['location_id'] as String,
  status: json['status'] as String,
  descId: json['desc_id'] as String,
  langCode: json['lang_code'] as String,
  imagePath: json['image_path'] as String,
  locationData: LocationData.fromJson(
    json['location_data'] as Map<String, dynamic>,
  ),
);
