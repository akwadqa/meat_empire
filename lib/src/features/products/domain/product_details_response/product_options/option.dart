import 'package:freezed_annotation/freezed_annotation.dart';

import 'variant.dart';

part 'option.freezed.dart';
part 'option.g.dart';

@freezed
class Option with _$Option {
  factory Option({
    required List<Variant> variants,
    required int optionId,
    required String optionType,
    required String optionName,
    @JsonKey(name: 'required') required String isRequired,
    required bool inventory,
    required String innerHint,
    required int textModifier,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}
