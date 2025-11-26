import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';

part 'profile_response.freezed.dart';
// part 'profile_response.g.dart';

@freezed
abstract class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    @JsonKey(ignore: true) required UserProfile? userProfile,
    required String message,
    required bool success,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) {
    //****/
    // WHEN GET DATA RETURN (user_profile) AND WHEN UPDATE DATE RETURN (profile)
    //****/
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
      userProfile = null;
    }

    return _ProfileResponse(
      userProfile: userProfile,
      message: json['message'] as String,
      success: json['success'] as bool,
    );
  }
}
