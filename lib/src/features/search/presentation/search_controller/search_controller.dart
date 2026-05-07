import 'package:meat_empire/src/features/search/domain/search_response/search_response.dart';
import 'package:meat_empire/src/features/search/domain/search_response/subcategory_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/search_repository.dart';

part 'search_controller.g.dart';

@riverpod
class SearchController extends _$SearchController {
  String? _currentQuery;
  String? _currentCategoryId;
  String? _selectedSubcategoryId;
  String? _sortBy;
  String? _sortOrder;
  List<SubcategoryModel>? _cachedSubcategories;
  @override
  FutureOr<SearchResponse> build([String? categoryId]) async {
    _currentCategoryId = categoryId;
    _currentQuery = null;
    _selectedSubcategoryId = null;

    final response = await _fetch();

    // 🔥 خزّن subcategories أول مرة
    _cachedSubcategories = response.subcategories;

    return response;
  }

  Future<SearchResponse> _fetch({int page = 1}) {
    final repo = ref.watch(searchRepositoryProvider);

    return repo.search(
      query: _currentQuery,
      categoryId: _currentCategoryId,
      sortBy: _sortBy,
      sortOrder: _sortOrder,
      page: page,
    );
  }

  // 🔍 search (لا يلغي category)
  Future<void> search(String query) async {
    state = const AsyncLoading();
    _currentQuery = query;

    state = await AsyncValue.guard(() => _fetch());
  }

  // 📂 main category
  Future<void> changeMainCategory(String id) async {
    state = const AsyncLoading();

    _currentCategoryId = id;
    _selectedSubcategoryId = null;

    final response = await _fetch();

    // 🔥 تحديث cache
    _cachedSubcategories = response.subcategories;

    state = AsyncData(response);
  }

  // 🧩 subcategory
  Future<void> changeSubCategory(String id) async {
    final current = state.asData?.value;

    // 🔥 select مباشرة بدون انتظار
    _currentCategoryId = id;
    _selectedSubcategoryId = id;

    if (current != null) {
      // 👇 حافظ على UI
      state = AsyncValue.data(
        current.copyWith(
          // optional: تفضي المنتجات لو بدك skeleton
          products: [],
        ),
      );
    }

    final response = await _fetch();

    // 🔥 نحافظ على subcategories
    state = AsyncValue.data(
      response.copyWith(subcategories: _cachedSubcategories),
    );
  }

  // 🔽 sort
  Future<void> sort({String? sortBy, String? sortOrder}) async {
    state = const AsyncLoading();

    _sortBy = sortBy;
    _sortOrder = sortOrder;

    state = await AsyncValue.guard(() => _fetch());
  }

  // 📄 pagination
  Future<bool> loadMore(int page) async {
    final current = state.asData?.value;
    if (current == null) return false;

    if (current.products.length == int.parse(current.search.totalItems)) {
      return false;
    }

    final response = await _fetch(page: page);

    state = AsyncValue.data(
      response.copyWith(products: [...current.products, ...response.products]),
    );

    return true;
  }

  // 🎯 getter للـ UI
  String? get selectedSubcategoryId => _selectedSubcategoryId;
}
// @riverpod
// class SearchController extends _$SearchController {
//   String? _currentQuery;
// String? _currentCategoryId;
// String? _selectedSubcategoryId;
//   String? _sortBy;
//   String? _sortOrder;

//   @override
//   FutureOr<SearchResponse> build([String? categoryId]) {
//       _currentCategoryId = categoryId;
//   _currentQuery = null; // clear query when loading category
//     return ref.watch(searchRepositoryProvider).search(categoryId: categoryId);
//   }

//   Future<void> search(String query) async {
//     state = AsyncLoading();
//       _currentQuery = query;
//   _currentCategoryId = null; // clear category when searching
//     final searchRepository = ref.watch(searchRepositoryProvider);
//     state = await AsyncValue.guard(() => searchRepository.search(query: query));
//   }

//   Future<void> sort({String? sortBy, String? sortOrder}) async {
//     state = AsyncLoading();
//     final searchRepository = ref.watch(searchRepositoryProvider);
//     state =
//         await AsyncValue.guard(() => searchRepository.search(sortBy: sortBy, sortOrder: sortOrder));
//   }

//   Future<bool> loadMore(int page) async {
//     if (state.asData?.value.products.length ==
//         int.parse(state.asData!.value.search.totalItems)) {
//       return false;
//     }
//     final searchRepository = ref.watch(searchRepositoryProvider);
//     final response = await searchRepository.search(
//     categoryId: _currentCategoryId,
//     query: _currentQuery,
//     page: page
//     );
//     state = AsyncValue.data(response.copyWith(products: [
//       ...state.asData?.value.products ?? [],
//       ...response.products
//     ]));
//     return true;
//   }
// }
@riverpod
class SelectedSubcategory extends _$SelectedSubcategory {
  @override
  String? build() => null;

  void setSubcategory(String? id) {
    state = id;
  }
}
