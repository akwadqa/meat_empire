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
    required String password,
    @JsonKey(name: 'b_address') String? billingAddress,
    @JsonKey(name: 's_address') String? shippingAddress,
    @JsonKey(name: 'b_city') String? bllingCity,
    @JsonKey(name: 's_city') String? shippingCity,
    @JsonKey(name: 'b_state') String? billingStrete,
    @JsonKey(name: 's_state') String? shippingStrete,
    @JsonKey(name: 'b_county') String? billingCountry,
    @JsonKey(name: 's_county') String? shippingCountry,
    @JsonKey(name: 'b_country') String? billingBuildingNumber,
    @JsonKey(name: 's_country') String? shippingBuildingNumber,
    @JsonKey(name: 'profile_name') String? profileName,
    @JsonKey(name: 'points') @Default(0) int points,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
