import 'package:freezed_annotation/freezed_annotation.dart';

import 'items.dart';

part 'filtering.freezed.dart';
part 'filtering.g.dart';

@freezed
class Filtering with _$Filtering {
  factory Filtering({
    required Items items,
  }) = _Filtering;

  factory Filtering.fromJson(Map<String, dynamic> json) =>
      _$FilteringFromJson(json);
}
