import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/account_cards.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/custom_button_widget.dart';
import 'package:meat_empire/src/localization/current_language.dart';
import 'package:meat_empire/src/routing/app_router.gr.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

@RoutePage()
class NotAuthMainAccountScreen extends ConsumerWidget {
  const NotAuthMainAccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLanguage = ref.watch(currentLanguageProvider);

    final currentLanguageNotifier = ref.read(currentLanguageProvider.notifier);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          40.verticalSpace,
          Text(context.tr("welcome_message"),
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 22, fontWeight: FontWeight.w800)),
          2.verticalSpace,
          Text("Meat Empire",
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primary,
                  )),
          40.verticalSpace,
          Text(context.tr("access_auth_message"),
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1,
                  )),
          60.verticalSpace,
          CustomButtonWidget(
              text: context.tr("login"),
              backgroundColor: AppColors.primary,
              onTap: () {
                // Navigate to login screen
                context.pushRoute(LoginRoute());
              },
              isFiled: true,
              topPading: 50,
              height: 50,
              width: 300),
          CustomButtonWidget(
              text: context.tr("createAccount"),
              color: AppColors.grey600,
              backgroundColor: Colors.white,
              onTap: () {
                // Navigate to login screen
                context.pushRoute(SignupRoute());
              },
              isFiled: false,
              topPading: 20,
              height: 50,
              width: 300),
          70.verticalSpace,
          AccountCardsWidget(
            title: "change_Language",
            icon: Assets.icons.translateIcon.svg(),
            onTap: () {
              final newLanguage = currentLanguage == 'ar' ? 'en' : 'ar';
              debugPrint(newLanguage);
              debugPrint(currentLanguage);
              currentLanguageNotifier.changeLanguage(context, newLanguage);
            },
          ),
          Spacer()
        ],
      ),
    );
  }
}
