import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/products/data/products_repository.dart';
import 'package:meat_empire/src/features/products/domain/product_details_response/product_details.dart';
import 'package:meat_empire/src/features/products/domain/product_details_response/products_block.dart';
import 'package:meat_empire/src/features/products/presentation/product_details_screen/product_options_list/product_options_controller.dart';
import 'package:meat_empire/src/features/products/presentation/products_view/products_scroller_view.dart';
import 'package:meat_empire/src/shared_functions.dart';
import '../../../../shared_widgets/app_cached_network_image.dart';
import '../../../../shared_widgets/app_close_button.dart';
import '../../../../shared_widgets/app_error_widget.dart';
import '../../../../shared_widgets/fade_circle_loading_indicator.dart';
import '../../../../theme/app_colors.dart';
import '../../../../utils/magnetic_scroll_physics.dart';
import '../../../cart/application/cart_service.dart';
import '../../../home/presentation/layout_screen/banner/carousel_dots_indicator.dart';
import '../../domain/product_details_response/currency.dart';
import '../../domain/product_details_response/product_options/product_options.dart';
import '../../domain/product_details_response/variation_feature/variation_feature.dart';
import 'product_options_list/product_options_list.dart';
import 'quantity_selector/quantity_controller.dart';
import 'quantity_selector/quantity_selector.dart';

@RoutePage()
class ProductDetailsScreen extends ConsumerWidget {
  const ProductDetailsScreen({super.key, required this.productId});

  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncProductDetails = ref.watch(productDetailsProvider(productId));

    return Scaffold(
      body: asyncProductDetails.when(
        data: (data) => ProductDetailsView(
          product: data.product,
          productsBlock: data.productsBlock,
          currency: data.currency,
        ),
        error: (_, __) => Center(child: const AppErrorWidget()),
        loading: () => Center(child: const FadeCircleLoadingIndicator()),
      ),
    );
  }
}

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({
    super.key,
    required this.product,
    required this.productsBlock,
    required this.currency,
  });

  final ProductDetails product;
  final List<ProductsBlock> productsBlock;
  final Currency currency;

  @override
  Widget build(BuildContext context) {
    const double bannerHeight = 375.0;

    return Stack(
      children: [
        Positioned.fill(
          child: SingleChildScrollView(
            child: Column(
              //TODO spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductBanner(
                    imageUrls: product.imageUrls, bannerHeight: bannerHeight),
                ProductDetailsInfo(
                  product: product,
                  productsBlock: productsBlock,
                  currency: currency,
                ).symmetricPadding(horizontal: 16.0),
              ],
            ),
          ),
        ),
        Consumer(builder: (context, ref, child) {
          final quantity = ref.watch(quantityControllerProvider(
              initialQuantity: int.parse(product.minQty),
              minQuantity: int.parse(product.minQty),
              maxQuantity: int.parse(product.maxQty)));

          final totalPrice = calculateTotalPrice(ref, product);

          return _AddToCartButton(
            productPrice: (totalPrice * quantity).toStringAsFixed(2),
            productId: product.productId,
            amount: quantity,
            productOptions: product.productOptions,
          );
        }),
      ],
    );
  }
}

double calculateTotalPrice(WidgetRef ref, ProductDetails product) {
  final selectedOptions = ref.watch(productOptionsControllerProvider);

  final basePrice = double.parse(product.basePrice);
  final modifiersTotal = selectedOptions.fold<double>(0, (total, selected) {
    final option = product.productOptions!.options
        .firstWhere((opt) => opt.optionId == selected.optionId);
    final variant = option.variants.firstWhere(
        (variant) => int.parse(variant.variantId) == selected.variantId);
    return total + double.parse(variant.modifier);
  });

  return basePrice + modifiersTotal;
}

class ProductBanner extends ConsumerWidget {
  const ProductBanner({
    super.key,
    required this.imageUrls,
    required this.bannerHeight,
  });

  final List<String> imageUrls;
  final double bannerHeight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        _ProductBannerContent(
            imageUrls: imageUrls, bannerHeight: bannerHeight, ref: ref),
        if (imageUrls.length > 1)
          PositionedDirectional(
            bottom: 5,
            start: 0,
            end: 0,
            child: CarouselDotsIndicator(dotsCount: imageUrls.length),
          ),
        PositionedDirectional(
          start: 10,
          top: 20,
          child: AppCloseButton(
            width: 40,
            height: 40,
            icon: Icon(Icons.arrow_back_ios).onlyPadding(start: 4),
          ),
        ),
      ],
    );
  }
}

class _ProductBannerContent extends StatelessWidget {
  const _ProductBannerContent({
    required this.imageUrls,
    required this.bannerHeight,
    required this.ref,
  });

  final List<String> imageUrls;
  final double bannerHeight;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: bannerHeight,
      child: imageUrls.length > 1
          ? CarouselSlider.builder(
              itemCount: imageUrls.length,
              itemBuilder: (_, index, __) => AppCachedNetworkImage(
                imageUrl: imageUrls[index],
                fit: BoxFit.fitHeight,
              ),
              options: CarouselOptions(
                viewportFraction: 1,
                scrollPhysics: MagneticScrollPhysics(itemSize: bannerHeight),
                onPageChanged: (index, _) => ref
                    .read(carouselPageIndexProvider.notifier)
                    .setPageIndex(index),
              ),
            )
          : imageUrls.isNotEmpty
              ? AppCachedNetworkImage(
                  imageUrl: imageUrls.first, fit: BoxFit.fitHeight)
              : const SizedBox.shrink(),
    );
  }
}

