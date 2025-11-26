import 'package:freezed_annotation/freezed_annotation.dart';

import 'option.dart';
import 'selected_option.dart';

part 'product_options.freezed.dart';
part 'product_options.g.dart';

@freezed
abstract class ProductOptions with _$ProductOptions {
  factory ProductOptions({
    required List<Option> options,
    required List<SelectedOption> selectedOptions,
  }) = _ProductOptions;

  factory ProductOptions.fromJson(Map<String, dynamic> json) =>
      _$ProductOptionsFromJson(json);
}
