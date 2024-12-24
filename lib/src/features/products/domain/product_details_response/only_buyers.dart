import 'package:freezed_annotation/freezed_annotation.dart';

part 'only_buyers.freezed.dart';
part 'only_buyers.g.dart';

@freezed
class OnlyBuyers with _$OnlyBuyers {
  factory OnlyBuyers({
    required String param,
    required String name,
    required bool selected,
  }) = _OnlyBuyers;

  factory OnlyBuyers.fromJson(Map<String, dynamic> json) =>
      _$OnlyBuyersFromJson(json);
}
