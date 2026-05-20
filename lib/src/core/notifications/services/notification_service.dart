import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/firebase_options.dart';
import 'package:meat_empire/src/constants/keys.dart';
import 'package:meat_empire/src/core/notifications/repositories/notifications_repository.dart';
import 'package:meat_empire/src/features/auth/application/auth_service.dart';
import 'package:meat_empire/src/features/auth/data/auth_repository.dart';
import 'package:meat_empire/src/localization/current_language.dart';
import 'package:meat_empire/src/routing/app_router_provider.dart';
import 'package:meat_empire/src/routing/new_router/go_routes.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:fcm_config/fcm_config.dart';

import '../models/notification_model.dart';

part 'notification_service.g.dart';

enum NotificationType { order, driver, general }

class NotificationsService {
  final Ref _ref;
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  NotificationsService(this._ref);

  Future<void> init() async {
    debugPrint("FCMConfig.instance.init");
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   print("🎯🎯🎯 [URGENT DATA]: ${message.data}");
    //   print("🎯🎯🎯 [URGENT NOTIF]: ${message.notification?.title}");
    // });
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint("========= إشعار في المقدمة (Foreground) =========");
      _printData(message);
    });

    // 2. النقر على الإشعار والتطبيق في "الخلفية" (Background)
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      debugPrint("========= تم النقر على الإشعار من الخلفية =========");
 WidgetsBinding.instance.addPostFrameCallback((_) {
    _navigateToProduct(message);
  });      _printData(message);
    });

    // 3. التطبيق كان "مغلقاً تماماً" (Terminated) وتم فتحه بالنقر على الإشعار
    _checkInitialMessage();

    await FCMConfig.instance.init(
      options: DefaultFirebaseOptions.currentPlatform,

      defaultAndroidChannel: const AndroidNotificationChannel(
        'high_importance_channel',
        'Fcm config',
        importance: Importance.high,
      ),
    );

    await _messaging.requestPermission(alert: true, badge: true, sound: true);
    debugPrint("FCMConfig.instance.init2");
    if (Platform.isIOS) {
      String? apnsToken;

      apnsToken = await _messaging.getAPNSToken();
      await Future.delayed(const Duration(milliseconds: 500));

      debugPrint('APNS Token ready: $apnsToken');
    }
    final token = await _messaging.getToken();
    debugPrint("FCM Token: $token");

   if (token != null) {
    // 🔥 لا تعمل مباشرة
    Future.delayed(const Duration(seconds: 2), () async {
      await subscribeFCMTopics();
    });
  }
  // ✅ كل مرة يتغير التوكن
