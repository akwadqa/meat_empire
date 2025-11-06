import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed.freezed.dart';
part 'detailed.g.dart';

@freezed
abstract class Detailed with _$Detailed {
  factory Detailed({
    String? objectId,
    String? objectType,
    String? type,
    String? imagePath,
    String? alt,
    String? imageX,
    String? imageY,
    String? httpImagePath,
    String? httpsImagePath,
    String? absolutePath,
    String? relativePath,
    bool? isHighRes,
  }) = _Detailed;

  factory Detailed.fromJson(Map<String, dynamic> json) =>
      _$DetailedFromJson(json);
}