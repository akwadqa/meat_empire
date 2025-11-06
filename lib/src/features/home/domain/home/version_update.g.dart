// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VersionUpdate _$VersionUpdateFromJson(Map<String, dynamic> json) =>
    _VersionUpdate(
      appAndroidVersion: json['app_android_version'] as String,
      appIosVersion: json['app_ios_version'] as String,
      appUpdateRequired: json['app_update_required'] as bool,
      appUpdateRequiredMessage: json['app_update_required_message'] as String?,
      appUpdateMessage: json['app_update_message'] as String?,
      appNewUpdateTitle: json['app_new_update_title'] as String?,
      appIosUrl: json['app_ios_url'] as String?,
      appAndroidUrl: json['app_android_url'] as String?,
    );
