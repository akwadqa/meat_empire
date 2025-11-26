import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_option.freezed.dart';
part 'selected_option.g.dart';

@Freezed(toJson: true)
abstract class SelectedOption with _$SelectedOption {
  factory SelectedOption({
    required int optionId,
    required int variantId,
  }) = _SelectedOption;

  factory SelectedOption.fromJson(Map<String, dynamic> json) =>
      _$SelectedOptionFromJson(json);
}
