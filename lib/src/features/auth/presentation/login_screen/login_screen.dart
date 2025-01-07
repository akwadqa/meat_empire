import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/features/auth/presentation/auth_button/auth_button.dart';
import 'package:meat_empire/src/features/auth/presentation/email_text_form_field/email_text_form_field.dart';
import 'package:meat_empire/src/features/auth/presentation/auth_controller/auth_controller.dart';
import 'package:meat_empire/src/features/auth/presentation/password_text_field/password_text_field.dart';
import 'package:meat_empire/src/routing/app_router.gr.dart';
import 'package:meat_empire/src/shared_widgets/fade_circle_loading_indicator.dart';
import 'package:meat_empire/src/shared_widgets/app_logo.dart';
import '../../../../shared_functions.dart';
import '../auth_text/auth_text.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? _email;

  String? _password;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppLogo(),
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
                SizedBox(height: 54),
                Assets.images.loginImage.svg(),
                SizedBox(height: 54),
                EmailTextFormField(onSaved: (value) => _email = value),
                SizedBox(height: 20),
                PasswordTextField(
                    label: context.tr('password'),
                    onSaved: (value) => _password = value),
                SizedBox(height: 54),
                SizedBox(
                    width: double.infinity,
                    child: Consumer(builder:
                        (BuildContext context, WidgetRef ref, Widget? child) {
                      ref.listen(authControllerProvider, (prev, next) {
                        if (next is AsyncData) {
                          context.maybePop().then((_) {
                            _showDialog();
                          });
                        }
                      });
                      final asyncLogin = ref.watch(authControllerProvider);
                      if (asyncLogin is AsyncLoading) {
                        return FadeCircleLoadingIndicator();
                      }
                      return ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              ref
                                  .read(authControllerProvider.notifier)
                                  .login(_email!, _password!);
                            }
                          },
                          child: Text(context.tr('login')));
                    })),
                SizedBox(height: 24),
                AuthText(text: context.tr('dontHaveAccount')),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: AuthButton(
                      onPressed: () => context.replaceRoute(SignupRoute()),
                      text: context.tr('createAccount')),
                ),
                SizedBox(height: 54),
              ],
            ),
          ),
        ),
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
}
