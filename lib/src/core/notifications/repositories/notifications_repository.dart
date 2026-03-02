import 'package:dio/dio.dart';
import 'package:meat_empire/src/constants/end_points.dart';
import 'package:meat_empire/src/core/notifications/models/app_notification_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../constants/services_urls.dart';
import '../../../network/network_service.dart';
part 'notifications_repository.g.dart';

@riverpod
NotificationsRepository notificationsRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  final newDio = Dio(dio.options.copyWith(baseUrl: ServicesUrls.baseUrl));
  newDio.interceptors.addAll(dio.interceptors);

  final NetworkService networkService = ref.watch(
    networkServiceProvider(newDio),
  );

  return NotificationsRepository(networkService);
}

class NotificationsRepository {
  final NetworkService _networkService;

  NotificationsRepository(this._networkService);

  Future<void> sendFCMToken(String token, int ?userId) async {
    final response = await _networkService.post(
      EndPoints.sendFcmToken,

     {'device_token': token, 'user_id': userId},
    );

    final AppNotificationResponse appResponse = AppNotificationResponse.fromJson(
      response.data,
      // (json) => null,
    );

    if (appResponse. success) {
      throw AppException( appResponse.message);
    }
  }
}
