import 'package:freezed_annotation/freezed_annotation.dart';

part 'with_images.freezed.dart';
part 'with_images.g.dart';

@freezed
abstract class WithImages with _$WithImages {
  factory WithImages({
    required String param,
    required String name,
    required bool selected,
  }) = _WithImages;

  factory WithImages.fromJson(Map<String, dynamic> json) =>
      _$WithImagesFromJson(json);
}
