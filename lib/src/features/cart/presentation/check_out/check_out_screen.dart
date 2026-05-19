import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/domain/entites/profile_response.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';
import 'package:meat_empire/src/features/account/presentation/controller/account_controller.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/address_book/address_book_widget.dart';
import 'package:meat_empire/src/features/cart/domain/cart_response.dart';
import 'package:meat_empire/src/features/cart/domain/delivery_slot.dart';
import 'package:meat_empire/src/features/cart/domain/slot.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_cart_order_summary.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_shipping_picker.dart';

import 'package:meat_empire/src/routing/new_router/go_routes.dart';
import 'package:meat_empire/src/shared_functions.dart';
import 'package:meat_empire/src/shared_widgets/app_error_widget.dart';
import 'package:meat_empire/src/shared_widgets/custom_back_arrow_widget.dart';
import 'package:meat_empire/src/shared_widgets/fade_circle_loading_indicator.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import '../../../../shared_widgets/custom_button_widget.dart';

@RoutePage()
class CheckOutScreen extends ConsumerWidget {
  final CartResponse cart;
  final _formKey = GlobalKey<FormState>();
  DeliverySlot? selectedDay;
  Slot? selectedSlot;

  CheckOutScreen({super.key, required this.cart});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deliverySlots = cart.cart?.deliverySlots ?? [];
    final accountSyncData = ref.watch(accountControllerProvider);

    return Scaffold(
      appBar: _buildAppBar(context),
      body: accountSyncData.when(
        data: (data) => _buildForm(context, data!, deliverySlots),
        error: (_, __) => const AppErrorWidget(),
        loading: () => const FadeCircleLoadingIndicator().centered(),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: CustomBackArrowWidget(),
      title: Text(
        context.tr("products_shipping"),
        style: Theme.of(
          context,
        ).textTheme.displayMedium!.copyWith(fontSize: 18),
      ),
      centerTitle: true,
    );
  }

  Widget _buildForm(
    BuildContext context,
    ProfileResponse data,
    List<DeliverySlot> deliverySlots,
  ) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.verticalSpace,
            CheckoutCartOrderSummary(cart: cart.cart!),
            20.verticalSpace,
            AddressBookWidget(checkout: true, userProfile: data.userProfile),
            20.verticalSpace,
            _buildShippingDateTimePicker(deliverySlots),
            30.verticalSpace,
            _buildSubmitButton(context, data),
            20.verticalSpace,
          ],
        ),
      ),
    );
  }

  Widget _buildShippingDateTimePicker(List<DeliverySlot> deliverySlots) {
    return CheckoutShippingDateTimePickerFormField(
      deliverySlots: deliverySlots,
      validator: (value) {
        if (value == null || value['date'] == null)
          return "select_delivery_msg".tr();
        if (value['time'] == null) return "select_time_msg".tr();
        return null;
      },
      onSaved: (value) {
        debugPrint("Selected Date: ${value?['date']?.heading}");
        debugPrint("Selected Time: ${value?['time']?.slot}");
        selectedSlot = value?['time'];
        selectedDay = (value?['date'] as DeliverySlot).copyWith(
          date: (value?["date"] as DeliverySlot).date!.replaceAll("/", "-"),
        );
      },
    );
  }

  Widget _buildSubmitButton(
    BuildContext context,
    ProfileResponse accountSyncData,
  ) {
    return CustomButtonWidget(
      text: "payment",
      backgroundColor: AppColors.primary,
      onTap: () => _handleSubmit(context, accountSyncData),
      isFiled: true,
      height: 50,
      width: 270,
      radius: 50,
    ).centered();
  }

  void _handleSubmit(BuildContext context, ProfileResponse accountSyncData) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      if (accountSyncData.userProfile!.shippingStrete!.isEmpty) {
        showCustomDialog(
          context: context,
          title: "not_shipping_address_msg".tr(),
          icon: Icon(Icons.warning, color: Colors.amber, size: 45),
        );
      } else {
        debugPrint("Form is valid and saved.");
        // context.navigateTo(PaymentRoute(slot: selectedSlot!));
        context.push(
          GoRoutes.payment,
          extra: {'slot': selectedSlot!, 'deliverySlot': selectedDay!},
        );
      }
    }
  }
}
