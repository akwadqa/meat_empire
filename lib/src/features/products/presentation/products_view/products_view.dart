import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/features/products/domain/product/product.dart';

import '../../../home/domain/home/layout.dart';
import 'products_grid_view.dart';
import 'products_scroller_view.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key, required this.layout});

  final Layout layout;

  @override
  Widget build(BuildContext context) {
    final products = layout.data.whereType<Product>().toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (layout.viewType == 'scroller')
          _Title(title: layout.title)
        else
          Row(
            children: [
              _Title(title: layout.title),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text('more'.tr()),
              ),
            ],
          ),
        const SizedBox(height: 10),
        if (layout.viewType == 'scroller')
          ProductsScrollerView(products: products)
        else
          ProductsGridView(products: products),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.displayMedium!.copyWith(
            fontSize: 22,
          ),
    );
  }
}
