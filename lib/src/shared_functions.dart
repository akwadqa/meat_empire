import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/auth/application/auth_service.dart';
import 'package:meat_empire/src/routing/new_router/go_routes.dart';
import 'package:meat_empire/src/shared_widgets/custom_button_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import 'theme/app_colors.dart';

Future<void> showCustomDialog({
  required BuildContext context,
  required String title,
  required Widget icon,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 300, // Replace with appropriate fixed or dynamic size
            maxHeight: 400,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 25,
            ), //30v , 50h
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon,
                const SizedBox(height: 28),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.displayLarge!.copyWith(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

// showErrorDialog(BuildContext context, String message) {
//   return showCustomDialog(
//     context: context,
//     title: message,
//     icon: Icon(
//       Icons.error,
//       color: AppColors.darkRed,
//       size: 50,
//     ),
//   );
// }

Future<void> showUpdateDialog(
  BuildContext context,
  String title,
  String message,
  String? url,
  bool isRequired,
) async {
  await showDialog(
    context: context,
    barrierDismissible: !isRequired,
    builder: (_) {
      final theme = Theme.of(context);

      return WillPopScope(
        onWillPop: () async => !isRequired,
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: Text(
            title.tr(),
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          content: Text(
            message.tr(),
            style: theme.textTheme.bodyMedium?.copyWith(
              height: 1.5,
              color: theme.colorScheme.onSurface.withOpacity(0.8),
            ),
          ),
          actionsPadding: const EdgeInsets.only(bottom: 8, right: 8, left: 8),
          actionsAlignment: MainAxisAlignment.spaceBetween,
          actions: [
              Row(
                children: [
            if (!isRequired)

                  Expanded(
                    child: CustomButtonWidget(
                      text: 'later',
                      backgroundColor: Colors.transparent,
                      color: AppColors.black900,
                      isFiled: false,
                      height: 45,
                      radius: 10,
                      width: double.infinity,
                      onTap: () => Navigator.of(context).pop(),
                    ),
                  ),
                              const SizedBox(width: 12),
                              Expanded(
                  child: CustomButtonWidget(
                    text: 'update',
                    backgroundColor: AppColors.primary,
                    color: AppColors.offWhite,
                    isFiled: true,
                    height: 45,
                    width: double.infinity/2,
                    radius: 10,
                    onTap: () async {
                      if (url == null) return;
                      final uri = Uri.parse(url);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri, mode: LaunchMode.externalApplication);
                      } else {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(tr('could_not_open_link'))),
                          );
                        }
                      }
                    },
                  ),
                              ),
                ],
              ),
          ],
        ),
      );
    },
  );
}

Future<void> showDeleteSccountNotice(BuildContext context, WidgetRef ref) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return showYesNowChoicesDialog(
        context,
        title: "delete_account_title",
        dsc: "delete_account_dsc",
        yesButton: () async {
          await ref.read(userDataProvider.notifier).markAsDeleted();
          context.pushReplacement(GoRoutes.login);
        },
      );
    },
  );
}

Dialog showYesNowChoicesDialog(
  BuildContext context, {
  required String title,
  required String dsc,
  required VoidCallback yesButton,
  VoidCallback? noButton,
}) {
  return Dialog(
    insetPadding: EdgeInsets.symmetric(horizontal: 20),
    backgroundColor: Colors.white.withOpacity(0.99),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        40.verticalSpace,

        Text(
          title.tr(),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            // color: Colors.grey,
          ),
        ).centered(),

        40.verticalSpace,

        Text(
          dsc.tr(),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 14,
            color: AppColors.darkGray,
            fontWeight: FontWeight.w500,
          ),
        ),

        40.verticalSpace,

        // **Pay Button**
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: CustomButtonWidget(
                text: context.tr("yes"),
                onTap: yesButton,
                backgroundColor: AppColors.black800,
                isFiled: true,
                height: 45,
                radius: 12,
                width: MediaQuery.sizeOf(context).width,
              ),
            ),
            20.horizontalSpace,
            Flexible(
              child: CustomButtonWidget(
                text: context.tr("no"),
                onTap:
                    noButton ??
                    () {
                      Navigator.pop(context);
                    },
                color: AppColors.black900,
                isFiled: false,
                // borderColor: AppColors.darkGray,
                height: 45,
                radius: 12,
                width: MediaQuery.sizeOf(context).width,
              ),
            ),
          ],
        ),
      ],
    ).symmetricPadding(horizontal: 20, vertical: 25),
  );
}

showErrorDialog(BuildContext context, String message) {
  return showCustomDialog(
    context: context,
    title: message,
    icon: Icon(Icons.error, color: AppColors.darkRed, size: 50),
  );
}

void showOutOfStockDialog(BuildContext context, String message) {
  showCustomDialog(
    context: context,
    title: message,
    icon: Assets.images.meatMessage.image(
      fit: BoxFit.contain,
      height: 150,
      width: 150,
    ),
  );
}

Future<void> showLanguageDialog({
  required BuildContext context,
  required String currentLanguage,
  required Function(String newLanguage) onLanguageChange,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.sizeOf(context).width,
            maxHeight: 200,
            // minHeight: 130,
            minWidth: MediaQuery.sizeOf(context).width - 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  if (currentLanguage != 'ar') {
                    onLanguageChange('ar');
                    Navigator.of(context).pop();
                  }
                },
                child: Container(
                  height: 65,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: currentLanguage == 'ar'
                        ? AppColors.lightGray
                        : Colors.transparent,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'العربية',
                      style: Theme.of(context).textTheme.displayMedium!
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (currentLanguage != 'en') {
                    onLanguageChange('en');
                    Navigator.of(context).pop();
                  }
                },
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                    color: currentLanguage == 'en'
                        ? AppColors.lightGray
                        : Colors.transparent,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'English',
                      style: Theme.of(context).textTheme.displayMedium!
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
