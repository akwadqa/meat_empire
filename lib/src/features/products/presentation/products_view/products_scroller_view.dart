import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';

import '../../domain/product/product.dart';
import 'product_card.dart';

class ProductsScrollerView extends StatelessWidget {
  const ProductsScrollerView({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) =>
            ProductCard(product: products[index], width: 140,height:120),
        separatorBuilder: (_, __) => 20.horizontalSpace,
      ),
    );
  }
}
