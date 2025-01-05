import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../constants/end_points.dart';
import '../../../network/network_service.dart';

part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) =>
    AuthRepository(ref.watch(networkServiceProvider()));

class AuthRepository {
  final NetworkService _networkService;

  AuthRepository(this._networkService);

  Future<String> login(String email, String password) async {
    final response = await _networkService.post(EndPoints.loginApi, {
      'user_login': email,
      'password': password,
    });
    return response.data['complete_auth_token'];
  }

  Future<String> signup(String email, String username, String password,
      String confirmPassword, String phone) async {
    final response = await _networkService.post(EndPoints.signUpApi, {
      'email': email,
      'firstname': username.split(' ').first,
      'lastname': username.split(' ').last,
      'password1': password,
      'password2': confirmPassword,
      'phone': phone,
    });
    return response.data['complete_auth_token'];
  }
}
