import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_option.freezed.dart';
part 'selected_option.g.dart';

@freezed
abstract class SelectedOption with _$SelectedOption {
  const SelectedOption._();
  factory SelectedOption({required int optionId, required int variantId}) =
      _SelectedOption;

  factory SelectedOption.fromJson(Map<String, dynamic> json) =>
      _$SelectedOptionFromJson(json);
  Map<String, dynamic> toRequestJson() {
    return {
      'option_id': optionId,
      'value': variantId, // 👈 send as "value"
    };
  }
}
