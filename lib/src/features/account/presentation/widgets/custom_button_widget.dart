import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class CustomButtonWidget extends StatefulWidget {
  final String text;
  final Color? backgroundColor;
  final Color? color;
  final VoidCallback onTap;
  final bool isFiled;
  final double height;
  final double width;
  final double? radius;
  final double? topPading;
  const CustomButtonWidget({
    super.key,
    required this.text,
    this.backgroundColor,
    this.color,
    required this.onTap,
    required this.isFiled,
    required this.height,
    required this.width,
    this.radius,
    this.topPading,
  });

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget>
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
              padding: EdgeInsets.zero,
              backgroundColor: widget.backgroundColor ?? Colors.transparent,
              foregroundColor: AppColors.black900,
              fixedSize: Size(
                widget.width,
                widget.height,
              ),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: widget.color ??
                          widget.backgroundColor ??
                          Colors.transparent),
                  borderRadius: BorderRadius.circular(widget.radius ?? 25))),
          onPressed: () {
            _controller.forward().then((_) {
              _controller.reverse();
              widget.onTap();
            });
          },
          child: Text(context.tr(widget.text),
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 16,
                      color: widget.isFiled ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500))
              .centered(),
        )).onlyPadding(top: widget.topPading ?? 0);
  }
}
