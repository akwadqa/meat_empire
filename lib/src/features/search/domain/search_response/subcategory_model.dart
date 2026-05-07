import 'package:freezed_annotation/freezed_annotation.dart';


part 'subcategory_model.freezed.dart';
part 'subcategory_model.g.dart';

@freezed
abstract class SubcategoryModel with _$SubcategoryModel {
  factory SubcategoryModel({
    required String categoryId,
    required String name,
    required String image,
  }) = _SubcategoryModel;

  factory SubcategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryModelFromJson(json);
}
