import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/account_cards.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/adress_book/address_book_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/change_password_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/edit_account_information_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/logout_button_widget.dart';
import 'package:meat_empire/src/shared_functions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

@RoutePage()
class AccountScreen extends StatelessWidget {
  final TextEditingController nameContoller = TextEditingController();
  final TextEditingController phoneContoller = TextEditingController();
  AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.lightGray,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            50.verticalSpace,
            Text('Account Name',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w800)),
            30.verticalSpace,
            AccountCardsWidget(
              title: "edit_account_information",
              icon: Assets.icons.circulePersonIcon,
              onTap: () {
                nameContoller.text = "Mouaz";
                phoneContoller.text = "93552112";
                showEditAccountInformationDialog(
                  context: context,
                  nameController: nameContoller,
                  phoneController: phoneContoller,
                );
              },
            ),
            AccountCardsWidget(
              onTap: () {
                showChangePasswordDialog(context: context);
              },
              title: "change_password",
              icon: Assets.icons.shieldLockIcon,
            ),
            AccountCardsWidget(
              onTap: () {
                showAddressBookDialog(context: context);
              },
              title: "address_book",
              icon: Assets.icons.cardChecklistIcon,
            ),
            AccountCardsWidget(
              onTap: () {},
              title: "payment_information",
              icon: Assets.icons.cashStackIcon,
            ),
            AccountCardsWidget(
              title: "my_orders",
              icon: Assets.icons.orderIcon,
              onTap: () {},
            ),
            LogoutButtonWidget(),
          ]),
        ),
      ),
    );
  }
}
