import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/categories/presentation/category_item/category_item.dart';
import 'package:meat_empire/src/features/home/domain/home/category/category.dart';
import 'package:meat_empire/src/features/search/presentation/search_screen/search_screen.dart';
import 'package:meat_empire/src/shared_widgets/app_error_widget.dart';
import 'package:meat_empire/src/shared_widgets/fade_circle_loading_indicator.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../shared_widgets/app_cached_network_image.dart';
import '../../../home/data/home_repository.dart';

part 'categories_screen.g.dart';

/// Riverpod providers for managing category state
@riverpod
class SelectedCategory extends _$SelectedCategory {
  @override
  String build() => '';

  void setCategory(String categoryId) => state = categoryId;
}

@riverpod
class IsExpandedCategoriesBar extends _$IsExpandedCategoriesBar {
  @override
  bool build() => ref.watch(selectedCategoryProvider).isEmpty;

  void toggleExpansion() => state = !state;
}

//* Main screen for displaying categories and search results
@RoutePage()
class CategoriesScreen extends ConsumerWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeAsync = ref.watch(homeProvider);

    return Scaffold(
      body: homeAsync.when(
        data: (home) => _buildCategoriesLayout(context, ref, home),
        loading: () => const FadeCircleLoadingIndicator(),
        error: (_, __) => const AppErrorWidget(),
      ),
      floatingActionButtonLocation: const CustomFABLocation(),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: _buildFloatingActionButton(ref),
    );
  }

  //* Builds the main layout with categories and search results
  Widget _buildCategoriesLayout(
      BuildContext context, WidgetRef ref, dynamic home) {
    final categories = _extractCategories(home);

    return Row(
      children: [
        _buildCategoriesList(ref, categories),
        Expanded(
          child: Consumer(
            builder: (context, ref, _) {
              final selectedCategoryId = ref.watch(selectedCategoryProvider);
              return SearchScreen(categoryId: selectedCategoryId);
            },
          ),
        ),
      ],
    );
  }

  //* Extracts categories from the home layout
  List<Category> _extractCategories(dynamic home) {
    return (home.layout.firstWhere((e) => e.type == 'categories').data
            as List<Object>)
        .whereType<Category>()
        .toList();
  }

  //* Builds the categories list view
  Widget _buildCategoriesList(WidgetRef ref, List<Category> categories) {
    final isExpanded = ref.watch(isExpandedCategoriesBarProvider);

    return AnimatedContainer(
      width: isExpanded ? 80 : 0,
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        border: Border.all(color: AppColors.lightGray02),
      ),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        itemCount: categories.length + 1,
        itemBuilder: (context, index) {
          return _buildCategoryItem(ref, index, categories);
        },
        separatorBuilder: (_, __) => const SizedBox(height: 10),
      ),
    );
  }

  //* Builds an individual category item
  Widget _buildCategoryItem(
      WidgetRef ref, int index, List<Category> categories) {
    final selectedCategoryId = ref.watch(selectedCategoryProvider);
    final isAllCategory = index == 0;
    final category = isAllCategory ? null : categories[index - 1];

    return CategoryItem(
      withBorder: isAllCategory
          ? selectedCategoryId.isEmpty
          : selectedCategoryId == category!.categoryId,
      height: 45,
      width: 45,
      onTap: () => ref
          .read(selectedCategoryProvider.notifier)
          .setCategory(isAllCategory ? '' : category!.categoryId),
      label: isAllCategory ? tr('all') : category!.category,
      image: isAllCategory
          ? Assets.icons.categoriesIcon.svg()
          : AppCachedNetworkImage(imageUrl: category!.imageUrl),
    );
  }

  //* Builds the floating action button with toggle functionality
  Widget _buildFloatingActionButton(WidgetRef ref) {
    final isExpanded = ref.watch(isExpandedCategoriesBarProvider);

    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: isExpanded ? AppColors.rose : AppColors.primary,
      onPressed: () =>
          ref.read(isExpandedCategoriesBarProvider.notifier).toggleExpansion(),
      mini: true,
      child: isExpanded
          ? const Icon(Icons.arrow_back_ios_new_rounded,
              color: AppColors.black900)
          : Assets.icons.newCategoriesIcon.svg(),
    );
  }
}

class CustomFABLocation extends FloatingActionButtonLocation {
  const CustomFABLocation();

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    const double fabYOffset = 100;
    const double fabMargin = 20; // Margin from the edge

    final double fabY = scaffoldGeometry.scaffoldSize.height -
        scaffoldGeometry.floatingActionButtonSize.height -
        fabYOffset;

    final bool isRTL = scaffoldGeometry.textDirection.name.toLowerCase() ==
        TextDirection.RTL.value.toLowerCase();

    // Calculate the X offset based on text direction
    final double fabX = isRTL
        ? scaffoldGeometry.scaffoldSize.width -
            scaffoldGeometry.floatingActionButtonSize.width -
            fabMargin
        : fabMargin;

    return Offset(fabX, fabY);
  }
}
