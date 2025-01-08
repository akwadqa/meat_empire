import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@Freezed(toJson: true, fromJson: true, map: FreezedMapOptions())
class UserProfile with _$UserProfile {
  @JsonSerializable(explicitToJson: true)
  const factory UserProfile({
    @JsonKey(name: 'user_id') required String userId,
    required String status,
    @JsonKey(name: 'user_type') required String userType,
    @JsonKey(name: 'user_login') required String userLogin,
    required String firstname,
    required String lastname,
    required String email,
    required String phone,
    @JsonKey(name: 'b_firstname') String? bFirstname,
    @JsonKey(name: 'b_lastname') String? bLastname,
    @JsonKey(name: 'b_address') String? bAddress,
    @JsonKey(name: 'b_city') String? bCity,
    @JsonKey(name: 'b_state') String? bState,
    @JsonKey(name: 'b_country') String? bCountry,
    @JsonKey(name: 'b_phone') String? bPhone,
    @JsonKey(name: 'profile_name') String? profileName,
    @JsonKey(name: 'points') @Default(0) int points,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
