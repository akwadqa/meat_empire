import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class NotesFieldWidget extends StatefulWidget {
  final Function(String) onChange;

  const NotesFieldWidget({super.key, required this.onChange});

  @override
  State<NotesFieldWidget> createState() => _NotesFieldWidgetState();
}

class _NotesFieldWidgetState extends State<NotesFieldWidget> {
  final TextEditingController _notesController = TextEditingController();

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "notes".tr(),
          style:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 16),
        ).onlyPadding(start: 12),
        8.verticalSpace,
        TextField(
          controller: _notesController,
          decoration: InputDecoration(
            hintText: 'notes_msg'.tr(),
            hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: AppColors.gray02,
                  fontSize: 14,
                ),
          ),
          autofocus: false,
          keyboardType: TextInputType.multiline,
          minLines: 4,
          maxLines: 20,
          maxLength: 1000,
          onChanged: (value) {
            widget.onChange(value);
          },
          onEditingComplete: () {
            FocusScope.of(context).unfocus(); // Dismiss keyboard on completion
          },
        ).symmetricPadding(horizontal: 12),
      ],
    );
  }
}
