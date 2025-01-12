import 'package:freezed_annotation/freezed_annotation.dart';

part 'tax_summary.freezed.dart';
part 'tax_summary.g.dart';

@freezed
class TaxSummary with _$TaxSummary {
  factory TaxSummary({
    double? included,
    int? added,
    double? total,
  }) = _TaxSummary;

  factory TaxSummary.fromJson(Map<String, dynamic> json) => _$TaxSummaryFromJson(json);
}