import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/categories/presentation/categories_screen/set_category_id_controller.dart';
import 'package:meat_empire/src/features/search/domain/search_response/subcategory_model.dart';
import 'package:meat_empire/src/features/search/presentation/search_controller/search_category_index_controller.dart';
import 'package:meat_empire/src/features/search/presentation/search_controller/search_controller.dart';
import 'package:meat_empire/src/shared_widgets/app_cached_network_image.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
class SubcategoriesBar extends ConsumerWidget {
  final List<SubcategoryModel> subcategories;
  final String? categoryId;

  const SubcategoriesBar({
    super.key,
    required this.subcategories,
    required this.categoryId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        ref.read(searchControllerProvider(categoryId).notifier);

    final selectedSub = ref
        .read(searchControllerProvider(categoryId).notifier)
        .selectedSubcategoryId;

    return SizedBox(
      height: 30,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: subcategories.length,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (_, index) {
          final item = subcategories[index];
          final isSelected = selectedSub == item.categoryId;

          return GestureDetector(
            onTap: () {
              controller.changeSubCategory(item.categoryId);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              // width: 85,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.primary
                    : AppColors.offWhite,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected
                      ? AppColors.primary
                      : AppColors.lightGray02,
                ),
              ),
              child: Column(
                children: [
                  // Expanded(
                  //   child: AppCachedNetworkImage(
                  //     imageUrl: item.image,
                  //   ),
                  // ),
                  // const SizedBox(height: 6),
                  Text(
                    item.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style:  Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 12,
            // fontWeight: FontWeight.bold,
                color: isSelected
                          ? Colors.white
                          : Colors.black
            // color: Colors.grey,
          ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}