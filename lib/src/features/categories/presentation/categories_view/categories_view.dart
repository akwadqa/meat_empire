import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/features/home/domain/home/category/category.dart';
import 'package:meat_empire/src/routing/app_router.gr.dart';
import 'package:meat_empire/src/shared_widgets/app_cached_network_image.dart';

import '../category_item/category_item.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.categories});

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final isAllCategory = index == 0;
          return CategoryItem(
            onTap: isAllCategory
                ? (){
                  context.pushRoute(
                        CategoriesRoute());
                }
                : () {
                    context.pushRoute(
                        CategoriesRoute(category: categories[index - 1]));
                  },
            label: isAllCategory
                ? context.tr('all')
                : categories[index - 1].category,
            image: isAllCategory
                ? Assets.icons.categoriesIcon.svg()
                : AppCachedNetworkImage(
                    imageUrl: categories[index - 1].imageUrl,
                  ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 20),
        itemCount: categories.length + 1,
      ),
    );
  }
}
