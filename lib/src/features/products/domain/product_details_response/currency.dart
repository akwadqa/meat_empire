import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';
part 'currency.g.dart';

@freezed
abstract class Currency with _$Currency {
  factory Currency({
    required String currencyCode,
    required String after,
    required String symbol,
    required String coefficient,
    required String decimalsSeparator,
    required String thousandsSeparator,
    required String decimals,
    required String description,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}
