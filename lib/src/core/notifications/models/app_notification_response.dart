import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification_model.dart';

part 'app_notification_response.freezed.dart';
part 'app_notification_response.g.dart';

@Freezed(
  fromJson: true,
)
abstract class AppNotificationResponse with _$AppNotificationResponse {
  const factory AppNotificationResponse({
    @JsonKey(name: "notification") required NotificationModel notification,
    required String message,
    required bool success,
  }) = _AppNotificationResponse;

  factory AppNotificationResponse.fromJson(Map<String, dynamic> json) {
    return _$AppNotificationResponseFromJson(json);
  }
}
