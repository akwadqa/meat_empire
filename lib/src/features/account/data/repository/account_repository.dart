import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/constants/end_points.dart';
import 'package:meat_empire/src/features/account/domain/entites/profile_response.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';
import 'package:meat_empire/src/network/network_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_repository.g.dart';

@Riverpod(keepAlive: true)
AccountRepository accountRepository(Ref ref) =>
    AccountRepository(ref.watch(networkServiceProvider()));

class AccountRepository {
  final NetworkService _networkService;

  const AccountRepository(this._networkService);

  Future<ProfileResponse> getProfile(int id) async {
    final response = await _networkService.get(EndPoints.profileApi(id));
    ProfileResponse profileResponse = ProfileResponse.fromJson(response.data);
    if (profileResponse.success) {
      return profileResponse;
    }
    throw AppException(profileResponse.message);
  }

  // Update Profile
  Future<ProfileResponse> updateProfile(UserProfile updatedProfile) async {
    final response = await _networkService.post(
      EndPoints.profileApi(int.parse(updatedProfile.userId)),

      updatedProfile.toJson(), // Convert UserProfile to JSON
    );
    ProfileResponse profileResponse = ProfileResponse.fromJson(response.data);
    if (profileResponse.success) {
      return profileResponse;
    }
    throw AppException(profileResponse.message);
  }
}

@riverpod
FutureOr<ProfileResponse> accountProvider(Ref ref, int id) async {
  final profilesRepository = ref.watch(accountRepositoryProvider);
  return profilesRepository.getProfile(id);
}

// Provider to update profile
@riverpod
FutureOr<ProfileResponse> updateAccountProvider(
    Ref ref, UserProfile updatedProfile) async {
  final profilesRepository = ref.watch(accountRepositoryProvider);
  return profilesRepository.updateProfile(updatedProfile);
}
