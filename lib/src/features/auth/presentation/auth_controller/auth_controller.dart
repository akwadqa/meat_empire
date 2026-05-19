import 'package:easy_localization/easy_localization.dart';
import 'package:meat_empire/src/constants/keys.dart';
import 'package:meat_empire/src/core/notifications/services/notification_service.dart';
import 'package:meat_empire/src/features/auth/application/auth_service.dart';
import 'package:meat_empire/src/features/auth/data/auth_repository.dart';
import 'package:meat_empire/src/features/auth/presentation/auth_controller/auth_state.dart';
import 'package:meat_empire/src/network/network_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<AuthState> build() => AuthState.initial();

  // Future<void> _authenticate(
  //   Future<(bool isUserExists, String otp)> Function(AuthRepository authRepo)?
  //   loginAction,
  //   Future<(String userId, String otp)> Function(AuthRepository authRepo)?
  //   signupAction,
  //   bool fromLogin,
  // ) async {
  //   state = const AsyncLoading();

  //   state = await AsyncValue.guard(() async {
  //     final authRepo = ref.watch(authRepositoryProvider);

  //     // ✅ Check if user account was recently deleted (only on login)
  //     if (fromLogin) {
  //       final prefs = await SharedPreferences.getInstance();
  //       final deletedAt = prefs.getInt(Keys.deletedAt);

  //       if (deletedAt != null) {
  //         final deletedDate = DateTime.fromMillisecondsSinceEpoch(deletedAt);
  //         final diffMinutes = DateTime.now()
  //             .difference(deletedDate)
  //             .inMinutes; // ⏱ Minutes since deletion

  //         const blockDurationMinutes = 30; // 🚫 Block login for 30 Minutes

  //         if (diffMinutes < blockDurationMinutes) {
  //           throw AppException("delete_block_message".tr());
  //         } else {
  //           // ✅ More than 30 Minutes passed, allow login again
  //           await prefs.remove(Keys.deletedAt);
  //         }
  //       }
  //     }

  //     // ✅ Proceed with login or signup
  //     final userData = fromLogin
  //         ? await loginAction!(authRepo)
  //         : await signupAction!(authRepo);

  //     await ref
  //         .read(notificationsServiceProvider)
  //         .sendDeviceToken(int.parse(userData.$2));
  //     await ref.read(notificationsServiceProvider).subscribeFCMTopics();
  //     // await ref
  //     //     .read(userDataProvider.notifier)
  //     //     .setData(userData.$1, int.parse(userData.$2));
  //   });
  // }

  Future<void> login({
    required String phoneNumber,
    bool isSendOtp = true,
    int? otpCode,
  }) async {
    try {
      state = const AsyncLoading();
      final token = await ref.read(notificationsServiceProvider).myFcmToken();
      final authRepo = ref.watch(authRepositoryProvider);
      final userData = await authRepo.login(
        phoneNumber: phoneNumber,
        fcmToken: token,
        sendOtp: isSendOtp ? 1 : null,
        verifyOtp: otpCode != null ? 1 : null,
        otpCode: state.value!.otp,
      );

      state = AsyncValue.data(
        state.value!.copyWith(
          isAuthenticated: userData.$1,
          mobileNumber: userData.$2,
          otp: userData.$3,
        ),
      );
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      // TODO
    }

    Future<void> verifyOTp({
      required String phoneNumber,
      String? otpCode,
    }) async {
      try {
        // state = const AsyncLoading();
        final token = await ref.read(notificationsServiceProvider).myFcmToken();
        final authRepo = ref.watch(authRepositoryProvider);
        final userData = await authRepo.verifyOtp(
          otp: state.value!.otp!,
          phonenumber: phoneNumber,
        );

        state = AsyncValue.data(state.value!);
      } catch (e, st) {
        state = AsyncValue.error(e, st);
        // TODO
      }
    }

    // await _authenticate(
    //   (authRepo) => authRepo.login(
    //     phoneNumber: phoneNumber,
    //     fcmToken: token,
    //     sendOtp: isSendOtp ? 1 : null,
    //     verifyOtp: otpCode != null ? 1 : null,
    //     otpCode: otpCode,
    //   ),
    //   null,
    //   true,
    // );
  }

  // Future<void> signup(
  //   String email,
  //   String username,
  //   String password,
  //   String confirmPassword,
  //   String phone,
  // ) async {
  //   final token = await ref.read(notificationsServiceProvider).myFcmToken();
  //   await _authenticate(
  //     null,
  //     (authRepo) => authRepo.signup(
  //       email,
  //       username,
  //       password,
  //       confirmPassword,
  //       phone,
  //       token,
  //     ),
  //     false,
  //   );
  // }

  void markOtpAsSent() {
    if (state is AsyncData) {
      final currentState = state.value!;
      state = AsyncValue.data(
        currentState.copyWith(isResendButtonVisible: true),
      );
    }
  }

  void markOtpAsNotSent() {
    if (state is AsyncData) {
      final currentState = state.value!;
      state = AsyncValue.data(
        currentState.copyWith(isResendButtonVisible: false),
      );
    }
  }
}
