import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/gen/fonts.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/categories/presentation/category_item/subcategory_bar_widget.dart';
import 'package:meat_empire/src/features/products/presentation/products_view/products_grid_view.dart';
import 'package:meat_empire/src/features/search/domain/search_response/sorting.dart';
import 'package:meat_empire/src/features/search/presentation/search_controller/search_category_index_controller.dart';
import 'package:meat_empire/src/routing/new_router/go_routes.dart';
import 'package:meat_empire/src/shared_widgets/adaptive_back_button.dart';
import 'package:meat_empire/src/shared_widgets/app_empty_data_widget.dart';
import 'package:meat_empire/src/shared_widgets/app_error_widget.dart';
import 'package:meat_empire/src/shared_widgets/fade_circle_loading_indicator.dart';
import 'package:meat_empire/src/shared_widgets/app_pagination_widget.dart';

import '../../../../theme/app_colors.dart';
import '../search_controller/search_controller.dart';

@RoutePage()
class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key, this.categoryId, this.fromHome});

  final String? categoryId;
  final bool? fromHome;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(body: _SearchContent(categoryId, fromHome));
  }
}

class _SearchContent extends ConsumerWidget {
  const _SearchContent(this.categoryId, this.fromHomee);

  final String? categoryId;
  final bool? fromHomee;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fromHome = ref.watch(searchCategoryIndexControllerProvider);
    final searchAsync = ref.watch(searchControllerProvider(categoryId));
    final data = searchAsync.asData?.value;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: fromHome ? 2 : 6,
              child: fromHome
                  ? AdaptiveBackButton(
                      onBack: () {
                        ref
                            .read(
                              searchCategoryIndexControllerProvider.notifier,
                            )
                            .checkState();
                        // context.tabsRouter.setActiveIndex(0);
                        context.go(GoRoutes.home);
                      },
                    )
                  : _SortingDropdown(categoryId),
            ),
            const Spacer(),
            Expanded(flex: 8, child: _SearchField(categoryId)),
          ],
        ),
        8.verticalSpace,
        if (fromHome)
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 3,
            height: 50,
            child: _SortingDropdown(categoryId),
          ),

        if (data != null &&
            data.subcategories != null &&
            data.subcategories!.isNotEmpty)
          Column(
            children: [
              const SizedBox(height: 16),

              SubcategoriesBar(
                subcategories: data.subcategories!,
                categoryId: categoryId,
              ),
            ],
          ),
        SizedBox(height: 26),
        Expanded(child: _ProductsGridView(categoryId)),
      ],
    ).symmetricPadding(horizontal: 16);
  }
}

class _ProductsGridView extends ConsumerWidget {
  const _ProductsGridView(this.categoryId);

  final String? categoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchControllerAsync = ref.watch(
      searchControllerProvider(categoryId),
    );
    return searchControllerAsync.when(
      data: (data) => data.products.isEmpty
          ? AppEmptyDataWidget(text: "empty_data")
          : AppPaginationWidget(
              // enableLoadingOnScrollStart: true,
              onLoading: ref
                  .read(searchControllerProvider(categoryId).notifier)
                  .loadMore,
              child: ProductsGridView(
                products: data.products,
                shrinkWrap: true,
                fromCategory: true,
                padding: EdgeInsets.only(bottom: 90),
              ),
            ),
      error: (_, __) => const AppErrorWidget(),
      loading: () => const FadeCircleLoadingIndicator(),
    );
  }
}

class _SortingDropdown extends ConsumerWidget {
  const _SortingDropdown(this.categoryId);

  final String? categoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchControllerAsync = ref.watch(
      searchControllerProvider(categoryId),
    );
    final sortings = searchControllerAsync.asData?.value.sortings;
    return DropdownButtonFormField<Sorting>(
      isExpanded: true,
      padding: EdgeInsets.symmetric(horizontal: 4),
      isDense: true,
      iconEnabledColor: Colors.white,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamily.tajawal,
        color: AppColors.black900,
      ),
      selectedItemBuilder: sortings == null
          ? null
          : (context) => sortings
                .map(
                  (e) => Text(
                    e.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: FontFamily.tajawal,
                      color: Colors.white,
                    ),
                  ),
                )
                .toList(),
      elevation: 1,
      icon: const Icon(Icons.keyboard_arrow_down_rounded),
      hint: Text(
        context.tr('sortBy'),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontFamily: FontFamily.tajawal,
          fontWeight: FontWeight.w700,
        ),
      ),
      decoration: const InputDecoration(
        labelStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: AppColors.primary,
      ),
      items: sortings
          ?.map((e) => DropdownMenuItem<Sorting>(value: e, child: Text(e.name)))
          .toList(),
      onChanged: (Sorting? value) {
        if (value != null) {
          ref
              .read(searchControllerProvider(categoryId).notifier)
              .sort(sortBy: value.sortBy, sortOrder: value.sortOrder);
        }
      },
    );
  }
}

class _SearchField extends ConsumerStatefulWidget {
  const _SearchField(this.categoryId);

  final String? categoryId;

  @override
  ConsumerState<_SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends ConsumerState<_SearchField> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: context.tr('searchProducts'),
        hintStyle: const TextStyle(color: AppColors.gray02),
        prefixIcon: IconButton(
          onPressed: () => _search(),
          icon: Icon(Icons.search),
        ),
        prefixIconColor: AppColors.gray,
      ),
      onFieldSubmitted: (value) => _search(),
    );
  }

  Future<void> _search() => ref
      .read(searchControllerProvider(widget.categoryId).notifier)
      .search(_controller.text);
}
