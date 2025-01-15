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
    @JsonKey(name: 'b_state') String? bllingCity,
    @JsonKey(name: 's_state') String? shippingCity,
    @JsonKey(name: 'b_address') String? billingStrete,
    @JsonKey(name: 's_address') String? shippingStrete,
    @JsonKey(name: 'b_zipcode') String? billingCountry,
    @JsonKey(name: 's_zipcode') String? shippingCountry,
    @JsonKey(name: 'b_country') String? defaultBillingCountry,
    @JsonKey(name: 's_country') String? defaultShippingCountry,
    @JsonKey(name: 'b_address_2') String? billingBuildingNumber,
    @JsonKey(name: 's_address_2') String? shippingBuildingNumber,
    @JsonKey(name: 's_address_type') String? shippingBuildingType,
    @JsonKey(name: 'profile_name') String? profileName,
    @JsonKey(name: 'points') @Default(0) int points,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
