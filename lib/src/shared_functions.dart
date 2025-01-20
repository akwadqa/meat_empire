import 'package:flutter/material.dart';

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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 300, // Replace with appropriate fixed or dynamic size
            maxHeight: 400,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon,
                const SizedBox(height: 28),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 22),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

showErrorDialog(BuildContext context, String message) {
  return showCustomDialog(
    context: context,
    title: message,
    icon: const Icon(
      Icons.error,
      color: Colors.red,
      size: 50,
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
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
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15)),
                  ),
                  child: Center(
                    child: Text('العربية',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                ),
              ),
              // 15.verticalSpace,
              GestureDetector(
                onTap: () {
                  if (currentLanguage != 'en') {
                    onLanguageChange('en');
                    Navigator.of(context).pop();
                  }
                },
                child: Container(
                  height: 65,
                  // padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: currentLanguage == 'en'
                        ? AppColors.lightGray
                        : Colors.transparent,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(15)),
                  ),
                  child: Center(
                    child: Text('English',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontSize: 16, fontWeight: FontWeight.w500)),
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