_messaging.onTokenRefresh.listen((newToken) async {
  debugPrint("🔄 Token refreshed: $newToken");

  await subscribeFCMTopics();
});
    await _initializeLocalNotifications();
    debugPrint("FCMConfig.instance.init3");

    final userId = _ref.read(userDataProvider)?.$2;
    debugPrint(' sending device userId:$userId');

    _messaging.onTokenRefresh.listen((token) {
      debugPrint(' sending device token:$token');

      // _ref
      //     .read(deviceTokenControllerProvider.notifier)
      //     .sendFCMToken(token, userId ?? 0);
    });

    // sendDeviceToken(userId);
  }

  Future<void> _checkInitialMessage() async {
    RemoteMessage? initialMessage = await FirebaseMessaging.instance
        .getInitialMessage();
    if (initialMessage != null) {
      print("========= تم فتح التطبيق من حالة الإغلاق التام =========");
      _printData(initialMessage);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _navigateToProduct(initialMessage);
    });    }
  }

  void _printData(RemoteMessage message) {
    // طباعة العنوان والمحتوى من قسم الـ notification
    print("العنوان (Title): ${message.notification?.title}");
    print("النص (Body): ${message.notification?.body}");

    // طباعة البيانات القادمة من قسم الـ data (التي أرسلها CS-Cart)
    if (message.data.isNotEmpty) {
      print("البيانات القادمة (Data Payload):");
      print("الوقت (time): ${message.data['time']}");
      print("المحتوى المرسل (content): ${message.data['content']}");
      print("المحتوى): ${message.data}");
      // _ref
      //     .read(appRouterProvider)
      //     .goRouter
      //     .go(GoRoutes.productDetails, extra: int.parse(id));
    } else {
      print("تحذير: قسم الـ Data فارغ!");
    }
    print("==================================================");
  }

  void _navigateToProduct(RemoteMessage message) {
    final id = message.data['type_data'];
    if (id != null) {
      try {
        _ref
            .read(appRouterProvider)
            .goRouter
            .pushNamed(
              GoRoutes.productDetails,
              extra: int.parse(id.toString()),
            );
      } catch (e) {
        debugPrint("Error parsing product ID: $e");
      }
    }
  }

  Future<void> setupInteractedMessage(GoRoute appRouter) async {
    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      _handleNotification(message: initialMessage, appRouter: appRouter);
    }

    FirebaseMessaging.onMessageOpenedApp.listen(
      (remoteMessage) =>
          _handleNotification(message: remoteMessage, appRouter: appRouter),
    );

    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  Future<void> sendDeviceToken(int userId) async {
    try {
      final token = await _messaging.getToken();

      if (token != null) {
        debugPrint(' sending device token:$token');

        await _ref
            .read(deviceTokenControllerProvider.notifier)
            .sendFCMToken(token, userId);
      }
    } catch (e, st) {
      debugPrint('Error sending device token: $e\n$st');
    }
  }

  Future<String> myFcmToken() async {
    try {
      final token = await _messaging.getToken();
      debugPrint(' sending device token:$token');
      if (token != null) {
        return token;
      }
      return '';
    } catch (e, st) {
      debugPrint('Error sending device token: $e\n$st');
      return '';
    }
  }

  Future<void> subscribeFCMTopics() async {
    try {
      final platformTopic = Platform.isIOS ? Keys.ios : Keys.android;
      debugPrint('platformTopic, $platformTopic');

      final languageTopic = _ref.read(currentLanguageProvider);
      debugPrint('platformTopic, $platformTopic');
      debugPrint('Subscribed to topics: all,  $languageTopic');

      await FCMConfig.instance.messaging.subscribeToTopic(Keys.all);
      await FCMConfig.instance.messaging.subscribeToTopic(platformTopic);
      await FCMConfig.instance.messaging.subscribeToTopic(languageTopic);

      debugPrint('Subscribed to topics: all, $platformTopic, $languageTopic');
    } catch (e) {
      debugPrint('Error subscribing to topics: $e');
    }
  }

  Future<void> unsubscribeOrdersTopic() async {
    final platformTopic = Platform.isIOS ? Keys.ios : Keys.android;

    await FCMConfig.instance.messaging.unsubscribeFromTopic(platformTopic);
  }

  Future<void> updateLanguageTopic({
    required String oldLang,
    required String newLang,
  }) async {
    try {
      if (oldLang == newLang) return;

      await FCMConfig.instance.messaging.unsubscribeFromTopic(oldLang);
      await FCMConfig.instance.messaging.subscribeToTopic(newLang);

      debugPrint('Language topic updated: $oldLang → $newLang');
    } catch (e) {
      debugPrint('Error updating language topic: $e');
    }
  }

  // Future<void> subscribeOrdersTopic() async =>
  //     _messaging.subscribeToTopic(Keys.orders);

  // Future<void> unsubscribeOrdersTopic() async =>
  //     _messaging.unsubscribeFromTopic(Keys.orders);

  Future<void> _initializeLocalNotifications() async {
    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    // await _localNotifications.initialize(
    //   const InitializationSettings(android: androidSettings, iOS: iosSettings),
    // );
    await _localNotifications.initialize(
      const InitializationSettings(android: androidSettings, iOS: iosSettings),
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        // تحويل الـ payload النصي إلى Map
        if (response.payload != null) {
          final Map<String, dynamic> data = json.decode(response.payload!);
          final String? productId = data['type_data'];
          if (productId != null) {
            // 3. التوجيه لصفحة المنتج
            _ref
                .read(appRouterProvider)
                .goRouter
                .pushNamed(
                  GoRoutes.productDetails,
                  extra: int.parse(productId),
                );
          }

          // هنا يمكنك استدعاء منطق التوجيه الخاص بك
          // مثال:
          // _handleNotification(message: RemoteMessage(data: data), appRouter: yourRouter);
        }
      },
    );

    await _localNotifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(
          const AndroidNotificationChannel(
            'high_importance_channel',
            'High Importance Notifications',
            description: 'This channel is used for important notifications.',
            importance: Importance.high,
          ),
        );
  }

  // Future<void> _handleForegroundMessage(RemoteMessage message) async {
  //   final notification = message.notification;
  //   if (notification != null) {
  //     _localNotifications.show(
  //       notification.hashCode,
  //       notification.title,
  //       notification.body,
  //       NotificationDetails(
  //         android: AndroidNotificationDetails(
  //           'high_importance_channel',
  //           'High Importance Notifications',
  //           channelDescription: 'Important notifications',
  //           importance: Importance.high,
  //           priority: Priority.high,
  //         ),
  //         iOS: const DarwinNotificationDetails(
  //           presentAlert: true,
  //           presentBadge: true,
  //           presentSound: true,
  //         ),
  //       ),
  //       payload: json.encode(message.data),
  //     );
  //   }
  // }

  void _handleNotification({
    required RemoteMessage message,
    required GoRoute appRouter,
  }) {
    debugPrint('Notification tapped: ${message.messageId}');
    final type = _getNotificationType(message.data['type'] ?? 'general');

    switch (type) {
      case NotificationType.order:
        break;
      case NotificationType.driver:
        break;
      case NotificationType.general:
        break;
    }
  }

  static NotificationType _getNotificationType(String type) {
    switch (type) {
      case 'order':
        return NotificationType.order;
      case 'driver':
        return NotificationType.driver;
      default:
        return NotificationType.general;
    }
  }

  Future<void> _handleForegroundMessage(RemoteMessage message) async {
    debugPrint("🚨 [FULL DATA RECEIVED]: ${message.data}");

    // نتحقق من الحقول المتوقع وجودها بناءً على صورة الداشبورد
    final id = message.data['id'];
    final productId = message.data['product_id'];
    final type = message.data['type'];

    debugPrint("🔍 Extracted ID: $id");
    debugPrint("🔍 Extracted Product ID: $productId");
    debugPrint("🔍 Extracted Type: $type");
    // 1. طباعة البيانات (Data Payload) - وهي الأهم للتوجيه
    debugPrint("--- New Foreground Message ---");
    debugPrint(
      "Data: ${message.data}",
    ); // هنا ستعرف إذا كان الـ product_id وصل أم لا

    // 2. طباعة نص الإشعار (Title & Body)
    if (message.notification != null) {
      debugPrint("Notification Title: ${message.notification!.title}");
      debugPrint("Notification Body: ${message.notification!.body}");
    }
    debugPrint("------------------------------");

    // الكود القديم الخاص بك لإظهار الإشعار المحلي
    final notification = message.notification;
    if (notification != null) {
      _localNotifications.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            'high_importance_channel',
            'High Importance Notifications',
            channelDescription: 'Important notifications',
            importance: Importance.high,
            priority: Priority.high,
          ),
          iOS: const DarwinNotificationDetails(
            presentAlert: true, // للتأكد من ظهوره في iOS والتطبيق مفتوح
            presentBadge: true,
            presentSound: true,
          ),
        ),
        payload: json.encode(message.data),
      );
    }
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
    RemoteMessage message,
  ) async {
    debugPrint('Handling background message: ${message.messageId}');
    if (message.notification != null) {
      final notification = NotificationModel(
        id:
            message.messageId ??
            DateTime.now().millisecondsSinceEpoch.toString(),
        title: message.notification!.title!,
        body: message.notification!.body!,
        type: message.data['type'] ?? 'general',
        data: message.data,
        createdAt: DateTime.now(),
      );
    }
  }
}

@Riverpod(keepAlive: true)
NotificationsService notificationsService(Ref ref) => NotificationsService(ref);

@riverpod
class DeviceTokenController extends _$DeviceTokenController {
  @override
  FutureOr<void>? build() => null;

  Future<void> sendFCMToken(String token, int? userId) async {
    state = const AsyncValue.loading();
    final repo = ref.watch(notificationsRepositoryProvider);

    await repo.sendFCMToken(token, userId);
    state = const AsyncValue.data(null);
  }
}
