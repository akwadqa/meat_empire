import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'set_category_id_controller.g.dart';

@riverpod
class SelectedCategory extends _$SelectedCategory {
  @override
  String build() => '';

  void setCategory(String categoryId) => state = categoryId;
}