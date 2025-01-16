import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/presentation/controller/account_controller.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/adress_book/add_new_address_book_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/adress_book/address_book_card_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/custom_button_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/payment_information/add_new_payment_information_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/payment_information/payment_information_card_widget.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class PaymentInformationWidget extends ConsumerWidget {
  PaymentInformationWidget({super.key});

  int selectedIndex = -1;

  TextEditingController newLocationController = TextEditingController();

  // void _onCardTap(int index) {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addressBook = ref.watch(accountControllerProvider);
    return GestureDetector(
      onTap: () {
        // Dismiss keyboard when tapping outside
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pop(), // Dismiss dialog
              child: Container(
                color: Colors.black.withOpacity(0.1), // Dim background
              ),
            ),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 320,
                  // maxHeight: 440,
                ),
                child: Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 15),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(context.tr("payment_information"),
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    color: AppColors.black800,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  )).centered(),
                          40.verticalSpace,

                          PaymentInformationCardWidget(
                            name: "Lionel messi",
                            cardNumber: "123456789123",
                            endDate: DateTime.now().add(Duration(days: 365)),
                            isSelected: true,
                            onTap: () {
                              // _onCardTap(0);
                            },
                          ),
                          // ...List.generate(3, (index) {
                          //   return AddressBookCardWidget(
                          //     title: "title $index",
                          //     isSelected: selectedIndex == index,
                          //     onTap: () => _onCardTap(index),
                          //   );
                          // }),
                          28.verticalSpace,
                          CustomButtonWidget(
                            text: "add_payment_info",
                            backgroundColor: AppColors.green,
                            onTap: () {
                              showAddNewPaymentInformationDialog(
                                  context: context);
                            },
                            isFiled: true,
                            height: 50,
                            width: 220,
                            radius: 8,
                          ).centered(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> showPaymentInformationDialog({
  required BuildContext context,
}) {
  return showDialog(
    context: context,
    barrierDismissible: false, // Prevent dismissing dialog by tapping outside
    builder: (BuildContext context) {
      return PaymentInformationWidget();
    },
  );
}
