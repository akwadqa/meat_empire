import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/presentation/controller/account_controller.dart';
import 'package:meat_empire/src/shared_widgets/custom_button_widget.dart';
import 'package:meat_empire/src/shared_functions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:bcrypt/bcrypt.dart';

Future<void> showChangePasswordDialog({required BuildContext context}) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => const ChangePasswordDialog(),
  );
}

class ChangePasswordDialog extends StatefulWidget {
  const ChangePasswordDialog({Key? key}) : super(key: key);

  @override
  _ChangePasswordDialogState createState() => _ChangePasswordDialogState();
}

class _ChangePasswordDialogState extends State<ChangePasswordDialog> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmNewPasswordController =
      TextEditingController();

  @override
  void dispose() {
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmNewPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            _buildDimBackground(context),
            _buildDialogContent(context),
          ],
        ),
      ),
    );
  }

  /// **Builds the semi-transparent background**
  Widget _buildDimBackground(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(), // Close dialog
    );
  }

  Widget _buildDialogContent(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 330,
        ),
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 12),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTitle(context),
                    80.verticalSpace,
                    PasswordField(
                      label: "old_password",
                      controller: oldPasswordController,
                      validator: qValidator([
                        IsRequired(context.tr('required')),
                        MinLength(8, 'Password must be at least 8 characters'),
                      ]),
                    ),
                    PasswordField(
                      label: "new_password",
                      controller: newPasswordController,
                      validator: qValidator([
                        IsRequired(context.tr('required')),
                        MinLength(8, 'Password must be at least 8 characters'),
                      ]),
                    ),
                    PasswordField(
                      label: "confirm_new_password",
                      controller: confirmNewPasswordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Confirm password is required';
                        }
                        if (value != newPasswordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                    _buildActionButtons(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      context.tr("change_password"),
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
            color: AppColors.black900,
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
    ).centered();
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Consumer(
          builder: (context, ref, child) {
            final data = ref.watch(accountControllerProvider);

            if (data.value?.success == false) {
              showCustomDialog(
                context: context,
                title: data.value!.message,
                icon: const Icon(
                  Icons.warning_amber,
                  color: Colors.red,
                ),
              );
              return const SizedBox();
            }

            if (data is AsyncLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            final hashedPassword = data.asData?.value.userProfile?.password;

            return CustomButtonWidget(
              text: "save",
              backgroundColor: AppColors.primary,
              topPading: 35,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  final isPasswordCorrect = BCrypt.checkpw(
                    oldPasswordController.text,
                    hashedPassword!,
                  );

                  if (isPasswordCorrect) {
                    ref
                        .read(accountControllerProvider.notifier)
                        .editAccountInformation(
                          context,
                          data.value!.userProfile!.copyWith(
                            password: newPasswordController.text,
                          ),
                        );

                    showCustomDialog(
                      context: context,
                      title: data.value!.message,
                      icon: const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                    );
                  } else {
                    showCustomDialog(
                      context: context,
                      title: "كلمة السر غير صحيحة",
                      icon: const Icon(
                        Icons.warning_amber,
                        color: Colors.red,
                      ),
                    );
                  }
                }
              },
              isFiled: true,
              height: 40,
              width: 140,
            );
          },
        ),
        CustomButtonWidget(
          text: "cancel",
          color: AppColors.primary,
          topPading: 35,
          onTap: () {
            Navigator.of(context).pop();
          },
          isFiled: false,
          height: 40,
          width: 140,
        ),
      ],
    );
  }
}

class PasswordField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const PasswordField({
    required this.label,
    required this.controller,
    required this.validator,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14),
        ),
        TextFormField(
          controller: controller,
          style: const TextStyle(color: AppColors.gray02),
          decoration: InputDecoration(),
          textInputAction: TextInputAction.next,
          validator: validator,
          onSaved: (value) => controller.text = value!,
        ),
        20.verticalSpace,
      ],
    );
  }
}
