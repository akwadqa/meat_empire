class AuthState {
  final bool isAuthenticated;
  final String? userId;
  final String? mobileNumber;
  final String? otp;
  final bool isResendButtonVisible;

  AuthState({required this.isAuthenticated, this.userId, this.mobileNumber, this.otp, this.isResendButtonVisible = false});

  factory AuthState.initial() {
    return AuthState(isAuthenticated: false, userId: null, mobileNumber: null, otp: null, isResendButtonVisible: false);
  }

  AuthState copyWith({bool? isAuthenticated, String? userId, String? mobileNumber, String? otp, bool? isResendButtonVisible}) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      userId: userId ?? this.userId,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      otp: otp ?? this.otp,
      isResendButtonVisible: isResendButtonVisible ?? this.isResendButtonVisible,
    );
  }
}
