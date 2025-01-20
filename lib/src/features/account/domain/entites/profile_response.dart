import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';

part 'profile_response.freezed.dart';
// part 'profile_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    @JsonKey(ignore: true)
    required UserProfile? userProfile, // Nullable userProfile
    required String message,
    required bool success,
  }) = _ProfileResponse;

  /// Custom fromJson method
  factory ProfileResponse.fromJson(Map<String, dynamic> json) {
    // Determine the key based on your condition (e.g., isUpdate)
    final userProfileKey =
        json.containsKey('user_profile') ? 'user_profile' : 'profile';

    final userProfileValue = json[userProfileKey];
    UserProfile? userProfile;

    try {
      // Attempt to parse userProfile if it's a Map
      if (userProfileValue is Map<String, dynamic>) {
        userProfile = UserProfile.fromJson(userProfileValue);
      }
    } catch (e) {
      debugPrint("Error parsing userProfile: $e");
      userProfile = null; // Fallback to null on error
    }

    return _ProfileResponse(
      userProfile: userProfile,
      message: json['message'] as String,
      success: json['success'] as bool,
    );
  }
}
