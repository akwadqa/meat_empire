import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/features/home/domain/home/category/category.dart';
import 'package:meat_empire/src/shared_widgets/app_cached_network_image.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

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
          return _CategoryItem(
            onTap: () {}, // Update with your actual onTap logic
            label: isAllCategory ? 'all'.tr() : categories[index - 1].category,
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

class _CategoryItem extends StatelessWidget {
  const _CategoryItem({
    required this.onTap,
    required this.label,
    required this.image,
  });

  final VoidCallback onTap;
  final String label;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.rose,
              boxShadow: [
                BoxShadow(
                  color: AppColors.darkRed.withValues(alpha: 0.26),
                  offset: const Offset(0, 2),
                  blurRadius: 6,
                ),
              ],
            ),
            padding: const EdgeInsets.all(16),
            height: 74,
            width: 74,
            child: image,
          ),
          Spacer(),
          Text(
            label,
            style: const TextStyle(
                fontWeight: FontWeight.w700, color: AppColors.black900),
          ),
        ],
      ),
    );
  }
}
