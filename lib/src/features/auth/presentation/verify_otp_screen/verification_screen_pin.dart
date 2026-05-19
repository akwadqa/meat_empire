import 'package:easy_localization/easy_localization.dart' as local;
import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

import 'package:pinput/pinput.dart';

class VerificationScreenPin extends StatelessWidget {
  const VerificationScreenPin({super.key, required this.controller});
  final TextEditingController controller;
  // final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    var pinTheme = PinTheme(
      // textStyle: AppTextStyle.rubikRegular20.copyWith(color: AppColors.primary),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        border: Border.all(color: AppColors.grayBorder),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        // onSubmitted: onSaved,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'please_enter_code'.tr();
          }
          if (value.length < 5) {
            return 'code_must_be_6_numbers'.tr();
          }
          return null;
        },
        readOnly: false,
        controller: controller,
        showCursor: false,
        // preFilledWidget: Text(
        //   '-',
        //   style: AppTextStyle.rubikRegular20.copyWith(color: AppColors.black),
        // ),
        focusedPinTheme: pinTheme.copyBorderWith(
          border: Border.all(color: AppColors.primary),
        ),
        errorPinTheme: pinTheme.copyBorderWith(
          border: Border.all(color: AppColors.darkRed),
        ),
        length: 5,
        defaultPinTheme: pinTheme,
      ),
    ).symmetricPadding(horizontal: 8);
  }
}
