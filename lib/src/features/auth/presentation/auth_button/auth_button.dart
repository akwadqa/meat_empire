import 'package:flutter/material.dart';

import '../../../../theme/app_colors.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.text, this.onPressed});

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: AppColors.black900,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColors.black900),
                borderRadius: BorderRadius.circular(50))),
        onPressed: onPressed,
        child: Text(text));
  }
}
