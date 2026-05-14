import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart'; // Ensure this is imported
import 'package:meat_empire/src/features/account/presentation/widgets/account_cards.dart';
import 'package:meat_empire/src/routing/new_router/go_routes.dart';
import 'package:meat_empire/src/shared_widgets/custom_button_widget.dart';
import 'package:meat_empire/src/localization/current_language.dart';

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
          _buildHeader(context),
          _buildButtonsSection(context),
          _buildLanguageSection(
            context,
            currentLanguage,
            currentLanguageNotifier,
          ),
          // const Spacer(),
        ],
      ),
    );
  }

  /// **Header Section - Contains All Text Widgets**
  Widget _buildHeader(BuildContext context) {
    return Column(
      children: [
        Text(
          context.tr("welcome_message"),
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
            fontSize: 22,
            fontWeight: FontWeight.w800,
          ),
        ).onlyPadding(top: 40),
        Text(
          "Meat Empire",
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: AppColors.primary,
          ),
        ).onlyPadding(top: 2),
        Text(
          context.tr("access_auth_message"),
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            height: 1,
          ),
        ).onlyPadding(top: 40),
      ],
    );
  }

  /// **Buttons Section - Contains Login & Signup Buttons**
  Widget _buildButtonsSection(BuildContext context) {
    return Column(
      children: [
        CustomButtonWidget(
          text: context.tr("login"),
          backgroundColor: AppColors.primary,
          onTap: () => context.push(GoRoutes.login),
          isFiled: true,
          topPading: 50,
          height: 50,
          width: 300,
        ).onlyPadding(top: 50),
        50.verticalSpace,
        CustomButtonWidget(
          text: context.tr("createAccount"),
          color: AppColors.grey600,
          backgroundColor: Colors.white,
          onTap: () => context.go(GoRoutes.signup),
          isFiled: false,
          topPading: 20,
          height: 50,
          width: 300,
        )
      ],
    );
  }

  /// **Language Section - Contains Change Language Card**
  Widget _buildLanguageSection(
    BuildContext context,
    String currentLanguage,
    CurrentLanguage notifier,
  ) {
    return AccountCardsWidget(
      title: "change_Language",
      icon: Assets.icons.translateIcon.svg(),
      onTap: () {
        final newLanguage = currentLanguage == 'ar' ? 'en' : 'ar';
        debugPrint("Switching Language: $newLanguage");
        notifier.changeLanguage(context, newLanguage);
      },
    ).onlyPadding(top: 70, bottom: 70);
  }
}
