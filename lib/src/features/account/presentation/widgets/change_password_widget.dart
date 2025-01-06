import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/account_cards.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/custom_button_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/logout_button_widget.dart';
import 'package:meat_empire/src/shared_functions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:meat_empire/src/utils/arabic_number_input_formatter.dart';
import 'package:queen_validators/queen_validators.dart';

Future<void> showChangePasswordDialog({
  required BuildContext context,
}) {
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();
  Widget _buildOldPasswordField(BuildContext context) {
    return TextFormField(
      controller: oldPasswordController,
      style: const TextStyle(color: AppColors.mediumGray01),
      decoration: InputDecoration(),
      textInputAction: TextInputAction.next,
      validator: qValidator([
        IsRequired(context.tr('required')),
        MinLength(8, 'Password must be at least 8 characters'),
      ]),
      onSaved: (value) => oldPasswordController.text = value!,
    );
  }

  Widget _buildNewPasswordField(BuildContext context) {
    return TextFormField(
      controller: newPasswordController,
      style: const TextStyle(color: AppColors.mediumGray01),
      decoration: InputDecoration(),
      textInputAction: TextInputAction.next,
      validator: qValidator([
        IsRequired(context.tr('required')),
        MinLength(8, 'Password must be at least 8 characters'),
      ]),
      onSaved: (value) => newPasswordController.text = value!,
    );
  }

  Widget _buildConfirmNewPasswordField(BuildContext context) {
    return TextFormField(
      controller: confirmNewPasswordController,
      style: const TextStyle(color: AppColors.mediumGray01),
      decoration: InputDecoration(),
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Confirm password is required';
        }
        if (value != newPasswordController.text) {
          return 'Passwords do not match';
        }
        return null;
      },
      onSaved: (value) => confirmNewPasswordController.text = value!,
    );
  }

  String? Function(String?) _passwordValidation(BuildContext context) {
    return qValidator([
      IsRequired(context.tr('required')),
      MaxLength(8, context.tr('mustBeEightDigits')),
      MinLength(8, context.tr('mustBeEightDigits')),
      RegExpRule(
        RegExp(r'^([3567])\d+'),
      ),
    ]);
  }

  // Phone number text field
  // Widget _buildPhoneNumberField(BuildContext context) {
  //   return TextFormField(
  //     controller: phoneController,
  //     style: const TextStyle(color: AppColors.mediumGray01),
  //     decoration: InputDecoration(
  //       prefixIcon: _buildPhoneNumberPrefix(context),
  //     ),
  //     inputFormatters: [
  //       FilteringTextInputFormatter.digitsOnly,
  //       ArabicNumberInputFormatter(),
  //     ],
  //     textInputAction: TextInputAction.next,
  //     keyboardType: TextInputType.phone,
  //     validator: _mobileNumberValidation(context),
  //     onSaved: (value) => phoneController.text = value!,
  //   );
  // }

  return showDialog(
    context: context,

    barrierDismissible: false, // Prevent dismissing dialog by tapping outside
    builder: (BuildContext context) {
      final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                          vertical: 30, horizontal: 10),
                      child: Form(
                        key: _formKey,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(context.tr("change_password"),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                        color: AppColors.black900,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                      )).centered(),
                              28.verticalSpace,
                              Text(
                                "old_password".tr(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(fontSize: 12),
                              ),
                              _buildOldPasswordField(context),
                              20.verticalSpace,
                              Text(
                                "new_password".tr(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(fontSize: 12),
                              ),
                              _buildNewPasswordField(context),
                              20.verticalSpace,
                              Text(
                                "confirm_new_password".tr(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(fontSize: 12),
                              ),
                              _buildConfirmNewPasswordField(context),
                              // 30.verticalSpace,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomButtonWidget(
                                    text: "cancel",
                                    color: AppColors.primary,
                                    onTap: () {
                                      print("CANCEL");

                                      Navigator.of(context)
                                          .pop(); // Close dialog
                                    },
                                    isFiled: false,
                                    height: 40,
                                    width: 125,
                                  ),
                                  CustomButtonWidget(
                                    text: "save",
                                    color: AppColors.primary,
                                    onTap: () {
                                      if (_formKey.currentState!.validate()) {
                                        // Save logic here
                                        Navigator.of(context)
                                            .pop(); // Close dialog
                                      }
                                    },
                                    isFiled: true,
                                    height: 40,
                                    width: 125,
                                  ),
                                ],
                              )
                            ],
                          ),
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
    },
  );
}
