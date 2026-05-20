import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:queen_validators/queen_validators.dart';

import '../../../../theme/app_colors.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({super.key, this.onSaved});
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Text(
          "${context.tr("email")}  ( ${context.tr("optional")} )",
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 15),
        ),
        TextFormField(
          style: TextStyle(color: AppColors.gray02),
          decoration: InputDecoration(labelText: context.tr('email')),
          textInputAction: TextInputAction.next,
          // validator: qValidator([
          // IsRequired(context.tr('required')),
          // IsEmail(context.tr('emailValidatorMessage')),
          // ]),
          keyboardType: TextInputType.emailAddress,
          onSaved: onSaved,
        ),
      ],
    );
  }
}
