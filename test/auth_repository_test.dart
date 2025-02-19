import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/auth/data/auth_repository.dart';
import 'package:meat_empire/src/network/network_service.dart';
import 'package:meat_empire/src/constants/end_points.dart';

// Mock Network Service
class MockNetworkService extends Mock implements NetworkService {}

void main() {
  late ProviderContainer providerContainer;
  late AuthRepository authRepository;
  late MockNetworkService mockNetworkService;

  // Fake user data provider with token
  const testAuthToken = 'testAuthToken123';
  const testUserId = 'user123';
  final userDataProvider = Provider<(String, String)>((ref) {
    return (testAuthToken, testUserId);
  });

  setUp(() {
    mockNetworkService = MockNetworkService();
    providerContainer = ProviderContainer(overrides: [
      authRepositoryProvider
          .overrideWithValue(AuthRepository(mockNetworkService)),
      userDataProvider.overrideWithValue((testAuthToken, testUserId)),
    ]);
    authRepository = providerContainer.read(authRepositoryProvider);
  });

  group('AuthRepository Tests with Token from userDataProvider', () {
    test(
        'Should return authToken and userId on successful login using userDataProvider',
        () async {
      // Get token from provider
      final userData = providerContainer.read(userDataProvider);
      final authToken = userData.$1;
      final userId = userData.$2;

      // Mock API Response
      final mockResponse = Response(
        data: {
          "success": true,
          "complete_auth_token": authToken,
          "user_id": userId,
        },
        statusCode: 200,
        requestOptions: RequestOptions(path: EndPoints.loginApi),
      );

      // Mock NetworkService Behavior
      when(mockNetworkService.post(EndPoints.loginApi, any))
          .thenAnswer((_) async => mockResponse);

      // Execute Login
      final result = await authRepository.login("test@test.com", "test@1234");

      // Verify Results
      expect(result.$1, equals(testAuthToken));
      expect(result.$2, equals(testUserId));
    });

    test('Should throw an exception on failed login', () async {
      // Mock API Error Response
      final mockErrorResponse = Response(
        data: {
          "success": false,
          "message": "Invalid credentials",
        },
        statusCode: 401,
        requestOptions: RequestOptions(path: EndPoints.loginApi),
      );

      // Mock NetworkService Behavior
      when(mockNetworkService.post(EndPoints.loginApi, any))
          .thenAnswer((_) async => mockErrorResponse);

      // Expect Exception
      expect(
          () async => await authRepository.login("wrong@test.com", "wrongPass"),
          throwsException);
    });

    test('Should return authToken and userId on successful signup', () async {
      // Mock API Response
      final mockResponse = Response(
        data: {
          "success": true,
          "complete_auth_token": testAuthToken,
          "user_id": testUserId,
        },
        statusCode: 201,
        requestOptions: RequestOptions(path: EndPoints.signUpApi),
      );

      // Mock NetworkService Behavior
      when(mockNetworkService.post(EndPoints.signUpApi, any))
          .thenAnswer((_) async => mockResponse);

      // Execute Signup
      final result = await authRepository.signup(
        "test@test.com",
        "John Doe",
        "password123",
        "password123",
        "+1234567890",
      );

      // Verify Results
      expect(result.$1, equals(testAuthToken));
      expect(result.$2, equals(testUserId));
    });

    test('Should throw an exception on failed signup', () async {
      // Mock API Error Response
      final mockErrorResponse = Response(
        data: {
          "success": false,
          "message": "Email already exists",
        },
        statusCode: 400,
        requestOptions: RequestOptions(path: EndPoints.signUpApi),
      );

      // Mock NetworkService Behavior
      when(mockNetworkService.post(EndPoints.signUpApi, any))
          .thenAnswer((_) async => mockErrorResponse);

      // Expect Exception
      expect(
          () async => await authRepository.signup(
                "existing@test.com",
                "Jane Doe",
                "password123",
                "password123",
                "+1234567890",
              ),
          throwsException);
    });
  });
}
