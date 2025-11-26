import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';
part 'page.g.dart';

@freezed
abstract class Page with _$Page {
  factory Page({
    required String id,
    required String choosePage,
    required String position,
    required String status,
    required String title,
    required String langCode,
    required String pageUrl,
  }) = _Page;

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
}
