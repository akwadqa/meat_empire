import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/features/categories/presentation/categories_screen/set_category_id_controller.dart';
import 'package:meat_empire/src/features/home/domain/home/category/category.dart';
import 'package:meat_empire/src/features/search/presentation/search_controller/search_category_index_controller.dart';
 
import 'package:meat_empire/src/routing/new_router/go_routes.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.maxWidth;

          // 🧮 Decide number of items per row based on available width
          int itemsPerRow = (maxWidth / 80).floor(); // each item ~100px wide
          itemsPerRow = itemsPerRow.clamp(3, 6); // limit between 3–6 per row

          // 🔢 Calculate exact width so they fit perfectly
          final itemWidth = (maxWidth - (itemsPerRow - 1) * 12) / itemsPerRow;

          return Wrap(
            spacing: 12,
            runSpacing: 16,
            children: List.generate(
              categories.length,
              (index) => SizedBox(
                width: itemWidth,
                child: _buildCategoryItem(context, ref, index),
              ),
            ),
          );
        },
      ),
    );
  }

  /// Builds an individual category item, including the "All" category.
  Widget _buildCategoryItem(BuildContext context, WidgetRef ref, int index) {
    // final isAllCategory = index == 0;

    return CategoryItem(
      onTap: () => _onCategoryTap(context, ref, index),
      label: categories[index].category,
      image: AppCachedNetworkImage(imageUrl: categories[index].imageUrl,fit: BoxFit.contain,),
    );
  }

  //* Handles tapping on a category item.
  void _onCategoryTap(BuildContext context, WidgetRef ref, int index) {
    final selectedCategoryNotifier = ref.read(
      selectedCategoryProvider.notifier,
    );
    selectedCategoryNotifier.setCategory(categories[index].categoryId);
// Future.delayed(Duration(seconds: 2));
// WidgetsBinding.instance.addPostFrameCallback((_) {
//   context.tabsRouter.setActiveIndex(1);
// });
    ref.read(searchCategoryIndexControllerProvider.notifier).switchState();

 Future.microtask(() {
    context.pushReplacement(GoRoutes.categories,extra: {
      "categoryId":categories[index].categoryId,
      "fromHome":true,
    });
    // context.router.replaceAll([
    //   CategoriesRoute(categoryId: categories[index].categoryId,fromHome: true),
    // ]);
  });
}}
