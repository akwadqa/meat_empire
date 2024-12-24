import 'package:freezed_annotation/freezed_annotation.dart';

import 'location_data.dart';

part 'banner.freezed.dart';
part 'banner.g.dart';

@freezed
class Banner with _$Banner {
  factory Banner({
    required String id,
    required String name,
    required String type,
    required String position,
    required String locationId,
    required String status,
    required String descId,
    required String langCode,
    required String imagePath,
    required LocationData locationData,
  }) = _Banner;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}
