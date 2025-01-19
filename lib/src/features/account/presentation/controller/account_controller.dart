import 'package:flutter/material.dart';
import 'package:meat_empire/src/features/account/data/repository/account_repository.dart';
import 'package:meat_empire/src/features/account/domain/entites/profile_response.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
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
      BuildContext context, UserProfile userProfile) async {
    if (state is AsyncData<ProfileResponse>) {
      final currentState = state.value; // Preserve the current state
      state = AsyncLoading(); // Set loading state

      try {
        // Perform the update request
        final response = await ref
            .read(accountRepositoryProvider)
            .updateProfile(userProfile);

        if (response.success) {
          // Update state on success
          state = AsyncData(response);
          debugPrint("Profile updated successfully.");
          Navigator.pop(context);
        } else {
          // Retain previous state on failure
          state = AsyncData(currentState!); // Restore previous state
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text(response.message),
          //     backgroundColor: AppColors.darkRed,
          //   ),
          // );
        }
      } catch (e) {
        // Handle parsing or request exceptions
        state = AsyncError(e, StackTrace.current); // Update state to AsyncError
        debugPrint("Exception while updating profile: $e");

        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text("An error occurred. Please try again."),
        //     backgroundColor: AppColors.darkRed,
        //   ),
        // );
        state = AsyncData(currentState!);
      }
    } else {
      debugPrint("State is not ready for editing.");
    }
  }
}
