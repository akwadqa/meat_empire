import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../constants/end_points.dart';
import '../../../network/network_service.dart';
import '../domain/home/home.dart';

part 'home_repository.g.dart';

@Riverpod(keepAlive: true)
HomeRepository homeRepository(Ref ref) =>
    HomeRepository(ref.watch(networkServiceProvider()));

class HomeRepository {
  final NetworkService _networkService;

  const HomeRepository(this._networkService);

  Future<Home> getHome() async {
    final response = await _networkService.get(EndPoints.homeApi);
    Home homeResponse = Home.fromJson(response.data);
    if (homeResponse.success) {
      return homeResponse;
    }
    throw AppException(homeResponse.message);
  }
}

@Riverpod(keepAlive: true)
Future<Home> home(Ref ref) async {
  final repository = ref.watch(homeRepositoryProvider);
  return repository.getHome();
}
