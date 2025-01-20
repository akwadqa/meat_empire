import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/features/home/domain/home/category/category.dart';
import 'package:meat_empire/src/routing/app_router.gr.dart';
import 'package:meat_empire/src/shared_widgets/app_cached_network_image.dart';

import '../categories_screen/categories_screen.dart';
import '../category_item/category_item.dart';

/// A horizontal list of categories with a "View All" option.
class CategoriesView extends ConsumerWidget {
  const CategoriesView({super.key, required this.categories});

  final List<Category> categories;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) =>
            _buildCategoryItem(context, ref, index),
        separatorBuilder: (_, __) => const SizedBox(width: 20),
        itemCount: categories.length + 1, // Add one for the "All" option
      ),
    );
  }

  /// Builds an individual category item, including the "All" category.
  Widget _buildCategoryItem(BuildContext context, WidgetRef ref, int index) {
    final isAllCategory = index == 0;

    return CategoryItem(
      onTap: () => _onCategoryTap(context, ref, isAllCategory, index),
      label: isAllCategory ? context.tr('all') : categories[index - 1].category,
      image: isAllCategory
          ? Assets.icons.categoriesIcon.svg()
          : AppCachedNetworkImage(imageUrl: categories[index - 1].imageUrl),
    );
  }

  /// Handles tapping on a category item.
  void _onCategoryTap(
      BuildContext context, WidgetRef ref, bool isAllCategory, int index) {
    context.router.replaceAll([const CategoriesRoute()]);
    final selectedCategoryNotifier =
        ref.read(selectedCategoryProvider.notifier);
    if (isAllCategory) {
      selectedCategoryNotifier.setCategory('');
    } else {
      selectedCategoryNotifier.setCategory(categories[index - 1].categoryId);
    }
  }
}
