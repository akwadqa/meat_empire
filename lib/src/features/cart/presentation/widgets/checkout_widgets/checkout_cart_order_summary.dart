import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/cart/domain/cart.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:meat_empire/src/features/cart/domain/cart_response.dart';

class CheckoutCartOrderSummary extends StatelessWidget {
  const CheckoutCartOrderSummary({Key? key, required this.cart, this.orderId})
      : super(key: key);

  final Cart cart;
  final int? orderId;

  @override
  Widget build(BuildContext context) {
    // final cartDetails = cart.cart!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr("order_summary"),
          style:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 16),
        ).onlyPadding(start: 12),
        20.verticalSpace,
        Container(
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
            spacing: 18,
            children: [
              if (orderId != null) ...[
                _buildTextRow(
                  context.tr('cart_order_number'),
                  cart.orderId.toString(),
                  context,
                ),
                const Divider(color: AppColors.mediumGray),
              ],
              _buildTextRow(
                context.tr('productsCost'),
                cart.formatSubtotal!,
                context,
              ),
              _buildTextRow(
                context.tr('shippingCost'),
                cart.formatShippingCost!,
                context,
              ),
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
        ),
      ],
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
}
