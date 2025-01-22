import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/cart/data/payment_repository.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_cart_order_summary.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/payment_widget/payment_method_card.dart';
import 'package:meat_empire/src/shared_widgets/app_error_widget.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

import '../../../account/presentation/widgets/custom_button_widget.dart';

@RoutePage()
class PaymentScreen extends ConsumerWidget {
  const PaymentScreen({
    super.key,
    // required this.cart,
  });
  // final CartResponse cart;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncPayment = ref.watch(paymentProvider(1));
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
            context.tr("payment"),
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 18),
          ),
          centerTitle: true,
        ),
        body: asyncPayment.when(
          data: (data) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  CheckoutCartOrderSummary(cart: data.cart!),
                  20.verticalSpace,
                  PaymentMethodFormField(
                    context: context,
                    payments: data.paymentMethods,
                    onSaved: (value) {
                      debugPrint("Selected Payment Index: $value");
                    },
                    validator: (value) {
                      if (value == null || value == -1) {
                        return "payment_msg".tr();
                      }
                      return null;
                    },
                  ),
                  30.verticalSpace,
                  _buildSubmetButton(context),
                  20.verticalSpace,
                ],
              ),
            );
          },
          error: (_, __) => const AppErrorWidget(),
          loading: () => const LinearProgressIndicator(
            color: AppColors.darkRed,
          ),
        ));
  }

  Widget _buildSubmetButton(
    BuildContext context,
  ) {
    return CustomButtonWidget(
      text: "confirm_order",
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
