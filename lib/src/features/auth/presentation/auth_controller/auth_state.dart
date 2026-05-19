import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthState {
  final bool isAuthenticated;
  final String? userId;
  final String? mobileNumber;
  final String? otp;
  final bool isResendButtonVisible;
  final AsyncValue<String>? login;
  final AsyncValue<String>? signup;

  AuthState({
    required this.isAuthenticated,
    this.userId,
    this.mobileNumber,
    this.otp,
    this.isResendButtonVisible = false,
    this.login,
    this.signup,
  });

  factory AuthState.initial() {
    return AuthState(
      isAuthenticated: false,
      userId: null,
      mobileNumber: null,
      otp: null,
      login: null,
      signup: null,
      isResendButtonVisible: false,
    );
  }

  AuthState copyWith({
    bool? isAuthenticated,
    String? userId,
    String? mobileNumber,
    String? otp,
    AsyncValue<String>? login,
    AsyncValue<String>? signup,
    bool? isResendButtonVisible,
  }) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      userId: userId ?? this.userId,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      otp: otp ?? this.otp,
      login: login ?? this.login,
      signup: signup ?? this.signup,
      isResendButtonVisible:
          isResendButtonVisible ?? this.isResendButtonVisible,
    );
  }
}
