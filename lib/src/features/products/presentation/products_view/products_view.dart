import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/features/products/domain/product/product.dart';
import 'package:meat_empire/src/routing/new_router/go_routes.dart';

import '../../../home/domain/home/layout.dart';
import 'products_grid_view.dart';
import 'products_scroller_view.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key, required this.layout});

  final Layout layout;

  @override
  Widget build(BuildContext context) {
    final products = layout.data.whereType<Product>().toList();
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (layout.viewType == 'scroller')
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _Title(title: layout.title),
            )
          else
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  _Title(title: layout.title),
                  const Spacer(),
                  TextButton(
                    onPressed: () => context.go(GoRoutes.categories),
                    child: Text(context.tr('more')),
                  ),
                ],
              ),
            ),
          10.verticalSpace,
          if (layout.viewType == 'scroller')
            ProductsScrollerView(products: products)
          else
            ProductsGridView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                products: products),
        ],
      ),
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
