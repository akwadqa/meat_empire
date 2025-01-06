import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/constants/keys.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_service.g.dart';

@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPreferences(Ref ref) async =>
    await SharedPreferences.getInstance();

@Riverpod(keepAlive: true)
class UserToken extends _$UserToken {
  @override
  String? build() {
    return ref
        .watch(sharedPreferencesProvider)
        .requireValue
        .getString(Keys.token);
  }

  Future<void> setToken(String token) async {
    await ref
        .read(sharedPreferencesProvider)
        .requireValue
        .setString(Keys.token, token);

    state = token;
  }

  Future<void> removeToken() async {
    await ref.read(sharedPreferencesProvider).requireValue.remove(Keys.token);
    state = null;
  }
}

@riverpod
bool isAuthinticated(Ref ref) {
  return ref.watch(userTokenProvider) != null;
}
