import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'search_category_index_controller.g.dart';
@Riverpod(keepAlive: true)
class SearchCategoryIndexController extends _$SearchCategoryIndexController {
  @override
  bool build() => false;

  void switchState() {
    state = true;
  }

  void checkState() {
    debugPrint(state.toString() );
    state = false;
  }
}
