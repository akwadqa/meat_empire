import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quantity_controller.g.dart';

@riverpod
class QuantityController extends _$QuantityController {
  @override
  int build({
    required int initialQuantity,
    required int minQuantity,
    required int maxQuantity,
  }) {
    return initialQuantity;
  }

  void increase() {
    if (state < maxQuantity) state++;
  }

  void decrease() {
    if (state > minQuantity) state--;
  }
}
