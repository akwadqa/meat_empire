import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../domain/product_details_response/product_options/selected_option.dart';
import '../../../domain/product_details_response/product_options/variant.dart';

part 'product_options_controller.g.dart';

@riverpod
class ProductOptionsController extends _$ProductOptionsController {
  @override
  List<SelectedOption> build() {
    // Start with an empty list
    return [];
  }

  void selectVariant(int optionId, Variant variant) {
    // Check if the option already exists in the state
    final optionExists = state.any((option) => option.optionId == optionId);

    if (optionExists) {
      // Update the existing option
      state = [
        for (final option in state)
          if (option.optionId == optionId)
            SelectedOption(
                optionId: optionId, variantId: int.parse(variant.variantId))
          else
            option,
      ];
    } else {
      // Add a new SelectedOption to the list
      state = [
        ...state,
        SelectedOption(
            optionId: optionId, variantId: int.parse(variant.variantId)),
      ];
    }
  }
}
