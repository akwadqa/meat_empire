// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileResponseImpl _$$ProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResponseImpl(
      userProfile:
          UserProfile.fromJson(json['profile'] as Map<String, dynamic>),
      message: json['message'] as String,
      success: json['success'] as bool,
    );
