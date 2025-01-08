import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';
import 'package:meat_empire/src/features/account/presentation/controller/account_controller.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/custom_button_widget.dart';
import 'package:meat_empire/src/shared_widgets/fade_circle_loading_indicator.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:meat_empire/src/utils/arabic_number_input_formatter.dart';
import 'package:queen_validators/queen_validators.dart';

Future<void> showEditAccountInformationDialog({
  required BuildContext context,
  required TextEditingController nameController,
  required TextEditingController phoneController,
}) {
  final _formKey = GlobalKey<FormState>();

  Widget buildUserNameField(BuildContext context) {
    return TextFormField(
      controller: nameController,
      style: const TextStyle(color: AppColors.mediumGray01),
      decoration: InputDecoration(),
      textInputAction: TextInputAction.next,
      validator: qValidator([
        IsRequired(context.tr('required')),
      ]),
      onSaved: (value) => nameController.text = value!,
    );
  }

  Widget buildPhoneNumberPrefix(BuildContext context) {
    return SizedBox(
      width: 90,
      child: IntrinsicHeight(
        child: Row(
          children: [
            const SizedBox(width: 4),
            Assets.images.qatarFlag.image(),
            const SizedBox(width: 4),
            Text(
              '+974',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.black800,
                  ),
            ),
            const VerticalDivider(
              color: AppColors.stoneGray,
              thickness: 0.3,
              indent: 12,
              endIndent: 12,
            ),
          ],
        ),
      ),
    );
  }

  String? Function(String?) mobileNumberValidation(BuildContext context) {
    return qValidator([
      IsRequired(context.tr('required')),
      MaxLength(8, context.tr('mustBeEightDigits')),
      MinLength(8, context.tr('mustBeEightDigits')),
      RegExpRule(
        RegExp(r'^([3567])\d+'),
        context.tr('qatariPhoneNumberValidator'),
      ),
    ]);
  }

  // Phone number text field
  Widget buildPhoneNumberField(BuildContext context) {
    return TextFormField(
      controller: phoneController,
      style: const TextStyle(color: AppColors.mediumGray01),
      decoration: InputDecoration(
        prefixIcon: buildPhoneNumberPrefix(context),
      ),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        ArabicNumberInputFormatter(),
      ],
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.phone,
      validator: mobileNumberValidation(context),
      onSaved: (value) => phoneController.text = value!,
    );
  }

  return showDialog(
    context: context,
    barrierDismissible: false, // Prevent dismissing dialog by tapping outside
    builder: (BuildContext context) {
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
                    maxHeight: 440,
                  ),
                  child: Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 10),
                      child: SingleChildScrollView(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(context.tr("edit_account_information"),
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
                                "userName".tr(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(fontSize: 12),
                              ),
                              buildUserNameField(context),
                              20.verticalSpace,
                              Text(
                                "phoneNumber".tr(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(fontSize: 12),
                              ),
                              buildPhoneNumberField(context),
                              // 30.verticalSpace,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomButtonWidget(
                                    text: "cancel",
                                    color: AppColors.primary,
                                    onTap: () {
                                      debugPrint("cancel");
                                      Navigator.of(context)
                                          .pop(); // Close dialog
                                    },
                                    isFiled: false,
                                    height: 40,
                                    width: 125,
                                  ),
                                  Consumer(builder: (context, ref, child) {
                                    final asyncLogin =
                                        ref.watch(accountControllerProvider);
                                    if (asyncLogin is AsyncLoading) {
                                      return FadeCircleLoadingIndicator();
                                    }
                                    return CustomButtonWidget(
                                      text: "save",
                                      backgroundColor: AppColors.primary,
                                      onTap: () {
                                        // Save logic here

                                        if (_formKey.currentState!.validate()) {
                                          _formKey.currentState!.save();
                                          ref
                                              .read(accountControllerProvider
                                                  .notifier)
                                              .editAccountInformation(
                                                // access to current user profile and copy with updated values
                                                context,
                                                nameController.text,
                                                phoneController.text,

                                                // $UserProfileCopyWith(value, then)
                                              );
                                        }
                                      },
                                      isFiled: true,
                                      height: 40,
                                      width: 125,
                                    );
                                  }),
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
