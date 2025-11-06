import 'package:freezed_annotation/freezed_annotation.dart';

part 'taxes.freezed.dart';
part 'taxes.g.dart';

@freezed
abstract class Taxes with _$Taxes {
  factory Taxes({
    String? taxValue,
    String? taxName,
  }) = _Taxes;

  factory Taxes.fromJson(Map<String, dynamic> json) => _$TaxesFromJson(json);
}