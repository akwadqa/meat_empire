import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class LocationFieldCheckboxWidget extends FormField<int> {
  LocationFieldCheckboxWidget({
    Key? key,
    String? labelText,
    required BuildContext context,
    FormFieldSetter<int>? onSaved,
    FormFieldValidator<int>? validator,
    Function(String? value)? onFieldSubmitted,
    int initialValue = 2, // Default to no selection
    required List<Map<String, dynamic>> locations,
  }) : super(
          key: key,
          initialValue: initialValue,
          onSaved: onSaved,
          validator: validator,
          builder: (FormFieldState<int> state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (labelText != null) ...[
                  Text(
                    labelText,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 14),
                  ),
                  4.verticalSpace,
                ],
                Wrap(
                  spacing: 12, // Space between chips
                  runSpacing: 10,
                  // Space between rows
                  children: List.generate(locations.length, (index) {
                    final isSelected = index == state.value;

                    return GestureDetector(
                      onTap: () {
                        // Update the FormField state
                        state.didChange(index);
                        state.save();
                        onFieldSubmitted?.call(locations[index]['value']);
                      },
                      child: Chip(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: BorderSide(
                                color: isSelected
                                    ? AppColors.primary
                                    : AppColors.lightGray,
                                width: 1)),
                        backgroundColor: isSelected
                            ? AppColors.primarySwatch[50]
                            : Colors.transparent,
                        label: Text(locations[index]['name'].toString().tr(),
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                  color: AppColors.black900,
                                  fontSize: 14,
                                )),
                        avatar: Icon(
                          locations[index]['icon'],
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    );
                  }),
                ),
                if (state.hasError)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      state.errorText ?? '',
                      style: TextStyle(color: AppColors.primary, fontSize: 12),
                    ),
                  ),
              ],
            );
          },
        );
}
