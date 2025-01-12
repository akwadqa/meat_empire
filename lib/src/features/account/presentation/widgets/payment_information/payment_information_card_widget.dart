import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/string_extension.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class PaymentInformationCardWidget extends StatelessWidget {
  final String name;
  final String cardNumber;
  final DateTime endDate;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentInformationCardWidget({
    super.key,
    required this.isSelected,
    required this.onTap,
    required this.name,
    required this.cardNumber,
    required this.endDate,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 90,
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
          trailing: Assets.icons.trashIcon
              .svg(
                color: AppColors.primary,
              )
              .onlyPadding(bottom: 30),
          leading: Assets.icons.cashStackIcon
              .svg(
                color: isSelected ? AppColors.black900 : AppColors.black900,
              )
              .onlyPadding(bottom: 30),
          title: Text(name,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: AppColors.black900,
                    fontSize: 16,
                    // fontWeight: FontWeight.w600,
                  )),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              6.verticalSpace,
              Text(cardNumber.toCardNumberFormat(),
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: AppColors.black900,
                        fontSize: 14,
                        // fontWeight: FontWeight.w600,
                      )),
              2.verticalSpace,
              Text(
                  "${context.tr("end_date")}: ${DateFormat('d/M/yyyy').format(endDate)}",
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: AppColors.black900,
                        fontSize: 14,
                        // fontWeight: FontWeight.w600,
                      )),
            ],
          ),
        ).centered(),
      ).onlyPadding(bottom: 14),
    );
  }
}
