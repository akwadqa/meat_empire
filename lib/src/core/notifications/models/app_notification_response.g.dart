// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppNotificationResponse _$AppNotificationResponseFromJson(
  Map<String, dynamic> json,
) => _AppNotificationResponse(
  notification: NotificationModel.fromJson(
    json['notification'] as Map<String, dynamic>,
  ),
  message: json['message'] as String,
  success: json['success'] as bool,
);
