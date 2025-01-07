import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class AccountCardsWidget extends StatelessWidget {
  final String title;
  final SvgGenImage icon;
  final VoidCallback onTap;
  const AccountCardsWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              // margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: icon.svg(
                  color: AppColors.black900,
                ),
                title: Text(context.tr(title),
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: AppColors.black900,
                          fontSize: 14,
                        )),
              ).centered())
          .onlyPadding(bottom: 14),
    );
  }
}
