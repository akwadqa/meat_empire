import 'dart:ui' as ui;

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/features/auth/presentation/auth_text/auth_text.dart';
import 'package:meat_empire/src/features/auth/presentation/email_text_form_field/email_text_form_field.dart';
import 'package:meat_empire/src/features/auth/presentation/password_text_field/password_text_field.dart';

import 'package:meat_empire/src/routing/new_router/go_routes.dart';
import 'package:queen_validators/queen_validators.dart';

import '../../../../shared_functions.dart';
import '../../../../shared_widgets/fade_circle_loading_indicator.dart';
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
                54.verticalSpace,
                _buildHeader(context),
                54.verticalSpace,
                _buildUserNameField(context),
                40.verticalSpace,
                EmailTextFormField(onSaved: (value) => _email = value),
                // 20.verticalSpace,
                // _buildPhoneNumberField(context),
                // 20.verticalSpace,
                // PasswordTextField(
                //   label: context.tr('password'),
                //   onSaved: (value) => _password = value,
                // ),
                // 20.verticalSpace,
                // PasswordTextField(
                //   label: context.tr('passwordConfirmation'),
                //   onSaved: (value) => _confirmPassword = value,
                // ),
                54.verticalSpace,
                _buildSubmitButton(context),
                // 26.verticalSpace,
                // AuthText(text: context.tr('haveAccount')),
                // 16.verticalSpace,
                // _buildLoginButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr('createANewAccount'),
          style: Theme.of(
            context,
          ).textTheme.displayLarge!.copyWith(fontSize: 26),
        ),
        8.verticalSpace,
        Text(
          context.tr('welcomeToMeatEmpire'),
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        12.verticalSpace,
        Text(
          context.tr('phoneVerified'),
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        8.verticalSpace,
        Consumer(
          builder: (context, ref, _) {
            final number = ref.watch(
              authControllerProvider.select((val) => val.value?.mobileNumber),
            );
            return Directionality(
              textDirection: ui.TextDirection.ltr,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  context.tr('+$number'),
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 16,
                    color: AppColors.green,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildUserNameField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Text(
          "${context.tr("userName")} *",
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 15),
        ),
        TextFormField(
          style: const TextStyle(color: AppColors.gray02),
          decoration: InputDecoration(labelText: context.tr('userName')),
          textInputAction: TextInputAction.next,
          validator: qValidator([IsRequired(context.tr('required'))]),
          onSaved: (value) => _userName = value,
        ),
      ],
    );
  }

  Widget _buildPhoneNumberField(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: AppColors.gray02),
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

  Widget _buildSubmitButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          ref.listen(authControllerProvider.select((val) => val.value!.signup), (
            prev,
            next,
          ) {
            if (next is AsyncData) {
              // context.router.replaceAll([HomeRoute(child:LayoutScreen() )]);
              context.push(GoRoutes.verifyOtp);

              // Navigator.of(context).pop();
              // context.maybePop().then((_) {
              // _showDialog();
              // });
            } else if (next is AsyncError) {
              showErrorDialog(context, next!.error.toString());
            }
          });

          final asyncLogin = ref.watch(
            authControllerProvider.select((val) => val.value!.signup),
          );
          if (asyncLogin is AsyncLoading) {
            return const FadeCircleLoadingIndicator();
          }

          return ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                FocusScope.of(context).unfocus();
                ref
                    .read(authControllerProvider.notifier)
                    .signup(email: _email, username: _userName!);
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
      title: context.tr('createAccountWelcomeBack'),
      icon: Assets.icons.markIcon.svg(),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AuthButton(
        onPressed: () => context.pushReplacement(GoRoutes.login),
        // context.replaceRoute(const LoginRoute()),
        text: context.tr('login'),
      ),
    );
  }

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
