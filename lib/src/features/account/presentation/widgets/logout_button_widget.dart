import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/auth/application/auth_service.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class LogoutButtonWidget extends ConsumerWidget {
  const LogoutButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: AppColors.black900,
          fixedSize: Size(300, 50),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: AppColors.primary),
              borderRadius: BorderRadius.circular(50))),
      onPressed: () {
        ref.read(userDataProvider.notifier).removeData();
        
      },
      child: Text(context.tr("logout"),
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              )),
    ).centered();
  }
}
