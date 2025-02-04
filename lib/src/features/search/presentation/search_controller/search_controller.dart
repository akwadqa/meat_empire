import 'package:meat_empire/src/features/search/domain/search_response/search_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/search_repository.dart';

part 'search_controller.g.dart';

@riverpod
class SearchController extends _$SearchController {
  @override
  FutureOr<SearchResponse> build([String? categoryId]) {
    return ref.watch(searchRepositoryProvider).search(categoryId: categoryId);
  }

  Future<void> search(String query) async {
    state = AsyncLoading();
    final searchRepository = ref.watch(searchRepositoryProvider);
    state = await AsyncValue.guard(() => searchRepository.search(query: query));
  }

  Future<void> sort({String? sortBy, String? sortOrder}) async {
    state = AsyncLoading();
    final searchRepository = ref.watch(searchRepositoryProvider);
    state =
        await AsyncValue.guard(() => searchRepository.search(sortBy: sortBy, sortOrder: sortOrder));
  }

  Future<bool> loadMore(int page) async {
    if (state.asData?.value.products.length ==
        int.parse(state.asData!.value.search.totalItems)) {
      return false;
    }
    final searchRepository = ref.watch(searchRepositoryProvider);
    final response = await searchRepository.search(page: page);
    state = AsyncValue.data(response.copyWith(products: [
      ...state.asData?.value.products ?? [],
      ...response.products
    ]));
    return true;
  }
}
