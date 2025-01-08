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

  Future<(String authToken, String userId)> login(
      String email, String password) async {
    final response = await _networkService.post(EndPoints.loginApi, {
      'user_login': email,
      'password': password,
    });

    // Check if response data contains the required fields
    if (response.data != null &&
        response.data.containsKey('complete_auth_token') &&
        response.data.containsKey('user_id')) {
      final String authToken = response.data['complete_auth_token'];
      final String userId = response.data['user_id'];

      // Assuming `Record` is a class to hold these two fields
      return (authToken, userId);
    } else {
      throw Exception(response.message);
    }
  }

  Future<(String authToken, String userId)> signup(
      String email,
      String username,
      String password,
      String confirmPassword,
      String phone) async {
    final response = await _networkService.post(EndPoints.signUpApi, {
      'email': email,
      'firstname': username.split(' ').first,
      'lastname': username.split(' ').last,
      'password1': password,
      'password2': confirmPassword,
      'phone': phone,
    });
    if (response.data != null &&
        response.data.containsKey('complete_auth_token') &&
        response.data.containsKey('user_id')) {
      final String authToken = response.data['complete_auth_token'];
      final String userId = response.data['user_id'];
      return (authToken, userId);
    } else {
      throw Exception(response.message);
    }
  }
}
