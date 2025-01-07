import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/account/data/repository/account_repository.dart';
import 'package:meat_empire/src/features/account/domain/entites/profile_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// @riverpod
// FutureOr<ProfileResponse> accountProvider(Ref ref, int id) async {
//   final profilesRepository = ref.watch(accountRepositoryProvider);
//   return profilesRepository.getProfile(id);
// }
