import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/fonts.gen.dart';
import 'package:meat_empire/src/features/products/presentation/products_view/products_grid_view.dart';
import 'package:meat_empire/src/features/search/domain/search_response/sorting.dart';
import 'package:meat_empire/src/shared_widgets/app_error_widget.dart';
import 'package:meat_empire/src/shared_widgets/app_loading_indicator.dart';
import 'package:meat_empire/src/shared_widgets/app_pagination_widget.dart';

import '../../../../theme/app_colors.dart';
import '../search_controller/search_controller.dart';

@RoutePage()
class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key, this.categoryId});

  final String? categoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: _SearchContent(categoryId),
    );
  }
}

class _SearchContent extends ConsumerWidget {
  const _SearchContent(this.categoryId);

  final String? categoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 6,
                child: _SortingDropdown(categoryId),
              ),
              const Spacer(),
              Expanded(
                flex: 8,
                child: _SearchField(categoryId),
              ),
            ],
          ),
          SizedBox(height: 26),
          Expanded(
            child: _ProductsGridView(categoryId),
          ),
        ],
      ),
    );
  }
}

class _ProductsGridView extends ConsumerWidget {
  const _ProductsGridView(this.categoryId);

  final String? categoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchControllerAsync =
        ref.watch(searchControllerProvider(categoryId));
    return searchControllerAsync.when(
      data: (data) => AppPaginationWidget(
        onLoading:
            ref.read(searchControllerProvider(categoryId).notifier).loadMore,
        child: ProductsGridView(
          products: data.products,
          shrinkWrap: true,
          padding: EdgeInsets.only(bottom: 90),
        ),
      ),
      error: (_, __) => const AppErrorWidget(),
      loading: () => const AppLoadingIndicator(),
    );
  }
}

class _SortingDropdown extends ConsumerWidget {
  const _SortingDropdown(this.categoryId);

  final String? categoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchControllerAsync =
        ref.watch(searchControllerProvider(categoryId));
    final sortings = searchControllerAsync.asData?.value.sortings;
    return DropdownButtonFormField<Sorting>(
      isExpanded: true,
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
          fontSize: 16,
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
          ?.map(
            (e) => DropdownMenuItem<Sorting>(
              value: e,
              child: Text(e.name),
            ),
          )
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
        prefixIcon:
            IconButton(onPressed: () => _search(), icon: Icon(Icons.search)),
        prefixIconColor: AppColors.gray,
      ),
      onFieldSubmitted: (value) => _search(),
    );
  }

  Future<void> _search() => ref
      .read(searchControllerProvider(widget.categoryId).notifier)
      .search(_controller.text);
}
