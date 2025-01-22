import 'package:meat_empire/src/features/auth/application/auth_service.dart';
import 'package:meat_empire/src/features/auth/data/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<void> build() => null;

  Future<void> _authenticate(
    Future<(String authToken, String userId)> Function(AuthRepository authRepo)
        action,
  ) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final authRepo = ref.watch(authRepositoryProvider);
      final userData = await action(authRepo);
      await ref
          .read(userDataProvider.notifier)
          .setData(userData.$1, int.parse(userData.$2));
    });
  }

  Future<void> login(String email, String password) async {
    await _authenticate((authRepo) => authRepo.login(email, password));
  }

  Future<void> signup(
    String email,
    String username,
    String password,
    String confirmPassword,
    String phone,
  ) async {
    await _authenticate(
      (authRepo) =>
          authRepo.signup(email, username, password, confirmPassword, phone),
    );
  }
}
