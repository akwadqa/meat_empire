import 'package:flutter/material.dart' hide Banner;
import 'package:meat_empire/src/features/home/domain/home/category/category.dart';
import 'package:meat_empire/src/features/home/domain/home/layout.dart';

import '../../domain/home/banner.dart';
import 'banner/banner_view.dart';
import '../../../categories/presentation/categories_view/categories_view.dart';
import '../../../products/presentation/products_view/products_view.dart';

class LayoutBlock extends StatelessWidget {
  const LayoutBlock({super.key, required this.layout});

  final Layout layout;

  @override
  Widget build(BuildContext context) {
    return switch (layout.type) {
      'banner' => _buildBannerView(),
      'categories' => CategoriesView(
        layout: layout
          // categories:
          //     (layout.data as List<Object>).whereType<Category>().toList()
              ),
      'products' => ProductsView(layout: layout),
      _ => ProductsView(layout: layout)
    };
  }

  Widget _buildBannerView() {
    if (layout.data is List<Object>) {
      final banners =
          (layout.data as List<Object>).whereType<Banner>().toList();
      return BannerView(banners: banners);
    }
    return const Placeholder();
  }
}
