import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/features/auth/presentation/auth_button/auth_button.dart';
import 'package:meat_empire/src/features/auth/presentation/email_text_form_field/email_text_form_field.dart';
import 'package:meat_empire/src/features/auth/presentation/auth_controller/auth_controller.dart';
import 'package:meat_empire/src/features/auth/presentation/login_screen/login_page_number_field.dart';
import 'package:meat_empire/src/features/auth/presentation/password_text_field/password_text_field.dart';
import 'package:meat_empire/src/features/auth/presentation/verify_otp_screen/verification_screen_pin.dart';
import 'package:meat_empire/src/features/auth/presentation/verify_otp_screen/verification_screen_timer.dart';
import 'package:meat_empire/src/features/home/presentation/layout_screen/layout_screen.dart';

import 'package:meat_empire/src/routing/new_router/go_routes.dart';
import 'package:meat_empire/src/shared_widgets/fade_circle_loading_indicator.dart';
import 'package:meat_empire/src/shared_widgets/app_logo.dart';
import '../../../../shared_functions.dart';
import '../auth_text/auth_text.dart';

@RoutePage()
class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  // String? _email;

  // String? _password;

  final _formKey = GlobalKey<FormState>();

  late TextEditingController _fullPhoneController;

  initState() {
    super.initState();
    _fullPhoneController = TextEditingController();
  }

  dispose() {
    _fullPhoneController.dispose();
    super.dispose();
  }

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
                54.verticalSpace,
                Assets.images.loginImage.svg(),
                54.verticalSpace,
                VerificationScreenPin(
                  controller: _fullPhoneController,
                  // onSaved: (v) {
                  //   controller.setText(v ?? "99");
                  //   setState(() {});
                  // },
                ),
                // 12.verticalSpace,

                // VerificationScreenTimer(),
                24.verticalSpace,
                SizedBox(
                  width: double.infinity,
                  child: Consumer(
                    builder: (BuildContext context, WidgetRef ref, Widget? child) {
                      ref.listen(authControllerProvider, (prev, next) {
                        if (next is AsyncData) {
                          if (context.mounted) {
                            // if (next.value!.isAuthenticated) {
                            // context.go(GoRoutes.home);
                            // } else {
                            // context.push(GoRoutes.signup);
                            // }
                            // context.router.replaceAll([HomeRoute(child:LayoutScreen() )]);

                            if (Navigator.of(context).canPop()) {
                              Navigator.of(context).pop();
                              _showDialog();
                            } else {
                              _showDialog();
                            }
                            context.go(GoRoutes.home);
                          }
                        } else if (next is AsyncError) {
                          if (context.mounted) {
                            showErrorDialog(context, next.error.toString());
                          }
                        }
                      });
                      // final isVisible = ref
                      //     .watch(authControllerProvider)
                      //     .value!
                      //     .isResendButtonVisible;

                      // ref.listen(authControllerProvider, (prev, next) {
                      //   if (next is AsyncData) {
                      //     if (context.mounted) {
                      //       if (next.value!.isAuthenticated) {
                      //         // context.pushReplacement(GoRoutes.home);
                      //         // context.router.replaceAll([HomeRoute(child:LayoutScreen() )]);
                      //       } else {
                      //         context.push(GoRoutes.signup);
                      //       }
                      //       // context.pushReplacement(GoRoutes.home);
                      //       // context.router.replaceAll([HomeRoute(child:LayoutScreen() )]);

                      //       // if (Navigator.of(context).canPop()) {
                      //       //   Navigator.of(context).pop();
                      //       //   _showDialog();
                      //       // } else {
                      //       //   _showDialog();
                      //       // }
                      //     }
                      //   } else if (next is AsyncError) {
                      //     if (context.mounted) {
                      //       showErrorDialog(context, next.error.toString());
                      //     }
                      //   }
                      // });

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
                                .verifyOTp(otpCode: _fullPhoneController.text);
                          }
                        },
                        child: Text(context.tr('verify')),
                      );
                    },
                  ),
                ),
                24.verticalSpace,
                // AuthText(text: context.tr('dontHaveAccount')),
                // 16.verticalSpace,
                // SizedBox(
                //   width: double.infinity,
                //   child: AuthButton(
                //     onPressed: () => context.pushReplacement(GoRoutes.signup),
                //     text: context.tr('createAccount'),
                //   ),
                // ),
                // 54.verticalSpace,
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
