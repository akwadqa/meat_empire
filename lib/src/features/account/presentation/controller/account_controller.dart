import 'package:flutter/material.dart';
import 'package:meat_empire/src/features/account/data/repository/account_repository.dart';
import 'package:meat_empire/src/features/account/domain/entites/profile_response.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_controller.g.dart';

@riverpod
class AccountController extends _$AccountController {
  @override
  FutureOr<ProfileResponse> build() {
    // You can directly fetch the profile here or rely on cached data if needed
    return ref.watch(accountRepositoryProvider).getProfile(14);
  }

  Future<void> editAccountInformation(
      BuildContext context, String name, String phone) async {
    // Check if the state contains valid data (AsyncData)
    if (state is AsyncData<ProfileResponse>) {
      final currentProfile = state.value;

      // if (currentProfile == null) {
      //   // If no profile is available, set an error state
      //   state = AsyncError("No user profile available", StackTrace.current);
      //   return;
      // }
      debugPrint("CURRENT PROFILE IS ${currentProfile}");
      debugPrint("CURRENT PROFILE IS ${state.asData}");
      debugPrint("CURRENT PROFILE IS ${state}");

      // // Create the updated profile object by copying the current profile and modifying the fields
      // final UserProfile? updatedProfile = currentProfile.value!.userProfile
      //     .copyWith(firstname: name, phone: phone);
      // state = const AsyncLoading();

      // Perform the update request using the repository and handle the response
      state = await AsyncValue.guard(
        () => ref.read(accountRepositoryProvider).updateProfile(currentProfile!
            .userProfile
            .copyWith(firstname: name, phone: phone)),
      );
      if (state is AsyncData) {
        Navigator.pop(context); // Close the dialog
      }
    } else {
      // Handle the case where the state is in an error state
      state =
          AsyncError("Unable to retrieve the profile data", StackTrace.current);
    }
  }
}
