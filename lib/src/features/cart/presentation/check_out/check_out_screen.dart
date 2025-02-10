import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';
import 'package:meat_empire/src/features/account/presentation/controller/account_controller.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/address_book/address_book_widget.dart';
import 'package:meat_empire/src/features/cart/domain/cart_response.dart';
import 'package:meat_empire/src/features/cart/domain/delivery_slot.dart';
import 'package:meat_empire/src/features/cart/domain/slot.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_cart_order_summary.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_shipping_picker.dart';
import 'package:meat_empire/src/routing/app_router.gr.dart';
import 'package:meat_empire/src/shared_functions.dart';
import 'package:meat_empire/src/shared_widgets/app_error_widget.dart';
import 'package:meat_empire/src/shared_widgets/fade_circle_loading_indicator.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

import '../../../../shared_widgets/custom_button_widget.dart';

@RoutePage()
class CheckOutScreen extends ConsumerWidget {
  CheckOutScreen({
    super.key,
    required this.cart,
  });
  final CartResponse cart;
  final _formKey = GlobalKey<FormState>();
  DeliverySlot? selectedDay;
  Slot? selectedSlot;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deliverySlots = cart.cart?.deliverySlots ?? [];
    final accountSyncData = ref.watch(accountControllerProvider);
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
      body: accountSyncData.when(
        data: (data) {
          return SingleChildScrollView(
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
                    userProfile: data.userProfile,
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
                      selectedSlot = value?['time'];
                      debugPrint("Selected Time: $selectedSlot");

                      // ref
                      //     .read(checkoutControllerProvider(value?['date'])
                      //         .notifier)
                      //     .selectTimeSlot(selectedSlot!);
                    },
                    // onChanged: (value) {
                    //   debugPrint("Selected Date: ${value['date']}");
                    //   selectedDay = value['date'];
                    //   debugPrint("Selected Time: ${value['time']?.slot}");
                    //   selectedSlot = value['time'];
                    // },
                  ),
                  30.verticalSpace,
                  _buildSubmetButton(
                    cart: cart,
                    user: accountSyncData.value!.userProfile!,
                    context: context,
                    selectedDay: selectedDay,
                    selectedSlot: selectedSlot,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState?.save();
                        // Navigate or perform submission

                        debugPrint("Tap ");
                        if (accountSyncData
                            .value!.userProfile!.shippingStrete!.isEmpty) {
                          showCustomDialog(
                              context: context,
                              title: "not_shipping_address_msg".tr(),
                              icon: Icon(Icons.warning,
                                  color: Colors.amber, size: 45));
                        } else {
                          debugPrint("Form ${selectedSlot?.slot}");

                          context.navigateTo(PaymentRoute(slot: selectedSlot!));
                          debugPrint("Form is valid and saved.");
                        }
                      }
                    },
                  ),
                  20.verticalSpace,
                ],
              ),
            ),
          );
        },
        error: (_, __) => const AppErrorWidget(),
        loading: () => const FadeCircleLoadingIndicator().centered(),
      ),
    );
  }

  Widget _buildSubmetButton({
    required BuildContext context,
    required CartResponse cart,
    required UserProfile user,
    required Function onTap,
    DeliverySlot? selectedDay,
    Slot? selectedSlot,
  }) {
    return CustomButtonWidget(
      text: "payment",
      backgroundColor: AppColors.primary,
      onTap: () {
        onTap();
      },
      isFiled: true,
      height: 50,
      width: 270,
      radius: 50,
    ).centered();
  }
}
