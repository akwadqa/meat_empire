import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/domain/entites/profile_response.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';
import 'package:meat_empire/src/features/account/presentation/controller/account_controller.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/address_book/add_new_address_book_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/address_book/address_book_card_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/custom_button_widget.dart';
import 'package:meat_empire/src/shared_widgets/app_error_widget.dart';
import 'package:meat_empire/src/shared_widgets/fade_circle_loading_indicator.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class AddressBookWidget extends ConsumerWidget {
  AddressBookWidget({super.key, this.userProfile, this.checkout = false});
  bool checkout;
  final UserProfile? userProfile;

  int selectedIndex = -1;

  TextEditingController newLocationController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accountSyncData = ref.watch(accountControllerProvider);
    return checkout
        ? Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildShippingLocationWidget(context, userProfile!, 260)
                  .symmetricPadding(horizontal: 20),
              // 15.verticalSpace,
              // _buildBillingLocationWidget(context, userProfile!, 260)
              //     .symmetricPadding(horizontal: 20),
            ],
          )
        : GestureDetector(
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
                              vertical: 50, horizontal: 12),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(context.tr("address_book"),
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                          color: AppColors.black900,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                        )).centered(),
                                50.verticalSpace,
                                _buildShippingLocationWidget(context,
                                    accountSyncData.value!.userProfile!, null),
                                15.verticalSpace,
                                // _buildBillingLocationWidget(context,
                                //     accountSyncData.value!.userProfile!, null),
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

Widget _buildShippingLocationWidget(
    BuildContext context, UserProfile userProfile, double? width) {
  return (userProfile.shippingStrete!.isEmpty)
      ? CustomButtonWidget(
          text: "add_shipping_location",
          backgroundColor: AppColors.green,
          onTap: () {
            showAddNewAddressBottomSheet(
              context: context,
              userProfile: userProfile,
            );
          },
          isFiled: true,
          height: 50,
          width: width ?? 230,
          radius: 8,
          topPading: 20,
        ).centered()
      : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(context.tr("shipping_location"),
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: AppColors.black900,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    )),
            8.verticalSpace,
            AddressBookCardWidget(
              title:
                  "${userProfile.shippingCity!} - ${userProfile.shippingCountry!} - ${userProfile.shippingStrete!} ${userProfile.shippingBuildingNumber!.isNotEmpty ? "- ${userProfile.shippingBuildingNumber}" : ""}",
              onTap: () {
                showAddNewAddressBottomSheet(
                  context: context,
                  userProfile: userProfile,
                  isEdit: true,
                );

                // showAddNewAddressBookDialog(
                // context: context,
                // userProfile: userProfile,
                // billMode: false,
                // isEdit: true);
              },
            ),
          ],
        );
}

// Widget _buildBillingLocationWidget(
//     BuildContext context, UserProfile userProfile, double? width) {
//   return (userProfile.billingStrete!.isEmpty)
//       ? CustomButtonWidget(
//           text: "add_billing_location",
//           backgroundColor: AppColors.green,
//           onTap: () {
//             showAddNewAddressBottomSheet(
//               context: context,
//               billMode: true,
//               userProfile: userProfile,
//             );
//           },
//           isFiled: true,
//           height: 50,
//           width: width ?? 230,
//           radius: 8,
//           topPading: 10,
//         ).centered()
//       : Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(context.tr("billing_location"),
//                 style: Theme.of(context).textTheme.labelSmall!.copyWith(
//                       color: AppColors.black900,
//                       fontSize: 13,
//                       fontWeight: FontWeight.w600,
//                     )),
//             8.verticalSpace,
//             AddressBookCardWidget(
//               title:
//                   "${userProfile.bllingCity!} - ${userProfile.billingCountry!} - ${userProfile.billingStrete!} ${userProfile.billingBuildingNumber!.isNotEmpty ? "- ${userProfile.billingBuildingNumber}" : ""}",
//               onTap: () {
//                 showAddNewAddressBottomSheet(
//                     context: context,
//                     userProfile: userProfile,
//                     billMode: true,
//                     isEdit: true);
//               },
//             ),
//           ],
//         );
// }

Future<void> showAddressBookDialog({
  required BuildContext context,
}) {
  return showDialog(
    context: context,
    barrierDismissible: false, // Prevent dismissing dialog by tapping outside
    builder: (BuildContext context) {
      return AddressBookWidget(userProfile: null);
    },
  );
}
