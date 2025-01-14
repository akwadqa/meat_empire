import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/account/presentation/account_screen/account_screen.dart';
import 'package:meat_empire/src/features/account/presentation/account_screen/not_auth_account_screen.dart';
import 'package:meat_empire/src/features/account/presentation/controller/account_controller.dart';
import 'package:meat_empire/src/features/auth/application/auth_service.dart';
import 'package:meat_empire/src/shared_widgets/app_error_widget.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

@RoutePage()
class MainAccountScreen extends ConsumerWidget {
  final TextEditingController nameContoller = TextEditingController();
  final TextEditingController phoneContoller = TextEditingController();
  MainAccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncAccountData = ref.watch(accountControllerProvider);
    return Scaffold(
        extendBody: true,
        backgroundColor: AppColors.lightGray,
        body: !ref.watch(isAuthinticatedProvider)
            ? NotAuthMainAccountScreen()
            : asyncAccountData.when(
                data: (data) {
                  debugPrint("DATA IS ${data.userProfile.userId}");
                  // Set the fetched profile into the ProfileNotifier
                  // Use Future.microtask to update the profile after the widget build phase
                  // Future.microtask(() {
                  //   ref
                  //       .read(profileNotifierProvider.notifier)
                  //       .setProfile(data.userProfile);
                  // });

                  return AccountScreen(
                    userProfile: data.userProfile,
                  );
                },
                error: (_, __) => const AppErrorWidget(),
                loading: () => const LinearProgressIndicator(
                  color: AppColors.darkRed,
                ),
              ));
  }
}
