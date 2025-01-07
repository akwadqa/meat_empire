import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';
part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    @JsonKey(name: 'profile') required UserProfile userProfile,
    required String message,
    required bool success,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}
