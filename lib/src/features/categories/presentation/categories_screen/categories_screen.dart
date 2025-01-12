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

@riverpod
class SelectedCategory extends _$SelectedCategory {
  @override
  String build() => '';

  void setCategory(String categoryId) => state = categoryId;
}

@RoutePage()
class CategoriesScreen extends ConsumerStatefulWidget {
  const CategoriesScreen({super.key, this.category});

  final Category? category;

  @override
  ConsumerState<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends ConsumerState<CategoriesScreen> {
  @override
  void initState() {
    Future(() {
      ref
          .read(selectedCategoryProvider.notifier)
          .setCategory(widget.category?.categoryId ?? '');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeAsync = ref.watch(homeProvider);

    return Scaffold(
      body: homeAsync.when(
        data: (home) => _buildCategoriesLayout(context, ref, home),
        loading: () => const FadeCircleLoadingIndicator(),
        error: (_, __) => const AppErrorWidget(),
      ),
    );
  }

  Widget _buildCategoriesLayout(
      BuildContext context, WidgetRef ref, dynamic home) {
    final categories = (home.layout
            .firstWhere((e) => e.type == 'categories')
            .data as List<Object>)
        .whereType<Category>()
        .toList();

    return Row(
      children: [
        _buildCategoriesList(context, ref, categories),
        Expanded(
          flex: 4,
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

  Widget _buildCategoriesList(
      BuildContext context, WidgetRef ref, List<Category> categories) {
    final selectedCategoryId = ref.watch(selectedCategoryProvider);

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.offWhite,
          border: Border.all(color: AppColors.lightGray02),
        ),
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
          itemCount: categories.length + 1,
          itemBuilder: (context, index) {
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
          },
          separatorBuilder: (_, __) => const SizedBox(height: 10),
        ),
      ),
    );
  }
}
