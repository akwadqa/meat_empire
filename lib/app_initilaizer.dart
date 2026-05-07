// import 'package:ahtizam/firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meat_empire/src/constants/services_urls.dart';
import 'package:meat_empire/src/shared_widgets/main_error_widget.dart';
import 'package:meat_empire/src/utils/deep_link_services.dart';

import 'firebase_options.dart';
import 'src/core/notifications/services/notification_service.dart';
import 'src/features/auth/application/auth_service.dart';
import 'src/riverpod_observer.dart';

abstract class AppInitializer {
  static Future<void> init() async {
    //-- Flutter init --
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

    // -- FIREBASE INIT -- //
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // -- Initialize Notifications -- //
    // final container = ProviderContainer();
    // await container.read(notificationServiceProvider).initialize();

    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    ErrorWidget.builder = (FlutterErrorDetails details) {
      return ErrorPage(details: details);
    };
    //-- Localization init  --
    await EasyLocalization.ensureInitialized();
  }
}

Future<ProviderContainer> initializeProviders() async {
  final container = ProviderContainer(observers: [RiverpodObserver()]);
  await container.read(sharedPreferencesProvider.future);
  // await container.read(localStorageServiceProvider).init();
  // ? INIT FIREBASE NOTIFICATION SERVICE

  await container.read(notificationsServiceProvider).init();

  // -- Deep Links Init -- //
  await container.read(deepLinkServiceProvider).initDeepLinks();
  
  //   FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  // analytics.setAnalyticsCollectionEnabled(true);
  return container;
}

Future<void> handleSplashScreen(ProviderContainer container) async {
  const minSplashDuration = 2000;
  final startTime = DateTime.now();
  // await container.read(homeProvider.future);
  final loadDuration = DateTime.now().difference(startTime).inMilliseconds;

  if (loadDuration < minSplashDuration) {
    await Future.delayed(
      Duration(milliseconds: minSplashDuration - loadDuration),
    );
  }

  FlutterNativeSplash.remove();
}
