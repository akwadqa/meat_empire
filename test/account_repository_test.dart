import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meat_empire/src/features/account/data/repository/account_repository.dart';
import 'package:meat_empire/src/features/account/domain/entites/profile_response.dart';
import 'package:meat_empire/src/network/network_service.dart';
import 'package:mockito/mockito.dart';

class MockNetworkService extends Mock implements NetworkService {
  @override
  Future<Response> get(String url,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      CancelToken? cancelToken}) async {
    return Response(
      data: {
        "message": "SUCCESS GET DATA",
        "success": true,
        "user_profile": {
          "user_id": "12345",
          "status": "active",
          "user_type": "admin",
          "user_login": "user123",
          "firstname": "John",
          "lastname": "Doe",
          "email": "john.doe@example.com",
          "phone": "+1234567890",
          "password": "securePassword123",
          "b_state": "New York",
          "s_state": "California",
          "b_address": "123 Main St",
          "s_address": "456 Elm St",
          "b_zipcode": "10001",
          "s_zipcode": "90001",
          "b_country": "USA",
          "s_country": "USA",
          "b_address_2": "Apt 4B",
          "s_address_2": "Suite 10",
          "s_address_type": "residential",
          "profile_name": "johndoe_profile",
          "points": 100
        }
      },
      statusCode: 200,
      requestOptions: RequestOptions(),
    );
  }
}

void main() {
  late ProviderContainer providerContainer;
  late AccountRepository accountRepository;
  setUp(() {
    final mockNetworkService = MockNetworkService();
    providerContainer = ProviderContainer(overrides: [
      accountRepositoryProvider
          .overrideWithValue(AccountRepository(mockNetworkService)),
    ]);
    accountRepository = providerContainer.read(accountRepositoryProvider);
  });
  test("SHould return data of user profile info", () async {
    final userProfile = await accountRepository.getProfile(1);
    expect(userProfile, isA<ProfileResponse>());
  });
}
