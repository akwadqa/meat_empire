import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../products/domain/product/product.dart';
import 'search.dart';
import 'sorting.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

@freezed
abstract class SearchResponse with _$SearchResponse {
  factory SearchResponse({
    required List<Product> products,
    required Search search,
    required List<Sorting> sortings,
    required dynamic totalProducts,
    required String message,
    required bool success,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}
