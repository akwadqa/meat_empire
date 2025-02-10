// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:meat_empire/gen/assets.gen.dart';
// import 'package:meat_empire/src/extenssions/int_extenssion.dart';
// import 'package:meat_empire/src/extenssions/widget_extensions.dart';
// import 'package:meat_empire/src/features/account/presentation/controller/account_controller.dart';
// import 'package:meat_empire/src/features/account/presentation/widgets/custom_button_widget.dart';
// import 'package:meat_empire/src/shared_widgets/text_input_formatter.dart';
// import 'package:meat_empire/src/theme/app_colors.dart';
// import 'package:queen_validators/queen_validators.dart';

// Future<void> showAddNewPaymentInformationDialog({
//   required BuildContext context,
// }) {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController cardNumberController = TextEditingController();
//   TextEditingController secretNumberController = TextEditingController();
//   TextEditingController endDateController = TextEditingController(
//       text: DateFormat('d/M/yyyy')
//           .format(DateTime.now().add(Duration(days: 365))));
//   Widget buildNameField(BuildContext context) {
//     return TextFormField(
//       controller: nameController,
//       style: const TextStyle(color: AppColors.gray02),
//       decoration: InputDecoration(
//         hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
//               color: AppColors.gray02,
//               fontSize: 11,
//             ),
//         hintText: "الدوحة",
//         prefixIconConstraints: BoxConstraints(
//             maxHeight: 20, maxWidth: 30, minHeight: 20, minWidth: 30),
//         prefixIcon:
//             Assets.icons.cityIcon.svg(color: AppColors.gray).symmetricPadding(
//                   horizontal: 4,
//                 ),
//       ),
//       textInputAction: TextInputAction.next,
//       validator: qValidator([
//         IsRequired(context.tr('required')),
//         // MinLength(8, 'Password must be at least 8 characters'),
//       ]),
//       onSaved: (value) => nameController.text = value!,
//     );
//   }

//   Widget buildCardNumberField(BuildContext context) {
//     return TextFormField(
//       controller: cardNumberController,
//       style: const TextStyle(color: AppColors.gray02),
//       decoration: InputDecoration(
//         hintText: "1555 - 2366 - 8877 - 2200",
//         hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
//               color: AppColors.gray02,
//               fontSize: 11,
//             ),
//         prefixIconConstraints: BoxConstraints(
//             maxHeight: 20, maxWidth: 30, minHeight: 20, minWidth: 30),
//         prefixIcon: Assets.icons.countryIcon
//             .svg(color: AppColors.gray)
//             .symmetricPadding(
//               horizontal: 4,
//             ),
//       ),
//       textInputAction: TextInputAction.next,
//       keyboardType: TextInputType.number,
//       inputFormatters: [
//         FilteringTextInputFormatter.digitsOnly, // Allow digits only
//         CardNumberInputFormatter(), // Custom formatter for the pattern
//       ],
//       validator: qValidator([
//         IsRequired(context.tr('required')),
//       ]),
//       onSaved: (value) => cardNumberController.text = value!,
//     );
//   }

//   Widget buildSecretField(BuildContext context) {
//     return TextFormField(
//       controller: secretNumberController,
//       style: const TextStyle(color: AppColors.gray02),
//       decoration: InputDecoration(
//         hintText: "1234",
//         hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
//               color: AppColors.gray02,
//               fontSize: 11,
//             ),
//         prefixIconConstraints: BoxConstraints(
//             maxHeight: 20, maxWidth: 30, minHeight: 20, minWidth: 30),
//         prefixIcon:
//             Assets.icons.streetIcon.svg(color: AppColors.gray).symmetricPadding(
//                   horizontal: 4,
//                 ),
//       ),
//       // textInputAction: TextInputAction.next,
//       keyboardType: TextInputType.number,
//       validator: qValidator([
//         IsRequired(context.tr('required')),
//       ]),
//       onSaved: (value) => secretNumberController.text = value!,
//     );
//   }

