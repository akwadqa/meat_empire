import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/features/auth/presentation/auth_text/auth_text.dart';
import 'package:meat_empire/src/features/auth/presentation/email_text_form_field/email_text_form_field.dart';
import 'package:meat_empire/src/features/auth/presentation/password_text_field/password_text_field.dart';
import 'package:meat_empire/src/routing/app_router.gr.dart';
import 'package:queen_validators/queen_validators.dart';

import '../../../../shared_functions.dart';
import '../../../../shared_widgets/app_loading_indicator.dart';
import '../../../../shared_widgets/app_logo.dart';
import '../../../../theme/app_colors.dart';
import '../../../../utils/arabic_number_input_formatter.dart';
import '../auth_button/auth_button.dart';
import '../auth_controller/auth_controller.dart';

@RoutePage()
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  // Form fields
  String? _userName;
  String? _phoneNumber;
  String? _email;
  String? _password;
  String? _confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppLogo(),
        elevation: 2,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(38),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 54),
                _buildHeader(context),
                const SizedBox(height: 54),
                _buildUserNameField(context),
                const SizedBox(height: 20),
                EmailTextFormField(onSaved: (value) => _email = value),
                const SizedBox(height: 20),
                _buildPhoneNumberField(context),
                const SizedBox(height: 20),
                PasswordTextField(
                  label: context.tr('password'),
                  onSaved: (value) => _password = value,
                ),
                const SizedBox(height: 20),
                PasswordTextField(
                  label: context.tr('passwordConfirmation'),
                  onSaved: (value) => _confirmPassword = value,
                ),
                const SizedBox(height: 54),
                _buildSubmitButton(context),
                const SizedBox(height: 26),
                AuthText(text: context.tr('haveAccount')),
                const SizedBox(height: 16),
                _buildLoginButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Header text
  Widget _buildHeader(BuildContext context) {
    return Text(
      context.tr('createANewAccount'),
      style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 26),
    );
  }

  // Username text field
  Widget _buildUserNameField(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: AppColors.mediumGray01),
      decoration: InputDecoration(
        labelText: context.tr('userName'),
      ),
      textInputAction: TextInputAction.next,
      validator: qValidator([
        IsRequired(context.tr('required')),
      ]),
      onSaved: (value) => _userName = value,
    );
  }

  // Phone number text field
  Widget _buildPhoneNumberField(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: AppColors.mediumGray01),
      decoration: InputDecoration(
        labelText: context.tr('phoneNumber'),
        prefixIcon: _buildPhoneNumberPrefix(context),
      ),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        ArabicNumberInputFormatter(),
      ],
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.phone,
      validator: _mobileNumberValidation(context),
      onSaved: (value) => _phoneNumber = value,
    );
  }

  // Prefix for the phone number field
  Widget _buildPhoneNumberPrefix(BuildContext context) {
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

  // Submit button
  Widget _buildSubmitButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          ref.listen(authControllerProvider, (prev, next) {
            if (next is AsyncData) {
              context.maybePop().then((_) {
                _showDialog();
              });
            }
          });

          final asyncLogin = ref.watch(authControllerProvider);
          if (asyncLogin is AsyncLoading) {
            return const AppLoadingIndicator();
          }

          return ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                ref.read(authControllerProvider.notifier).signup(
                      _email!,
                      _userName!,
                      _password!,
                      _confirmPassword!,
                      _phoneNumber!,
                    );
              }
            },
            child: Text(context.tr('createAccount')),
          );
        },
      ),
    );
  }

  void _showDialog() {
    showCustomDialog(
      context: context,
      title: context.tr('welcomeBack'),
      icon: Assets.icons.markIcon.svg(),
    );
  }

  // Login button
  Widget _buildLoginButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AuthButton(
        onPressed: () => context.replaceRoute(const LoginRoute()),
        text: context.tr('login'),
      ),
    );
  }

  // Mobile number validation
  String? Function(String?) _mobileNumberValidation(BuildContext context) {
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
}
