import 'package:flutter/material.dart';

import '../../domain/product/product.dart';
import 'product_card.dart';

class ProductsScrollerView extends StatelessWidget {
  const ProductsScrollerView({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) =>
            ProductCard(product: products[index], width: 140),
        separatorBuilder: (_, __) => const SizedBox(width: 20),
      ),
    );
  }
}
