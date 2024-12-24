import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed.freezed.dart';
part 'detailed.g.dart';

@freezed
class Detailed with _$Detailed {
  factory Detailed({
    required String objectId,
    required String objectType,
    required String type,
    required String imagePath,
    required String alt,
    required String imageX,
    required String imageY,
    required String httpImagePath,
    required String httpsImagePath,
    required String absolutePath,
    required String relativePath,
    required bool isHighRes,
  }) = _Detailed;

  factory Detailed.fromJson(Map<String, dynamic> json) =>
      _$DetailedFromJson(json);
}
