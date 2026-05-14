import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../theme/app_colors.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Assets.images.logo.image(),
        SizedBox(width: 8),
        // Text('MEAT EMPIRE',
        Text('meat_empire'.tr(),
            style: TextStyle(
                color: AppColors.primary,
                fontSize: 20,
                fontWeight: FontWeight.bold))
      ],
    );
  }
}
