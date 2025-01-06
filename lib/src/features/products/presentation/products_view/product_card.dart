import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/fonts.gen.dart';
import 'package:meat_empire/src/shared_functions.dart';

import '../../../../routing/app_router.gr.dart';
import '../../../../shared_widgets/app_cached_network_image.dart';
import '../../../../shared_widgets/app_loading_indicator.dart';
import '../../../../theme/app_colors.dart';
import '../../../cart/presentation/add_to_cart_controller/add_to_cart_controller.dart';
import '../../domain/product/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product, required this.width});

  final Product product;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushRoute(
          ProductDetailsRoute(productId: int.parse(product.productId))),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color.fromRGBO(229, 229, 229, 1)),
        ),
        child: Column(
          spacing: 6,
          children: [
            Expanded(
                child: ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10)),
                    child: _ProductImage(product: product))),
            _PriceRow(product: product),
            ProviderScope(
              overrides: [
                addToCartControllerProvider
                    .overrideWith(() => AddToCartController())
              ],
              child: _AddToCartButton(
                  productId: int.parse(product.productId),
                  amount: product.amount),
            ),
            const SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}

class _ProductImage extends StatelessWidget {
  const _ProductImage({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    // Calculate the discount as a percentage
    final double listPrice = double.parse(product.listPrice);
    final double basePrice = double.parse(product.basePrice);
    final double discountPercentage =
        ((listPrice - basePrice) / listPrice) * 100;

    return Stack(
      children: [
        AppCachedNetworkImage(
          imageUrl: product.imageUrl,
          fit: BoxFit.fitHeight,
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.5, 1.0],
                colors: [
                  Colors.transparent,
                  Colors.black.withAlpha(153), // Equivalent to 60% opacity
                ],
              ),
            ),
          ),
        ),
        if (listPrice > 0)
          PositionedDirectional(
            start: 0,
            top: 20,
            child: _DiscountBanner(
              text:
                  '${context.tr('discount')} ${discountPercentage.toStringAsFixed(0)}%', // Display percentage rounded to integer
            ),
          ),
        PositionedDirectional(
          start: 10,
          bottom: 5,
          end: 10,
          child: Text(
            product.product,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 13,
                  color: Colors.white,
                ),
          ),
        ),
      ],
    );
  }
}

class _DiscountBanner extends StatelessWidget {
  const _DiscountBanner({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _CustomClipper(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
        color: AppColors.primary,
        child: Center(
          child: Text(text,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}

class _CustomClipper extends CustomClipper<Path> {
  final BuildContext context;
  _CustomClipper(this.context);
  @override
  Path getClip(Size size) {
    if (context.locale.languageCode == 'ar') {
      return Path()
        ..moveTo(0, 0)
        ..lineTo(size.width, 0)
        ..lineTo(size.width, size.height)
        ..lineTo(size.width - 3.6, size.height)
        ..lineTo(0, size.height)
        ..lineTo(3.6, size.height / 2)
        ..close();
    }
    return Path()
      ..moveTo(size.width, 0)
      ..lineTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo(3.6, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width - 3.6, size.height / 2)
      ..close();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class _PriceRow extends StatelessWidget {
  const _PriceRow({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          product.formatBasePrice,
          style: Theme.of(context).textTheme.bodyMedium!,
        ),
        Text(
          product.formatListPrice,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 11,
                decoration: TextDecoration.lineThrough,
              ),
        ),
      ],
    );
  }
}

class _AddToCartButton extends ConsumerWidget {
  final int productId;
  final int amount;

  const _AddToCartButton({required this.productId, required this.amount});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncAddToCart = ref.watch(addToCartControllerProvider);
    if (asyncAddToCart is AsyncLoading) {
      return AppLoadingIndicator();
    }
    return ElevatedButton.icon(
      onPressed: () => addToCart(context, ref, amount, productId),
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
            fontSize: 12,
            fontFamily: FontFamily.tajawal,
            fontWeight: FontWeight.w700),
        backgroundColor: AppColors.green,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      ),
      label: Text(context.tr('addToCart')),
      icon: const Icon(Icons.add_shopping_cart_rounded, color: Colors.white),
    );
  }
}
