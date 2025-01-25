import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/address_book/address_book_widget.dart';
import 'package:meat_empire/src/features/cart/domain/cart_response.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_cart_order_summary.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_shipping_picker.dart';
import 'package:meat_empire/src/routing/app_router.gr.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

import '../../../account/presentation/widgets/custom_button_widget.dart';

@RoutePage()
class CheckOutScreen extends ConsumerWidget {
  CheckOutScreen({
    super.key,
    required this.cart,
  });
  final CartResponse cart;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deliverySlots = cart.cart?.deliverySlots ?? [];

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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.verticalSpace,
              CheckoutCartOrderSummary(cart: cart.cart!),
              20.verticalSpace,
              AddressBookWidget(
                checkout: true,
              ),
              20.verticalSpace,
              CheckoutShippingDateTimePickerFormField(
                deliverySlots: deliverySlots,
                validator: (value) {
                  if (value == null || value['date'] == null) {
                    return "select_delivery_msg".tr();
                  }
                  if (value['time'] == null) {
                    return "select_time_msg".tr();
                  }
                  return null;
                },
                onSaved: (value) {
                  debugPrint("Selected Date: ${value?['date']?.heading}");
                  debugPrint("Selected Time: ${value?['time']?.slot}");
                },
              ),
              30.verticalSpace,
              _buildSubmetButton(context, cart),
              20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSubmetButton(BuildContext context, CartResponse cart) {
    return CustomButtonWidget(
      text: "payment",
      backgroundColor: AppColors.primary,
      onTap: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState?.save();
          // Navigate or perform submission
          debugPrint("Tap ");
          context.navigateTo(PaymentRoute());
          debugPrint("Form is valid and saved.");
        }
      },
      isFiled: true,
      height: 50,
      width: 270,
      radius: 50,
    ).centered();
  }
}
