import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/cart/application/cart_service.dart';
import 'package:meat_empire/src/features/cart/presentation/cart_controller/cart_controller.dart';
import 'package:meat_empire/src/shared_widgets/app_cached_network_image.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../shared_widgets/app_error_widget.dart';
import '../../../../shared_widgets/fade_circle_loading_indicator.dart';
import '../../../../theme/app_colors.dart';
import '../../domain/cart_product.dart';
import '../../domain/product.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: CartBody()),
    );
  }
}

class CartBody extends ConsumerWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartAsync = ref.watch(cartControllerProvider);

    return cartAsync.when(
      data: (data) {
        final products = data.cart?.products ?? [];
        final cartItems = data.cart?.cartProducts ?? [];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (products.isNotEmpty)
              _SuggestedProductsSection(products: products),
            const SizedBox(height: 24),
            if (cartItems.isNotEmpty) _CartItemsSection(cartItems: cartItems),
            SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(color: AppColors.lightPeach),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(context.tr('discountCoupon'),
                      style: Theme.of(context).textTheme.displaySmall),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: context.tr('couponCode'),
                          hintStyle: TextStyle(
                              color: AppColors.gray02,
                              fontWeight: FontWeight.w400),
                        ),
                      )),
                      SizedBox(width: 10),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 14),
                            textStyle: Theme.of(context).textTheme.displaySmall,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: () {},
                          child: Text(context.tr('activate')))
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    offset: Offset(0, -2),
                    blurRadius: 15,
                    color: Color(0x41000014))
              ]),
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 40),
              child: Column(
                spacing: 20,
                children: [
                  _textRow(context.tr('productsCost'),
                      data.cart!.formatSubtotal!, context),
                  _textRow(context.tr('shippingCost'),
                      data.cart!.formatShippingCost!, context),
                  _textRow(
                      '${context.tr('discountCoupon')} (${data.cart!.discount!})',
                      data.cart!.formatSubtotalDiscount!,
                      context,
                      AppColors.primary),
                  Divider(),
                  _textRow(context.tr('total'), data.cart!.formatTotal!,
                      context, AppColors.grayishCharcoal, 18, FontWeight.w700),
                ],
              ),
            ),
            const SizedBox(height: 60),
          ],
        );
      },
      loading: () => const Center(child: FadeCircleLoadingIndicator()),
      error: (_, __) => const Center(child: AppErrorWidget()),
    );
  }

  Widget _textRow(String title, String value, BuildContext context,
      [Color fontColor = AppColors.dimGray,
      double? fontSize,
      FontWeight? fontWeight]) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontWeight: fontWeight ?? FontWeight.w400,
                color: fontColor,
                fontSize: fontSize)),
        Text(value,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: fontColor, fontSize: fontSize, fontWeight: fontWeight))
      ],
    );
  }
}

class _SuggestedProductsSection extends StatelessWidget {
  final List<Product> products;

  const _SuggestedProductsSection({required this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.tr('suggestedProducts'),
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontSize: 18),
          ),
          const SizedBox(height: 16),
          Container(
            height: 120,
            color: AppColors.lightGray01,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  _SuggestedProductItem(product: products[index]),
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemCount: products.length,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 22),
            ),
          ),
        ],
      ),
    );
  }
}

class _SuggestedProductItem extends StatelessWidget {
  final Product product;

  const _SuggestedProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.antiAlias,
      child: AppCachedNetworkImage(imageUrl: product.imageUrl!),
    );
  }
}

class _CartItemsSection extends StatelessWidget {
  final List<CartProduct> cartItems;

  const _CartItemsSection({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightGray01,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              context.tr('cartContent'),
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 18),
            ),
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: cartItems.length,
            itemBuilder: (context, index) =>
                _CartItem(cartItem: cartItems[index]),
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            padding: const EdgeInsets.all(18),
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}

class _CartItem extends ConsumerWidget {
  final CartProduct cartItem;

  const _CartItem({required this.cartItem});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      overrides: [
        updateCartControllerProvider.overrideWith(() => UpdateCartController())
      ],
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            AppCachedNetworkImage(
              fit: BoxFit.fitWidth,
              imageUrl: cartItem.imageUrl!,
              height: 120,
              width: 100,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _CartItemHeader(cartItem: cartItem),
                    const SizedBox(height: 22),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          cartItem.formatBasePrice ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontSize: 16),
                        ),
                        Row(
                          children: [
                            _buildQuantityButton(
                              context: context,
                              ref: ref,
                              icon: Icons.add_circle_rounded,
                              color: AppColors.primary,
                              isIncrement: true,
                            ),
                            Text(
                              cartItem.amount.toString(),
                              style: const TextStyle(
                                color: AppColors.gray02,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            _buildQuantityButton(
                              context: context,
                              ref: ref,
                              icon: Icons.remove_circle_rounded,
                              color: AppColors.gray02,
                              isIncrement: false,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuantityButton({
    required BuildContext context,
    required WidgetRef ref,
    required IconData icon,
    required Color color,
    required bool isIncrement,
  }) {
    return IconButton(
      style: IconButton.styleFrom(foregroundColor: color),
      onPressed: () {
        final currentAmount = cartItem.amount;
        final targetAmount =
            isIncrement ? currentAmount + 1 : currentAmount - 1;
        final limit = isIncrement
            ? int.parse(cartItem.maxQty!)
            : int.parse(cartItem.minQty!);

        if ((isIncrement && currentAmount < limit) ||
            (!isIncrement && currentAmount > limit)) {
          ref.read(updateCartControllerProvider.notifier).updateItemInCart(
                context,
                int.parse(cartItem.productId!),
                targetAmount,
                int.parse(cartItem.itemId!),
              );
        }
      },
      icon: Icon(icon),
    );
  }
}

class _CartItemHeader extends ConsumerWidget {
  final CartProduct cartItem;

  const _CartItemHeader({required this.cartItem});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updateCartAsync = ref.watch(updateCartControllerProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          cartItem.product ?? '',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 16),
        ),
        if (updateCartAsync is AsyncLoading)
          const FadeCircleLoadingIndicator()
        else
          IconButton(
            onPressed: () => ref
                .read(updateCartControllerProvider.notifier)
                .updateItemInCart(
                  context,
                  int.parse(cartItem.productId!),
                  0,
                  cartItem.itemId != null ? int.parse(cartItem.itemId!) : null,
                ),
            icon: Assets.icons.deleteIcon.svg(),
          ),
      ],
    );
  }
}
