import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/core/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/core/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class AccountCardsWidget extends StatelessWidget {
  final String title;
  final SvgGenImage icon;
  const AccountCardsWidget(
      {super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      // margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon.svg(
            color: AppColors.black900,
          ),
          10.horizontalSpace,
          Text(context.tr(title),
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: AppColors.black900,
                    fontSize: 14,
                  )),
        ],
      ),
    ).onlyPadding(bottom: 14);
  }
}
