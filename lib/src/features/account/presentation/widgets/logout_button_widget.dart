import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/auth/application/auth_service.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class LogoutButtonWidget extends ConsumerStatefulWidget {
  const LogoutButtonWidget({super.key});

  @override
  ConsumerState<LogoutButtonWidget> createState() => _LogoutButtonWidgetState();
}

class _LogoutButtonWidgetState extends ConsumerState<LogoutButtonWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _animationDuration = const Duration(milliseconds: 300);
  final Tween<double> _tween = Tween<double>(begin: 1.0, end: 0.95);
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: _animationDuration,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _tween.animate(
        CurvedAnimation(
          parent: _controller,
          curve: Curves.easeOut,
          reverseCurve: Curves.easeIn,
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: AppColors.black900,
            fixedSize: Size(300, 50),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColors.primary),
                borderRadius: BorderRadius.circular(50))),
        onPressed: () {
          _controller.forward().then((_) {
            _controller.reverse();
            ref.read(userTokenProvider.notifier).removeToken();
          });
        },
        child: Text(context.tr("logout"),
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500)),
      ).centered(),
    );
  }
}
