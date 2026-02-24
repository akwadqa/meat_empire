import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/routing/new_router/go_routes.dart';
import 'package:meat_empire/src/shared_widgets/custom_button_widget.dart';
import 'package:meat_empire/src/features/cart/application/cart_service.dart';
import 'package:meat_empire/src/features/cart/domain/cart_response.dart';
import 'package:meat_empire/src/features/cart/presentation/cart_controller/cart_controller.dart';

import 'package:meat_empire/src/shared_widgets/app_cached_network_image.dart';
import 'package:queen_validators/queen_validators.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../shared_widgets/app_error_widget.dart';
import '../../../../shared_widgets/fade_circle_loading_indicator.dart';
import '../../../../theme/app_colors.dart';
import '../../domain/cart.dart';
import '../../domain/cart_product.dart';
import '../../domain/product.dart';
import 'empty_cart_screen.dart';
import 'un_auth_cart_screen.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CartBody(),
    );
  }
}

class CartBody extends ConsumerWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartAsync = ref.watch(cartControllerProvider);

    return cartAsync.when(
      data: (data) => data.cart != null
          ? _buildCartContent(context, data)
          : EmptyCartScreen(),
      loading: () => const Center(child: FadeCircleLoadingIndicator()),
      error: (error, __) => error.toString() == 'user_id param is mandatory'
          ? UnAuthCartScreen()
          : const Center(child: AppErrorWidget()),
    );
  }

  Widget _buildCartContent(BuildContext context, CartResponse data) {
    final products = data.cart?.products ?? [];
    final cartItems = data.cart?.cartProducts ?? [];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (products.isNotEmpty)
            _SuggestedProductsSection(products: products),
          24.verticalSpace,
          if (cartItems.isNotEmpty) _CartItemsSection(cartItems: cartItems),
          24.verticalSpace,
          _DiscountCouponSection(data.cart!),
          24.verticalSpace,
          _buildCartSummary(context, data),
          45.verticalSpace,
          _buildSubmetButton(context, data),
          120.verticalSpace,
        ],
      ),
    );
  }

  Widget _buildCartSummary(BuildContext context, CartResponse data) {
    final cart = data.cart!;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 15,
            color: Color(0x41000014),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 40),
      child: Column(
        //TODO   spacing: 20,

        children: [
          _buildTextRow(
              context.tr('productsCost'), cart.formatSubtotal!, context),
          _buildTextRow(
              context.tr('shippingCost'), cart.formatShippingCost!, context),
          _buildTextRow(
            '${context.tr('discountCoupon')} (${cart.discount!})',
            cart.formatSubtotalDiscount!,
            context,
            fontColor: AppColors.primary,
          ),
          const Divider(color: AppColors.gray02),
          _buildTextRow(
            context.tr('total'),
            cart.formatTotal!,
            context,
            fontColor: AppColors.grayishCharcoal,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }

  Widget _buildTextRow(
    String title,
    String value,
    BuildContext context, {
    Color fontColor = AppColors.dimGray,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontWeight: fontWeight ?? FontWeight.w400,
                color: fontColor,
                fontSize: fontSize,
              ),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: fontColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
        ),
      ],
    );
  }

  Widget _buildSubmetButton(BuildContext context, CartResponse cart) {
    return CustomButtonWidget(
      text: "submit_order",
      backgroundColor: AppColors.primary,
      onTap: () {
        debugPrint("Tap ");
        // context.navigateTo(CheckOutRoute(cart: cart));
       context.push(GoRoutes.checkout,extra: cart);
        
      },
      isFiled: true,
      height: 50,
      width: 270,
      radius: 50,
    ).centered();
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
          16.verticalSpace,
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

class _SuggestedProductItem extends ConsumerWidget {
  final Product product;

  const _SuggestedProductItem({required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => ref.read(updateCartControllerProvider.notifier).addToCart(
          context: context,
          amount: product.amount,
          productId: product.productId!),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.antiAlias,
        child: AppCachedNetworkImage(imageUrl: product.imageUrl!),
      ),
    );
  }
}

class _DiscountCouponSection extends ConsumerStatefulWidget {
  final Cart cart;

  const _DiscountCouponSection(this.cart);

  @override
  ConsumerState<_DiscountCouponSection> createState() =>
      _DiscountCouponSectionState();
}

class _DiscountCouponSectionState
    extends ConsumerState<_DiscountCouponSection> {
  final _formKey = GlobalKey<FormState>();

  String? _couponCode;

  @override
  Widget build(BuildContext context) {
    final couponDetails = widget.cart.couponsDetails!;
    return Container(
      decoration: BoxDecoration(color: AppColors.lightPeach),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.tr('discountCoupon'),
              style: Theme.of(context).textTheme.displaySmall,
            ),
            8.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    initialValue: couponDetails.isNotEmpty
                        ? couponDetails.first['coupon']
                        : null,
                    readOnly: couponDetails.isNotEmpty,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: context.tr('couponCode'),
                      hintStyle: const TextStyle(
                        color: AppColors.gray02,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    validator: qValidator([IsRequired(context.tr('required'))]),
                    onSaved: (value) => _couponCode = value,
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 14),
                    textStyle: Theme.of(context).textTheme.displaySmall,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (couponDetails.isNotEmpty) {
                      ref
                          .read(updateCartControllerProvider.notifier)
                          .updateCart(couponCode: '');
                    } else if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      ref
                          .read(updateCartControllerProvider.notifier)
                          .updateCart(couponCode: _couponCode);
                    }
                  },
                  child: Text(context.tr(
                      widget.cart.coupons!.isNotEmpty ? 'cancel' : 'activate')),
                ),
              ],
            ),
          ],
        ),
      ),
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
            separatorBuilder: (_, __) => 16.verticalSpace,
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
                    22.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          cartItem.displaySubtotal ?? '',
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
                              icon: Icons.remove_circle_rounded,
                              color: AppColors.gray02,
                              isIncrement: false,
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
                              icon: Icons.add_circle_rounded,
                              color: AppColors.primary,
                              isIncrement: true,
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
          ref.read(updateCartControllerProvider.notifier).updateCart(
                productId: int.parse(cartItem.productId!),
                amount: targetAmount,
                itemId: cartItem.itemId != null
                    ? int.parse(cartItem.itemId!)
                    : null,
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
        // Product name
        Expanded(
          child: Text(
            cartItem.product ?? '',
            style:
                Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16),
          ),
        ),
        // Loading indicator or delete icon
        updateCartAsync.maybeWhen(
          loading: () => const FadeCircleLoadingIndicator(),
          orElse: () => IconButton(
            onPressed: () => _handleDelete(context, ref),
            icon: Assets.icons.deleteIcon.svg(),
          ),
        ),
      ],
    );
  }

  void _handleDelete(BuildContext context, WidgetRef ref) {
    final cartCount = ref.read(cartCountProvider);
    final updateCartController =
        ref.read(updateCartControllerProvider.notifier);
    if (cartCount == 1) {
      updateCartController.clearCart();
    } else {
      updateCartController.updateCart(
        productId: int.parse(cartItem.productId!),
        amount: 0,
        itemId: cartItem.itemId != null ? int.parse(cartItem.itemId!) : null,
      );
    }
  }
}
