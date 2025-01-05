import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/localization/current_language.dart';
import 'package:meat_empire/src/theme/app_theme.dart';

import 'routing/app_router_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final currentLanguage = ref.watch(currentLanguageProvider(context));
    return MaterialApp.router(
      routerDelegate: appRouter.delegate(
          deepLinkBuilder: (deepLink) => DeepLink.defaultPath),
      routeInformationParser: appRouter.defaultRouteParser(),
      theme: ref.watch(appThemeProvider),
      onGenerateTitle: (context) => context.tr('appTitle'),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: Locale(currentLanguage),
    );
  }
}
