import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/account_cards.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/adress_book/address_book_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/change_password_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/edit_account_information_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/logout_button_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/payment_information/payment_information_widget.dart';

@RoutePage()
class AccountScreen extends ConsumerWidget {
  final UserProfile userProfile;
  final TextEditingController nameContoller = TextEditingController();
  final TextEditingController phoneContoller = TextEditingController();
  AccountScreen({super.key, required this.userProfile});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          50.verticalSpace,
          Text(userProfile.firstname,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w800)),
          30.verticalSpace,
          AccountCardsWidget(
            title: "edit_account_information",
            icon: Assets.icons.circulePersonIcon,
            onTap: () {
              nameContoller.text = userProfile.firstname;
              phoneContoller.text = userProfile.phone;
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
            onTap: () {
              showPaymentInformationDialog(context: context);
            },
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
    );
  }
}
