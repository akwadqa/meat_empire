import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/auth/application/auth_service.dart';
import 'package:meat_empire/src/features/cart/data/payment_repository.dart';
import 'package:meat_empire/src/features/cart/domain/cart.dart';
import 'package:meat_empire/src/features/cart/domain/payment_entities/confirm_payment_body_data.dart';
import 'package:meat_empire/src/features/cart/domain/slot.dart';
import 'package:meat_empire/src/features/cart/presentation/payment_controller/payment_controller.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_cart_order_summary.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/payment_widget/notes_filed_widget.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/payment_widget/payment_method_card.dart';
import 'package:meat_empire/src/shared_widgets/app_error_widget.dart';
import 'package:meat_empire/src/shared_widgets/fade_circle_loading_indicator.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

import '../../../../shared_widgets/custom_button_widget.dart';

@RoutePage()
class PaymentScreen extends ConsumerWidget {
  PaymentScreen({
    super.key,
    required this.slot,
  });
  final Slot slot;
  int selectedPaumnetMethod = -1;
  final _formKey = GlobalKey<FormState>();
  String notes = '';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = ref.watch(userDataProvider)!.$2;

    final asyncPayment = ref.watch(paymentProvider(userId));
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
            return GestureDetector(
              onTap: () {
                // Dismiss keyboard when tapping outside
                FocusScope.of(context).unfocus();
              },
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      25.verticalSpace,
                      CheckoutCartOrderSummary(cart: data.cart!),
                      20.verticalSpace,
                      PaymentMethodFormField(
                        // context: context,
                        payments: data.paymentMethods,
                        onchange: (newValue) {
                          debugPrint("Selected Payment : $newValue");
                          selectedPaumnetMethod =
                              int.parse(newValue!.paymentId);
                        },
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
                      15.verticalSpace,
                      NotesFieldWidget(onChange: (value) {
                        notes = value;
                      }),
                      25.verticalSpace,
                      _buildSubmetButton(context, ref, data.cart!),
                      20.verticalSpace,
                    ],
                  ),
                ),
              ),
            );
          },
          error: (_, __) => const AppErrorWidget(),
          loading: () => const FadeCircleLoadingIndicator().centered(),
        ));
  }

  Widget _buildSubmetButton(BuildContext context, WidgetRef ref, Cart cart) {
    return Consumer(builder: (context, ref, child) {
      final asyncData = ref.watch(paymentControllerProvider);

      if (asyncData is AsyncLoading) {
        return Center(child: FadeCircleLoadingIndicator());
      }
      return CustomButtonWidget(
        text: "confirm_order",
        backgroundColor: AppColors.primary,
        onTap: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState?.save();
            debugPrint("Tap ");
            debugPrint("Your Notes is: $notes");
            final controller = ref.read(paymentControllerProvider.notifier);
            final bodyData = ConfirmPaymentBodyData(
              userId: ref.watch(userDataProvider)!.$2,
              selectedPaymentMethod: selectedPaumnetMethod,
              ecTimeSlot: slot.slot!,

              notes: notes,
              // Add other required data
              // Include additional required data
            );

            controller.confirmPayment(bodyData, context, cart);
          }
        },
        isFiled: true,
        height: 50,
        width: 270,
        radius: 50,
      ).centered();
    });
  }
}
