import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class AddressBookCardWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const AddressBookCardWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.lightGray,
            width: 1,
          ),
        ),
        child: ListTile(
          trailing: InkWell(
            onTap: () {
              onTap();
            },
            child: Assets.icons.editIcon.svg(
              color: AppColors.grey600,
            ),
          ),
          leading: Assets.icons.locationIcon.svg(
            color: isSelected ? AppColors.primary : AppColors.black900,
          ),
          title: Text(context.tr(title),
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: AppColors.black900,
                    fontSize: 14,
                  )),
        ).centered(),
      ).onlyPadding(bottom: 14),
    );
  }
}
