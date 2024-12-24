import 'package:freezed_annotation/freezed_annotation.dart';

part 'sorting.freezed.dart';
part 'sorting.g.dart';

@freezed
class Sorting with _$Sorting {
  factory Sorting({
    required String name,
    required String sortBy,
    required String sortOrder,
  }) = _Sorting;

  factory Sorting.fromJson(Map<String, dynamic> json) =>
      _$SortingFromJson(json);
}