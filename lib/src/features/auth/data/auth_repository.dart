import 'dart:math';

import 'package:dio/dio.dart';
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

  Future<(String authToken, String userId)> _handleAuthResponse(
    Map<String, dynamic> responseData,
  ) async {
    if (responseData.containsKey('complete_auth_token') &&
        responseData.containsKey('user_id')) {
      final String authToken = responseData['complete_auth_token'];
      final String userId = responseData['user_id'];

      return (authToken, userId);
    } else {
      throw AppException(responseData['message']);
    }
  }

  //   Future<(String authToken, String userId)> login({
  //     required String phoneNumber,
  //     required String fcmToken,
  //     int? sendOtp,
  //     int? verifyOtp,
  //     int? otpCode,
  //   }) async {
  //     final data = FormData.fromMap({
  //       'mobile_no': phoneNumber,
  //       "fcm_token": fcmToken,
  //       if (sendOtp != null) 'send_otp': sendOtp,
  //       if (verifyOtp != null) 'verify_otp': verifyOtp,
  //       if (otpCode != null) 'otp_code': otpCode,
  //     });

  //     print('''

  //       Number : $phoneNumber
  //       FCM Token : $fcmToken,
  //       Send OTP : $sendOtp,
  //       Verify OTP : $verifyOtp,
  //       OTP Code : $otpCode
  // ''');
  //     final response = await _networkService.post(EndPoints.loginApi, data);

  //     return _handleAuthResponse(response.data);
  //   }

  Future<(bool isUserExists, String mobileNumber, String otp)> login({
    required String phoneNumber,
    String? fcmToken,
    int? sendOtp,
    int? verifyOtp,
    String? otpCode,
  }) async {
    final data = FormData.fromMap({
      'mobile_no': phoneNumber,
      "fcm_token": fcmToken,
      if (sendOtp != null) 'send_otp': sendOtp,
      if (verifyOtp != null) 'verify_otp': verifyOtp,
      if (otpCode != null) 'otp_code': otpCode,
    });

    print('''

      Number : $phoneNumber
      FCM Token : $fcmToken,
      Send OTP : $sendOtp,
      Verify OTP : $verifyOtp,
      OTP Code : $otpCode 
''');
    final response = await _networkService.post(EndPoints.loginApi, data);
    if (response.data['success'] == false) {
      throw AppException(response.data['message']);
    }

    return (
      (response.data['validation']['user_exist'] as bool),
      response.data['mobile_number'].toString(),
      response.data['otp'].toString(),
    );
  }

  Future<(String authToken, String userId)> verifyOtp({
    required String phonenumber,
    required String otp,
    required String fcmToken,
  }) async {
    final data = FormData.fromMap({
      'mobile_no': phonenumber,
      "fcm_token": fcmToken,
      'verify_otp': 1,
      'otp': otp,
    });
    print('''

      Number : $phonenumber
      OTP : $otp
''');
    final response = await _networkService.post(EndPoints.loginApi, data);

    final token =
        response.data['complete_auth_token'] ?? response.data['auth_token'];
    return (token.toString(), response.data['user_id'].toString());
  }

  Future<(String authToken, String userId)> signup(
    String? email,
    String username,
    String phone,
  ) async {
    final response = await _networkService.post(EndPoints.signUpApi, {
      'email': email,
      'firstname': username.split(' ').first,
      'lastname': username.split(' ').last,
      'phone': phone,
    });
    // .then((val) async {
    //   await login(phoneNumber: phone, fcmToken: '', sendOtp: 1);
    // });
    if (response.data['success'] == false) {
      throw AppException(response.data['message']);
    }

    return ('', '');
  }
}
