import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/categories/presentation/categories_screen/categories_screen.dart';

import '../../domain/product/product.dart';
import 'product_card.dart';

class ProductsGridView extends ConsumerWidget {
  const ProductsGridView({
    super.key,
    required this.products,
    this.isScrollable = false,
    this.fromCategory = false,
    this.shrinkWrap = true,
    this.padding,
  });

  final List<Product> products;
  final bool isScrollable;
  final bool shrinkWrap;
  final bool fromCategory;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // final hasSidebar = screenWidth > 500; // adjust threshold if needed
    // final crossAxisCount = hasSidebar ? 2 : 2;
    // final aspectRatio = hasSidebar ? 0.5 : 0.7; // tweak for better layout

    // debugPrint("hasSidebar$screenWidth");
    // debugPrint("hasSidebar$hasSidebar");
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine how many columns you want based on screen width
        final double screenWidth = constraints.maxWidth;
        final double screenWidthd = constraints.minWidth;
        int crossAxisCount = 2;

        if (screenWidth > 500) {
          crossAxisCount = 4;
        } else if (screenWidth > 430) {
          crossAxisCount = 3;
        }
        debugPrint("hasSidebar  $screenWidth");
        debugPrint("hasSidebarMIN $screenWidthd");
        debugPrint("activeIndex ${context.tabsRouter.activeIndex}");

        // Compute card width automatically
        // final double cardWidth =
        //     (screenWidth - (crossAxisCount - 1) * 12);
        return GridView.builder(
          padding: padding ?? EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            // maxCrossAxisExtent: 200, // controls how many fit per row
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            
            mainAxisExtent: 300, // ✅ total card height
            // childAspectRatio: fromCategory
            //     ? ref.watch(isExpandedCategoriesBarProvider) &&
            //               context.tabsRouter.activeIndex == 1
            //           ? 0.5
            //           : 0.65
            //     : 0.65,
            // childAspectRatio:ref.watch(isExpandedCategoriesBarProvider)&& context.tabsRouter.activeIndex==1? 0.5:0.67,
            //  mainAxisExtent: null,
          ),
          itemCount: products.length,
          physics: isScrollable ? null : const NeverScrollableScrollPhysics(),
          shrinkWrap: shrinkWrap,
          itemBuilder: (context, index) => ProductCard(
            product: products[index],
            width: double.infinity,
            height: 140,
          ),
        );
      },
    );
  }
}
