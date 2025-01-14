import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:queen_validators/queen_validators.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, required this.label, this.onSaved});

  final String label;
  final void Function(String?)? onSaved;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      style: TextStyle(color: AppColors.gray02),
      decoration: InputDecoration(
          labelText: widget.label,
          suffixIcon: IconButton(
              onPressed: () => setState(() {
                    _obscureText = !_obscureText;
                  }),
              style:
                  IconButton.styleFrom(foregroundColor: AppColors.gray02),
              icon: Icon(_obscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined))),
      textInputAction: TextInputAction.done,
      validator: qValidator([
        IsRequired(context.tr('required')),
      ]),
      keyboardType: TextInputType.visiblePassword,
      onSaved: widget.onSaved,
    );
  }
}
