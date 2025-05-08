import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/gen/fonts.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/cart/application/cart_service.dart';
import 'package:meat_empire/src/shared_functions.dart';

import '../../../../routing/app_router.gr.dart';
import '../../../../shared_widgets/app_cached_network_image.dart';
import '../../../../shared_widgets/fade_circle_loading_indicator.dart';
import '../../../../theme/app_colors.dart';
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
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color.fromRGBO(229, 229, 229, 1)),
        ),
        child: Column(
          //TODO spacing: 6,
          children: [
            Expanded(
                child: ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(8)),
                    child: _ProductImage(product: product))),
            _PriceRow(product: product),
            ProviderScope(
              overrides: [
                updateCartControllerProvider
                    .overrideWith(() => UpdateCartController())
              ],
              child: _AddToCartButton(
                productId: int.parse(product.productId),
                amount: int.parse(product.minQty),
                outOfStock: product.amount <= 0,
              ),
            ),
            6.verticalSpace,
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
      fit: StackFit.expand,
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

// Wrap Widget Replaced Row for long Price Issues
class _PriceRow extends StatelessWidget {
  const _PriceRow({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      child: Row(
        // alignment: WrapAlignment.center,
        // crossAxisAlignment: WrapCrossAlignment.center,
        // direction: Axis.horizontal,
        // spacing: 8,

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,

        children: [
          Text(
            product.formatBasePrice,
            softWrap: true,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColors.black900),
          ),
          if (double.parse(product.listPrice) > 0) ...[
            // Spacer(),
            5.horizontalSpace,
            Text(
              product.formatListPrice,
              softWrap: true,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 12,
                    color: AppColors.grey600,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: AppColors.grey600,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationThickness: 20.0,
                  ),
            ),
          ]
        ],
      ).symmetricPadding(horizontal: 8, vertical: 5),
    );
  }
}

class _AddToCartButton extends ConsumerWidget {
  final int productId;
  final int amount;
  final bool outOfStock;

  const _AddToCartButton({
    required this.productId,
    required this.amount,
    required this.outOfStock,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen to cart updates with proper error handling
    ref.listen<AsyncValue>(
      updateCartControllerProvider,
      (previous, current) {
        if (current is AsyncData) {
          // Wait for the current build to complete before showing dialog
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.maybePop().then((_) {
              showCustomDialog(
                context: context,
                title: "cart_added_msg".tr(),
                icon: Icon(
                  Icons.check_circle,
                  color: AppColors.green,
                  size: 45,
                ),
              );
            });
          });
        } else if (current is AsyncError) {
          // Wait for the current build to complete before showing error
          WidgetsBinding.instance.addPostFrameCallback((_) {
            showOutOfStockDialog(context, current.error.toString());
          });
        }
      },
    );

    final asyncAddToCart = ref.watch(updateCartControllerProvider);
    final isInCart = ref.watch(isInCartProvider(productId.toString()));

    // Show loading indicator when operation is in progress
    if (asyncAddToCart is AsyncLoading) {
      return const FadeCircleLoadingIndicator();
    }

    return _buildButton(context, ref, isInCart);
  }

  Widget _buildButton(BuildContext context, WidgetRef ref, bool isInCart) {
    // Determine button state
    final ButtonState buttonState = outOfStock
        ? ButtonState.outOfStock
        : isInCart
            ? ButtonState.inCart
            : ButtonState.available;

    // Button configuration based on state
    final ButtonConfig config = _getButtonConfig(context, buttonState);

    return ElevatedButton.icon(
      onPressed:
          //  buttonState == ButtonState.outOfStock
          //     ? null :
          () => _handleButtonPress(context, ref, isInCart),
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 12,
          fontFamily: FontFamily.tajawal,
          fontWeight: FontWeight.w700,
        ),
        backgroundColor: config.backgroundColor,
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 9),
      ),
      label: Text(
        context.tr(config.labelKey),
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontSize: 12,
              color: config.textColor,
              fontWeight: FontWeight.w400,
            ),
      ),
      icon: config.icon,
    );
  }

  void _handleButtonPress(BuildContext context, WidgetRef ref, bool isInCart) {
    final controller = ref.read(updateCartControllerProvider.notifier);

    if (isInCart) {
      controller.updateCart(amount: 0, productId: productId);
    } else {
      controller.addToCart(
        context: context,
        amount: amount,
        productId: productId,
      );
    }
  }

  ButtonConfig _getButtonConfig(BuildContext context, ButtonState state) {
    switch (state) {
      case ButtonState.outOfStock:
        return ButtonConfig(
          backgroundColor: Colors.grey.shade200,
          textColor: AppColors.black800,
          labelKey: 'outOfStock',
          icon: Icon(
            Icons.block,
            color: AppColors.black800,
            size: 15,
          ),
        );
      case ButtonState.inCart:
        return ButtonConfig(
          backgroundColor: AppColors.newRed,
          textColor: Colors.white,
          labelKey: 'addedToCart',
          icon: Assets.icons.addedToCartIcon.svg(width: 15, height: 15),
        );
      case ButtonState.available:
        return ButtonConfig(
          backgroundColor: AppColors.green,
          textColor: Colors.white,
          labelKey: 'addToCart',
          icon: const Icon(
            Icons.add_shopping_cart_rounded,
            color: Colors.white,
            size: 15,
          ),
        );
    }
  }
}

/// Helper enum to track button state
enum ButtonState {
  outOfStock,
  inCart,
  available,
}

/// Helper class to manage button configuration
class ButtonConfig {
  final Color backgroundColor;
  final Color textColor;
  final String labelKey;
  final Widget icon;

  ButtonConfig({
    required this.backgroundColor,
    required this.textColor,
    required this.labelKey,
    required this.icon,
  });
}
