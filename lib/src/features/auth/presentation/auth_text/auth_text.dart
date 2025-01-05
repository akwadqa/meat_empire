import 'package:flutter/material.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class AuthText extends StatelessWidget {
  const AuthText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.black800));
  }
}
