import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_info.freezed.dart';
part 'rate_info.g.dart';

@freezed
class RateInfo with _$RateInfo {
  factory RateInfo({
    String? rateId,
    String? shippingId,
    String? destinationId,
    String? baseRate,
  }) = _RateInfo;

  factory RateInfo.fromJson(Map<String, dynamic> json) => _$RateInfoFromJson(json);
}