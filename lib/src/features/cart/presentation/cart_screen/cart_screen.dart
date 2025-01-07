import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/cart/data/cart_repository.dart';
import 'package:meat_empire/src/shared_widgets/app_cached_network_image.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../shared_widgets/app_error_widget.dart';
import '../../../../shared_widgets/fade_circle_loading_indicator.dart';
import '../../../../theme/app_colors.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: _CartBody(),
      ),
    );
  }
}

class _CartBody extends ConsumerWidget {
  const _CartBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartAsync = ref.watch(cartProvider);
    return cartAsync.when(
        data: (data) {
          final products = data.cart?.products ?? [];
          final cartItems = data.cart?.cartProducts ?? [];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (products.isNotEmpty) ...[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(context.tr('suggestedProducts'),
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(fontSize: 18)),
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  color: AppColors.lightGray01,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: AppCachedNetworkImage(
                              imageUrl: products[index].imageUrl!),
                        );
                      },
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 22),
                      separatorBuilder: (_, __) => const SizedBox(width: 16),
                      itemCount: products.length),
                ),
              ],
              SizedBox(height: 24),
              if (cartItems.isNotEmpty)
                Container(
                  color: AppColors.lightGray01,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(context.tr('cartContent'),
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(fontSize: 18)),
                      ),
                      ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              clipBehavior: Clip.antiAlias,
                              child: Row(
                                children: [
                                  AppCachedNetworkImage(
                                      fit: BoxFit.fitWidth,
                                      imageUrl: cartItems[index].imageUrl!,
                                      height: 120,
                                      width: 100),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(14),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                      cartItems[index]
                                                              .product ??
                                                          '',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              fontSize: 16)),
                                                ],
                                              ),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Assets.icons.deleteIcon
                                                      .svg())
                                            ],
                                          ),
                                          SizedBox(height: 22),
                                          Row(
                                            children: [
                                              Text(
                                                  cartItems[index]
                                                          .formatBasePrice ??
                                                      '',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(fontSize: 16))
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          padding: EdgeInsets.all(18),
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 16),
                          shrinkWrap: true,
                          itemCount: cartItems.length)
                    ],
                  ),
                ),
              SizedBox(height: 60)
            ],
          );
        },
        loading: () => Center(child: const FadeCircleLoadingIndicator()),
        error: (_, __) => Center(child: const AppErrorWidget()));
  }
}
