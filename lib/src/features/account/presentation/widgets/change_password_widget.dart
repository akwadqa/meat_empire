import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/presentation/controller/account_controller.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/custom_button_widget.dart';
import 'package:meat_empire/src/shared_functions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:meat_empire/src/utils/app_messages.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:bcrypt/bcrypt.dart';

Future<void> showChangePasswordDialog({
  required BuildContext context,
}) {
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();
  final FocusNode oldPasswordFocusNode = FocusNode();
  final FocusNode newPasswordFocusNode = FocusNode();
  final FocusNode confirmNewPasswordFocusNode = FocusNode();

  Widget buildOldPasswordField(BuildContext context) {
    return TextFormField(
      controller: oldPasswordController,
      focusNode: oldPasswordFocusNode,
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

  Widget buildNewPasswordField(BuildContext context) {
    return TextFormField(
      controller: newPasswordController,
      focusNode: newPasswordFocusNode,
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

  Widget buildConfirmNewPasswordField(BuildContext context) {
    return TextFormField(
      controller: confirmNewPasswordController,
      focusNode: confirmNewPasswordFocusNode,
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

  String? Function(String?) passwordValidation(BuildContext context) {
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
  //focusNode: _focusNode,
  // style: const TextStyle(color: AppColors.mediumGray01),
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
      final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
                    maxWidth: 330,
                    // maxHeight: 440,
                  ),
                  child: Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 40, horizontal: 12),
                      child: Form(
                        key: formKey,
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
                              80.verticalSpace,

                              Text(
                                "old_password".tr(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(fontSize: 14),
                              ),
                              buildOldPasswordField(context),
                              20.verticalSpace,
                              Text(
                                "new_password".tr(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(fontSize: 14),
                              ),
                              buildNewPasswordField(context),
                              20.verticalSpace,
                              Text(
                                "confirm_new_password".tr(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(fontSize: 14),
                              ),
                              buildConfirmNewPasswordField(context),
                              // 30.verticalSpace,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Consumer(
                                    builder: (context, ref, child) {
                                      final data =
                                          ref.watch(accountControllerProvider);
                                      if (data.value?.success == false) {
                                        showCustomDialog(
                                          context: context,
                                          title: data.value!.message,
                                          icon: Icon(
                                            Icons.warning_amber,
                                            color: Colors.red,
                                          ),
                                        );
                                        return SizedBox();
                                      } else {
                                        ref.listen(accountControllerProvider,
                                            (prev, next) {
                                          if (next is AsyncData) {
                                            final success = next.value!.success;
                                            final message = next.value!.message;

                                            context.maybePop().then((_) {
                                              showCustomDialog(
                                                context: context,
                                                title: message,
                                                icon: success
                                                    ? Icon(
                                                        Icons.check_circle,
                                                        color: Colors.green,
                                                      )
                                                    : Icon(
                                                        Icons.warning,
                                                        color: Colors.red,
                                                      ),
                                              );
                                            });
                                          } else if (next is AsyncError) {
                                            // Handle AsyncError and show a fallback dialog
                                            showCustomDialog(
                                              context: context,
                                              title: "wrong_password_msg".tr(),
                                              icon: Icon(
                                                Icons.warning,
                                                color: Colors.red,
                                              ),
                                            );
                                          }
                                        });
                                        if (data is AsyncLoading) {
                                          return Center(
                                              child:
                                                  CircularProgressIndicator());
                                        }
                                        final hashedPassword = data.asData
                                            ?.value.userProfile?.password;
                                        return CustomButtonWidget(
                                          text: "save",
                                          backgroundColor: AppColors.primary,
                                          topPading: 35,
                                          onTap: () {
                                            if (formKey.currentState!
                                                .validate()) {
                                              final isPasswordCorrect =
                                                  BCrypt.checkpw(
                                                      oldPasswordController
                                                          .text,
                                                      hashedPassword!);

                                              if (isPasswordCorrect) {
                                                ref
                                                    .read(
                                                        accountControllerProvider
                                                            .notifier)
                                                    .editAccountInformation(
                                                        context,
                                                        data.value!.userProfile!
                                                            .copyWith(
                                                                password:
                                                                    newPasswordController
                                                                        .text));
                                                debugPrint(
                                                    "Password changed successfully");
                                                SnackBar(
                                                  content:
                                                      Text(data.value!.message),
                                                  backgroundColor: Colors.green,
                                                );
                                              } else {
                                                debugPrint(
                                                    "password is incorrect ");

                                                showCustomDialog(
                                                  context: context,
                                                  title: "كلمة السر غير صحيحة",
                                                  icon: Icon(
                                                    Icons.warning_amber,
                                                    color: Colors.red,
                                                  ),
                                                );
                                                // AppMessages.showError(
                                                //     message:
                                                //         "كلمة السر غير صحيحة");
                                                // }
                                              }
                                            }
                                          },
                                          isFiled: true,
                                          height: 40,
                                          width: 140,
                                        );
                                      }
                                    },
                                  ),
                                  CustomButtonWidget(
                                    text: "cancel",
                                    color: AppColors.primary,
                                    topPading: 35,
                                    onTap: () {
                                      Navigator.of(context)
                                          .pop(); // Close dialog
                                    },
                                    isFiled: false,
                                    height: 40,
                                    width: 140,
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
