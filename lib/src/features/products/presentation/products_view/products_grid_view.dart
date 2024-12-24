import 'package:flutter/material.dart';

import '../../domain/product/product.dart';
import 'product_card.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView(
      {super.key,
      required this.products,
      this.isScrollable = false,
      this.shrinkWrap = true,
      this.padding});

  final List<Product> products;
  final bool isScrollable;
  final bool shrinkWrap;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: padding ?? EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.69,
      ),
      itemCount: products.length,
      physics: isScrollable ? null : const NeverScrollableScrollPhysics(),
      shrinkWrap: shrinkWrap,
      itemBuilder: (context, index) =>
          ProductCard(product: products[index], width: 140),
    );
  }
}
