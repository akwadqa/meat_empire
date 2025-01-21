import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/address_book/address_book_widget.dart';
import 'package:meat_empire/src/features/cart/domain/cart_response.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_cart_order_summary.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_shipping_date_picker_widget.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_shipping_time_picker_widget.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

import '../../../account/presentation/widgets/custom_button_widget.dart';

@RoutePage()
class CheckOutScreen extends ConsumerWidget {
  const CheckOutScreen({
    super.key,
    required this.cart,
  });
  final CartResponse cart;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.black)
              .onlyPadding(start: 20),
        ),
        title: Text(
          context.tr("products_shipping"),
          style:
              Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            40.verticalSpace,
            CheckoutCartOrderSummary(cart: cart),
            20.verticalSpace,
            AddressBookWidget(
              checkout: true,
            ),
            20.verticalSpace,
            CheckoutShippingDatePickerWidget(),
            20.verticalSpace,
            CheckoutShippingTimePickerWidget(),
            30.verticalSpace,
            _buildSubmetButton(context, cart),
            20.verticalSpace,
          ],
        ),
      ),
    );
  }

  Widget _buildSubmetButton(BuildContext context, CartResponse cart) {
    return CustomButtonWidget(
      text: "payment",
      backgroundColor: AppColors.primary,
      onTap: () {
        debugPrint("Tap ");
      },
      isFiled: true,
      height: 50,
      width: 270,
      radius: 50,
    ).centered();
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
