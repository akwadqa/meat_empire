import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/core/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/account_cards.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/logout_button_widget.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

@RoutePage()
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          50.verticalSpace,
          Text('Account Name',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w800)),
          30.verticalSpace,
          AccountCardsWidget(
              title: "edit_account_information",
              icon: Assets.icons.circulePersonIcon),
          AccountCardsWidget(
              title: "change_password", icon: Assets.icons.shieldLockIcon),
          AccountCardsWidget(
              title: "address_book", icon: Assets.icons.cardChecklistIcon),
          AccountCardsWidget(
              title: "payment_information", icon: Assets.icons.cashStackIcon),
          AccountCardsWidget(title: "my_orders", icon: Assets.icons.orderIcon),
          LogoutButtonWidget(),
        ]),
      ),
    );
  }
}
