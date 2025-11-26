import 'package:freezed_annotation/freezed_annotation.dart';

import 'detailed.dart';

part 'main_pair.freezed.dart';
part 'main_pair.g.dart';

@freezed
abstract class MainPair with _$MainPair {
  factory MainPair({
    String? pairId,
    String? imageId,
    String? detailedId,
    String? position,
    String? objectId,
    String? objectType,
    Detailed? detailed,
  }) = _MainPair;

  factory MainPair.fromJson(Map<String, dynamic> json) =>
      _$MainPairFromJson(json);
}