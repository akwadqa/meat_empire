import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';

import '../../../../theme/app_colors.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({super.key, this.onSaved});
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: AppColors.mediumGray01),
      decoration: InputDecoration(
        labelText: context.tr('email'),
      ),
      textInputAction: TextInputAction.next,
      validator: qValidator([
        IsRequired(context.tr('required')),
        IsEmail(context.tr('emailValidatorMessage'))
      ]),
      keyboardType: TextInputType.emailAddress,
      onSaved: onSaved,
    );
  }
}
