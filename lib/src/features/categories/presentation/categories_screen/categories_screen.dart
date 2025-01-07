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

import '../../../../../gen/assets.gen.dart';
import '../../../../shared_widgets/app_cached_network_image.dart';
import '../../../home/data/home_repository.dart';

@RoutePage()
class CategoriesScreen extends ConsumerStatefulWidget {
  const CategoriesScreen({super.key, this.category});

  final Category? category;

  @override
  ConsumerState<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends ConsumerState<CategoriesScreen> {
  String _categoryId = '';

  @override
  void initState() {
    _categoryId = widget.category?.categoryId ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeAsync = ref.watch(homeProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category?.category ?? ''),
      ),
      body: homeAsync.when(
          data: (home) {
            final categories = (home.layout
                    .where((e) => e.type == 'categories')
                    .first
                    .data
                    .toList() as List<Object>)
                .whereType<Category>()
                .toList();
            return Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.offWhite,
                        border: Border.all(color: AppColors.lightGray02)),
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        final isAllCategory = index == 0;
                        return SizedBox(
                          height: 100,
                          child: CategoryItem(
                            onTap: isAllCategory
                                ? () {
                                    setState(() {
                                      _categoryId = '';
                                    });
                                  }
                                : () {
                                    setState(() {
                                      _categoryId =
                                          categories[index - 1].categoryId;
                                    });
                                  },
                            label: isAllCategory
                                ? context.tr('all')
                                : categories[index - 1].category,
                            image: isAllCategory
                                ? Assets.icons.categoriesIcon.svg()
                                : AppCachedNetworkImage(
                                    imageUrl: categories[index - 1].imageUrl,
                                  ),
                          ),
                        );
                      },
                      separatorBuilder: (_, __) => const SizedBox(height: 10),
                      itemCount: categories.length + 1,
                    ),
                  ),
                ),
                Expanded(flex: 4, child: SearchScreen(categoryId: _categoryId))
              ],
            );
          },
          loading: () => FadeCircleLoadingIndicator(),
          error: (erro, st) => AppErrorWidget()),
    );
  }
}
