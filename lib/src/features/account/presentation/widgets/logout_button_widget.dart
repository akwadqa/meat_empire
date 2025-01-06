import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/core/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class LogoutButtonWidget extends StatefulWidget {
  const LogoutButtonWidget({super.key});

  @override
  State<LogoutButtonWidget> createState() => _LogoutButtonWidgetState();
}

class _LogoutButtonWidgetState extends State<LogoutButtonWidget>
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
    return GestureDetector(
        onTap: () {
          _controller.forward().then((_) {
            _controller.reverse();
          });
        },
        child: ScaleTransition(
          scale: _tween.animate(
            CurvedAnimation(
              parent: _controller,
              curve: Curves.easeOut,
              reverseCurve: Curves.easeIn,
            ),
          ),
          child: Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              border: Border.all(
                width: 1,
                color: AppColors.primary,
              ),
            ),
            child: Center(
              child: Text(context.tr("logout"),
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
            ),
          ).centered().onlyPadding(top: 80),
        ));
  }
}
