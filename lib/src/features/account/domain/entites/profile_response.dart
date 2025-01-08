import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';

part 'profile_response.freezed.dart';
// part 'profile_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    @JsonKey(ignore: true)
    required UserProfile userProfile, // Custom parsing logic will handle this
    required String message,
    required bool success,
  }) = _ProfileResponse;

  /// Custom fromJson method
  factory ProfileResponse.fromJson(Map<String, dynamic> json) {
    // Determine the key based on your condition (e.g., isUpdate)
    final userProfileKey =
        json.containsKey('user_profile') ? 'user_profile' : 'profile';

    return _ProfileResponse(
      userProfile: UserProfile.fromJson(json[userProfileKey]),
      message: json['message'] as String,
      success: json['success'] as bool,
    );
  }
}
