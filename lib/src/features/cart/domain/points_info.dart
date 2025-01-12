import 'package:freezed_annotation/freezed_annotation.dart';

part 'points_info.freezed.dart';
part 'points_info.g.dart';

@freezed
class PointsInfo with _$PointsInfo {
  factory PointsInfo({
    int? rawTotalPrice,
    int? totalPrice,
  }) = _PointsInfo;

  factory PointsInfo.fromJson(Map<String, dynamic> json) => _$PointsInfoFromJson(json);
}