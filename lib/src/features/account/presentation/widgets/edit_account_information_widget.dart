import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' as local;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/presentation/controller/account_controller.dart';
import 'package:meat_empire/src/shared_widgets/custom_button_widget.dart';
import 'package:meat_empire/src/shared_functions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:meat_empire/src/utils/arabic_number_input_formatter.dart';
import 'package:queen_validators/queen_validators.dart';

Future<void> showEditAccountInformationDialog({
  required BuildContext context,
  required TextEditingController nameController,
  required TextEditingController phoneController,
}) {
  final formKey = GlobalKey<FormState>();

  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(), // Dismiss keyboard
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              _buildDimBackground(context),
              _buildDialogContent(
                  context, formKey, nameController, phoneController),
            ],
          ),
        ),
      );
    },
  );
}

/// **Builds the semi-transparent background**
Widget _buildDimBackground(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.of(context).pop(), // Close dialog
  );
}

/// **Builds the main dialog content**
Widget _buildDialogContent(
  BuildContext context,
  GlobalKey<FormState> formKey,
  TextEditingController nameController,
  TextEditingController phoneController,
) {
  return Center(
    child: ConstrainedBox(
      constraints:
          const BoxConstraints(maxWidth: 330, maxHeight: 600, minHeight: 450),
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDialogHeader(context),
                  _buildTextFieldLabel(context, "userName")
                      .onlyPadding(top: 80),
                  _buildUserNameField(context, nameController),
                  _buildTextFieldLabel(context, "phoneNumber")
                      .onlyPadding(top: 30),
                  _buildPhoneNumberField(context, phoneController),
                  _buildButtons(
                      context, formKey, nameController, phoneController),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget _buildDialogHeader(BuildContext context) {
  return Text(
    context.tr("edit_account_information"),
    style: Theme.of(context).textTheme.labelSmall!.copyWith(
          color: AppColors.black900,
          fontSize: 16,
          fontWeight: FontWeight.w800,
        ),
  ).centered();
}

Widget _buildTextFieldLabel(BuildContext context, String labelKey) {
  return Text(
    labelKey.tr(),
    textAlign: TextAlign.center,
    style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14),
  );
}

Widget _buildUserNameField(
    BuildContext context, TextEditingController controller) {
  return TextFormField(
    controller: controller,
    style: const TextStyle(color: AppColors.gray02),
    decoration: const InputDecoration(),
    textInputAction: TextInputAction.next,
    validator: qValidator([IsRequired(context.tr('required'))]),
    onSaved: (value) => controller.text = value!,
  ).onlyPadding(top: 5);
}

/// **Builds the phone number input field**
Widget _buildPhoneNumberField(
    BuildContext context, TextEditingController controller) {
  return TextFormField(
    controller: controller,
    style: const TextStyle(color: AppColors.gray02),
    inputFormatters: [
      FilteringTextInputFormatter.digitsOnly,
      ArabicNumberInputFormatter(),
    ],
    textInputAction: TextInputAction.next,
    keyboardType: TextInputType.phone,
    validator: _mobileNumberValidation(context),
    onSaved: (value) => controller.text = value!,
  ).onlyPadding(top: 5);
}

/// **Phone number validation rules**
String? Function(String?) _mobileNumberValidation(BuildContext context) {
  return qValidator([
    IsRequired(context.tr('required')),
    MaxLength(8, context.tr('mustBeEightDigits')),
    MinLength(8, context.tr('mustBeEightDigits')),
    RegExpRule(
        RegExp(r'^([3567])\d+'), context.tr('qatariPhoneNumberValidator')),
  ]);
}

/// **Builds the save & cancel buttons**
Widget _buildButtons(
  BuildContext context,
  GlobalKey<FormState> formKey,
  TextEditingController nameController,
  TextEditingController phoneController,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Consumer(builder: (context, ref, child) {
        final asyncData = ref.watch(accountControllerProvider);
        ref.listen(accountControllerProvider, (prev, next) {
          if (next is AsyncData) {
            Navigator.of(context).pop();
            // context.maybePop().then((_) {
              showCustomDialog(
                context: context,
                title: next.value!.message,
                icon: next.value!.success
                    ? const Icon(Icons.check_circle, color: AppColors.green)
                    : const Icon(Icons.warning, color: AppColors.darkRed),
              );
            // });
          }
        });

        if (asyncData is AsyncLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        return CustomButtonWidget(
          text: "save",
          backgroundColor: AppColors.primary,
          topPading: 35,
          isFiled: true,
          height: 40,
          width: 140,
          onTap: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              ref
                  .read(accountControllerProvider.notifier)
                  .editAccountInformation(
                    context,
                    asyncData.value!.userProfile!.copyWith(
                      firstname: nameController.text,
                      phone: phoneController.text,
                    ),
                  );
            }
          },
        );
      }),
      CustomButtonWidget(
        text: "cancel",
        color: AppColors.primary,
        topPading: 35,
        isFiled: false,
        height: 40,
        width: 140,
        onTap: () => Navigator.of(context).pop(), // Close dialog
      ),
    ],
  );
}
