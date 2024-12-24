import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/search/domain/search_response/search_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../constants/end_points.dart';
import '../../../network/network_service.dart';

part 'search_repository.g.dart';

@Riverpod(keepAlive: true)
SearchRepository searchRepository(Ref ref) {
  return SearchRepository(ref.watch(networkServiceProvider()));
}

class SearchRepository {
  final NetworkService _networkService;

  SearchRepository(this._networkService);

  Future<SearchResponse> search(
      {String? query,
      String? categoryId,
      String? sortBy,
      String? sortOrder,
      int itemsPerPage = 10,
      int page = 1}) async {
    final Map<String, String> queryParams = {
      if (query != null) 'q': query,
      if (categoryId != null) 'category_id': categoryId,
      if (sortBy != null) 'sort_by': sortBy,
      if (sortOrder != null) 'sort_order': sortOrder,
      'items_per_page': itemsPerPage.toString(),
      'page': page.toString(),
    };

    final response = await _networkService.get(EndPoints.productsApi,
        queryParameters: queryParams);

    SearchResponse searchResponse = SearchResponse.fromJson(response.data);
    if (searchResponse.success == true) {
      return searchResponse;
    }

    throw AppException(searchResponse.message);
  }
}
