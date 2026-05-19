import 'package:flutter/material.dart';
import 'package:meat_empire/src/features/account/data/repository/account_repository.dart';
import 'package:meat_empire/src/features/account/domain/entites/profile_response.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';
import 'package:meat_empire/src/features/auth/application/auth_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_controller.g.dart';

@riverpod
class AccountController extends _$AccountController {
  @override
  FutureOr<ProfileResponse?> build() {
    // final userId = ref.watch(userDataProvider)!.$2;
    final controller = ref.watch(userDataProvider);
    int userId = 0;
    if (controller != null) {
      userId = ref.watch(userDataProvider)!.$2;
      return ref.watch(accountRepositoryProvider).getProfile(userId);
    }

  }

  Future<void> editAccountInformation(
    BuildContext context,
    UserProfile userProfile,
  ) async {
    if (state is AsyncData<ProfileResponse>) {
      final currentState = state.value;
      state = AsyncLoading();

      try {
        final response = await ref
            .read(accountRepositoryProvider)
            .updateProfile(userProfile);

        if (response.success) {
          state = AsyncData(response);
          debugPrint("//*** PROFILE UPDATED SUCCESSFULLY ***//");
          Navigator.pop(context);
        } else {
          state = AsyncData(currentState!);
        }
      } catch (e) {
        state = AsyncError(e, StackTrace.current);
        debugPrint("//*** Exception while updating profile: $e ***//");

        state = AsyncData(currentState!);
      }
    } else {
      debugPrint("//*** State is not ready for editing *//");
    }
  }
}