//   Widget buildEndDateField(BuildContext context) {
//     return TextFormField(
//       controller: endDateController,
//       style: const TextStyle(color: AppColors.gray02),
//       decoration: InputDecoration(
//         hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
//               color: AppColors.gray02,
//               fontSize: 11,
//             ),
//         prefixIconConstraints: BoxConstraints(
//             maxHeight: 20, maxWidth: 30, minHeight: 20, minWidth: 30),
//         prefixIcon:
//             Assets.icons.streetIcon.svg(color: AppColors.gray).symmetricPadding(
//                   horizontal: 4,
//                 ),
//       ),
//       textInputAction: TextInputAction.next,
//       validator: qValidator([
//         IsRequired(context.tr('required')),
//       ]),
//       onSaved: (value) => endDateController.text = value!,
//     );
//   }

//   return showDialog(
//     context: context,

//     barrierDismissible: false, // Prevent dismissing dialog by tapping outside
//     builder: (BuildContext context) {
//       final GlobalKey<FormState> formKey = GlobalKey<FormState>();

//       return GestureDetector(
//         onTap: () {
//           // Dismiss keyboard when tapping outside
//           FocusScope.of(context).unfocus();
//         },
//         child: Scaffold(
//           backgroundColor: Colors.transparent,
//           body: Stack(
//             children: [
//               GestureDetector(
//                 onTap: () => Navigator.of(context).pop(), // Dismiss dialog
//                 child: Container(
//                   color: Colors.black.withOpacity(0.1), // Dim background
//                 ),
//               ),
//               Center(
//                 child: ConstrainedBox(
//                   constraints: BoxConstraints(
//                     maxWidth: 320,
//                     // maxHeight: 440,
//                   ),
//                   child: Material(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 30, horizontal: 10),
//                       child: Form(
//                         key: formKey,
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(context.tr("add_payment_info"),
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .displaySmall!
//                                     .copyWith(
//                                       color: AppColors.black800,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w800,
//                                     )).centered(),
//                             28.verticalSpace,
//                             Text(
//                               "card_user".tr(),
//                               textAlign: TextAlign.center,
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .labelSmall!
//                                   .copyWith(fontSize: 12),
//                             ),
//                             buildNameField(context),
//                             10.verticalSpace,
//                             Text(
//                               "card_number".tr(),
//                               textAlign: TextAlign.center,
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .labelSmall!
//                                   .copyWith(fontSize: 12),
//                             ),
//                             buildCardNumberField(context),
//                             28.verticalSpace,
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       "end_date".tr(),
//                                       textAlign: TextAlign.center,
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .labelSmall!
//                                           .copyWith(fontSize: 12),
//                                     ),
//                                     SizedBox(
//                                         width: 140,
//                                         height: 50,
//                                         child: buildEndDateField(context)),
//                                   ],
//                                 ),
//                                 10.horizontalSpace,
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       "secret_nymber".tr(),
//                                       textAlign: TextAlign.center,
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .labelSmall!
//                                           .copyWith(fontSize: 12),
//                                     ),
//                                     SizedBox(
//                                         width: 140,
//                                         height: 50,
//                                         child: buildSecretField(context)),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Consumer(
//                               builder: (context, ref, child) {
//                                 final data =
//                                     ref.watch(accountControllerProvider);

//                                 return CustomButtonWidget(
//                                   text: "save",
//                                   topPading: 30,
//                                   backgroundColor: AppColors.primary,
//                                   onTap: () {
//                                     if (formKey.currentState!.validate()) {
//                                       // final address =
//                                       //     "${cityController.text}-${countryController.text}-${streetController.text}";

//                                       // ref
//                                       //     .read(accountControllerProvider
//                                       //         .notifier)
//                                       //     .editAccountInformation(
//                                       //         context,
//                                       //         data.value!.userProfile.copyWith(
//                                       //             shippingAddress: address));

//                                       SnackBar(
//                                         content: Text(data.value!.message),
//                                         backgroundColor: Colors.green,
//                                       );
//                                     }
//                                   },
//                                   isFiled: true,
//                                   height: 45,
//                                   width: 230,
//                                   radius: 50,
//                                 ).centered();
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }
