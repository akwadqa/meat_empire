// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:meat_empire/src/extenssions/int_extenssion.dart';
// import 'package:meat_empire/src/shared_functions.dart';
// import 'package:meat_empire/src/theme/app_colors.dart';

// class CustomRadioFormField extends FormField<bool> {
//   CustomRadioFormField({
//     Key? key,
//     bool initialValue = false,
//     bool possibleToAddSameShippingAddress = true,
//     FormFieldSetter<bool>? onSaved,
//     FormFieldValidator<bool>? validator,
//     required BuildContext context,
//   }) : super(
//           key: key,
//           initialValue: initialValue,
//           onSaved: onSaved,
//           validator: validator,
//           builder: (FormFieldState<bool> state) {
//             return Row(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     // Toggle the value
//                     if (possibleToAddSameShippingAddress) {
//                       final newValue = !(state.value ?? false);
//                       state.didChange(newValue); // Update the FormField state
//                       state.save(); // Call onSaved if defined
//                     } else {
//                       showCustomDialog(
//                           context: context,
//                           title: "not_shipping_address_msg".tr(),
//                           icon: Icon(
//                             Icons.warning_amber,
//                             color: Colors.amber,
//                             size: 40,
//                           ));
//                     }
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: (state.value ?? false)
//                             ? AppColors.primary
//                             : AppColors.lightGray,
//                       ),
//                     ),
//                     width: 16,
//                     height: 16,
//                     alignment: Alignment.center,
//                     child: (state.value ?? false)
//                         ? Icon(Icons.circle, color: AppColors.primary, size: 12)
//                         : null,
//                   ),
//                 ),
//                 4.horizontalSpace,
//                 Text(
//                   "same_shipping_address".tr(),
//                   style: Theme.of(state.context).textTheme.labelSmall!.copyWith(
//                         color: AppColors.grey600,
//                         fontSize: 12,
//                         // fontWeight: FontWeight.w600,
//                       ),
//                 ),
//               ],
//             );
//           },
//         );
// }
