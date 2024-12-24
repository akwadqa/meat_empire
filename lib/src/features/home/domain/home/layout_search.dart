import 'package:freezed_annotation/freezed_annotation.dart';

part 'layout_search.freezed.dart';
part 'layout_search.g.dart';

@freezed
class LayoutSearch with _$LayoutSearch {
  factory LayoutSearch({
    required int page,
    required int itemsPerPage,
    required String status,
    required int storefrontId,
    required String sortOrder,
    required String sortBy,
    required String sortOrderRev,
  }) = _LayoutSearch;

  factory LayoutSearch.fromJson(Map<String, dynamic> json) =>
      _$LayoutSearchFromJson(json);
}
