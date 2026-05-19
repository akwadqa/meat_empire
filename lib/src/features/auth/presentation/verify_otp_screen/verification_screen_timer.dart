import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/auth/presentation/auth_controller/auth_controller.dart';

class VerificationScreenTimer extends ConsumerStatefulWidget {
  final String? phone;
  const VerificationScreenTimer({super.key,  this.phone});

  @override
  ConsumerState<VerificationScreenTimer> createState() =>
      _VerificationScreenTimerState();
}

class _VerificationScreenTimerState
    extends ConsumerState<VerificationScreenTimer> {
  late int _remainingSeconds;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
    // _remainingSeconds = 120;
    _remainingSeconds = 60;
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        timer.cancel();
        ref.read(authControllerProvider.notifier).markOtpAsSent();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String get timerText {
    final minutes = (_remainingSeconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (_remainingSeconds % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    // ref.listen(authControllerProvider, (pre, next) {
      // if (next is AsyncData) {
      //   _timer?.cancel();
      //   ref.read(authControllerProvider.notifier).markOtpAsNotSent();
      //   startTimer();
      //   _remainingSeconds = 60;
      // }
    // });

    return Consumer(
      builder: (context, ref, _) {
        //? This for make resend code anvisible when send otp success :
        // ref.listen(authControllerProvider, (prev, next) {
        //   if (next is AsyncData) {
        //     ref.read(authControllerProvider.notifier).markOtpAsSent();
        //   }
        // });

        //? This for visibility of resend button :
        // final isVisible =
        //     ref.watch(signInControllerProvider).value!.isResend ?? false;
        // if (!isVisible) return SizedBox();

        // final notifier = ref.watch(
        //   verifyOtpControllerProvider.select(
        //     (val) => val.value?.signinResponseModel,
        //   ),
        // );
        
        // return isVisible
        //     ? GestureDetector(
        //         onTap: () {
        //           ref
        //               .read(verifyOtpControllerProvider.notifier)
        //               .resendCoe(widget.phone);
        //         },
        //         child: Text(
        //           "resend_otp".tr(),
        //           style: AppTextStyle.rubikRegular14.copyWith(
        //             color: AppColors.primary,
        //             decoration: TextDecoration.underline,
        //             decorationColor: AppColors.primary,
        //           ),
        //         ),
        //       )
        // : Text.rich(
        return Text.rich(
          // style: AppTextStyle.rubikRegular14.copyWith(
          //   color: AppColors.primary,
          // ),
          TextSpan(
            children: [
              TextSpan(text: context.tr('verificationExpired')),
              TextSpan(text: '$timerText '),
              TextSpan(text: context.tr('seconds')),
            ],
          ),
        );
      },
    );
  }
}
