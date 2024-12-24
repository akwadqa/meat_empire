import 'package:freezed_annotation/freezed_annotation.dart';

import 'detailed.dart';

part 'main_pair.freezed.dart';
part 'main_pair.g.dart';

@freezed
class MainPair with _$MainPair {
  factory MainPair({
    required String pairId,
    required String imageId,
    required String detailedId,
    required String position,
    required String objectId,
    required String objectType,
    required Detailed detailed,
  }) = _MainPair;

  factory MainPair.fromJson(Map<String, dynamic> json) =>
      _$MainPairFromJson(json);
}