class ProductDetailsInfo extends StatelessWidget {
  const ProductDetailsInfo({
    super.key,
    required this.product,
    required this.productsBlock,
    required this.currency,
  });

  final ProductDetails product;
  final List<ProductsBlock> productsBlock;
  final Currency currency;

  @override
  Widget build(BuildContext context) {
    return Column(
      //TODO  spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ProductTitle(title: product.product),
        _PriceAndQuantityRow(product: product, currency: currency),
        if (product.productOptions != null)
          ProductOptionsList(productOptions: product.productOptions!),
        if (product.variationFeatures.isNotEmpty)
          Text(context.tr('specifications'),
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 18)),
        ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: product.variationFeatures.length,
          itemBuilder: (context, index) {
            final variationFeature = product.variationFeatures[index];
            return _RowItem(
              variationFeature: variationFeature,
              color: index.isOdd ? Colors.white : AppColors.lightGray01,
            );
          },
        ),
        _ProductsBlockList(productsBlock: productsBlock),
        80.verticalSpace
      ],
    );
  }
}

class _RowItem extends StatelessWidget {
  const _RowItem({required this.variationFeature, this.color});
  final VariationFeature variationFeature;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: const EdgeInsets.all(10),
      child: DefaultTextStyle.merge(
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: Text(variationFeature.internalName)),
            Expanded(child: Text(variationFeature.variant)),
          ],
        ),
      ),
    );
  }
}

class _ProductTitle extends StatelessWidget {
  const _ProductTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 22),
    );
  }
}

class _PriceAndQuantityRow extends ConsumerWidget {
  const _PriceAndQuantityRow({
    required this.product,
    required this.currency,
  });

  final ProductDetails product;
  final Currency currency;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalPrice = calculateTotalPrice(ref, product);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Display the formatted price
        Text(
          '${currency.currencyCode} ${totalPrice.toStringAsFixed(2)}',
          style:
              Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 18),
        ),
        // Quantity selector widget
        QuantitySelector(
          initialQuantity: int.parse(product.minQty),
          minQuantity: int.parse(product.minQty),
          maxQuantity: int.parse(product.maxQty),
        ),
      ],
    );
  }
}

class _ProductsBlockList extends StatelessWidget {
  const _ProductsBlockList({required this.productsBlock});

  final List<ProductsBlock> productsBlock;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        final block = productsBlock[index];
        return Column(
          //TODO   spacing: 16,

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              block.title,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 18),
            ),
            ProductsScrollerView(products: block.products),
          ],
        );
      },
      separatorBuilder: (_, __) => 20.verticalSpace,
      itemCount: productsBlock.length,
    );
  }
}

class _AddToCartButton extends StatelessWidget {
  const _AddToCartButton({
    required this.productPrice,
    required this.productId,
    required this.amount,
    required this.productOptions, // Add productOptions as a parameter
  });

  final String productPrice;
  final int productId;
  final int amount;
  final ProductOptions? productOptions; // Pass productOptions to the widget

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 75,
        padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 12.5),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -4), blurRadius: 15, color: Colors.black26),
          ],
        ),
        child: Consumer(builder: (context, ref, child) {
          ref.listen(updateCartControllerProvider, (prev, next) {
            if (next is AsyncData) {
              context.maybePop().then((_) {
                showCustomDialog(
                    context: context,
                    title: context.tr("cart_added_msg"),
                    icon: Icon(
                      Icons.check_circle,
                      color: AppColors.green,
                      size: 45,
                    ));
              });
            } else if (next is AsyncError) {
              showErrorDialog(context, next.error.toString());
            }
          });

          final asyncAddToCart = ref.watch(updateCartControllerProvider);

          if (asyncAddToCart is AsyncLoading) {
            return FadeCircleLoadingIndicator();
          }

          return ElevatedButton.icon(
            onPressed: () {
              // Get the selected options
              final selectedOptions =
                  ref.read(productOptionsControllerProvider);

              // Check if all options have a selected variant
              final isSelectionComplete = productOptions?.options.every(
                      (option) => selectedOptions.any((selected) =>
                          selected.optionId == option.optionId)) ??
                  true;

              if (!isSelectionComplete) {
                // Show an error message if selection is incomplete
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(context.tr('variantError')),
                    backgroundColor: Theme.of(context).colorScheme.error,
                  ),
                );
              } else {
                // Proceed with adding to cart
                ref
                    .read(updateCartControllerProvider.notifier)
                    .addToCart(
                      context: context,
                      amount: amount,
                      productId: productId,
                      selectedOprions: selectedOptions,
                    )
                    .then((_) => context.maybePop());
              }
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.green)
                .copyWith(fixedSize: WidgetStatePropertyAll(Size(300, 50))),
            icon: const Icon(
              Icons.add_shopping_cart_rounded,
              color: Colors.white, size: 18, //25
            ),
            label: Text(
              '${context.tr('addToCart')} ($productPrice)',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          );
        }),
      ),
    );
  }
}
