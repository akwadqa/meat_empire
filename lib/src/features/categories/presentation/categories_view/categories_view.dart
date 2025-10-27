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

//* A horizontal list of categories with a "View All" option.
class CategoriesView extends ConsumerWidget {
  const CategoriesView({super.key, required this.categories});

  final List<Category> categories;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        spacing: 20, // horizontal spacing between items
        runSpacing: 8, // vertical spacing between lines (optional)
        children: List.generate(
          categories.length,
          (index) => _buildCategoryItem(context, ref, index),
        ),
      ),
    );
  }

  /// Builds an individual category item, including the "All" category.
  Widget _buildCategoryItem(BuildContext context, WidgetRef ref, int index) {
    // final isAllCategory = index == 0;

    return CategoryItem(
      onTap: () => _onCategoryTap(context, ref, index),
      label: categories[index].category,
      image: AppCachedNetworkImage(imageUrl: categories[index].imageUrl),
    );
  }

  //* Handles tapping on a category item.
  void _onCategoryTap(BuildContext context, WidgetRef ref, int index) {
    final selectedCategoryNotifier = ref.read(
      selectedCategoryProvider.notifier,
    );
    selectedCategoryNotifier.setCategory(categories[index].categoryId);

    context.router.replaceAll([CategoriesRoute()]);
  }
}
