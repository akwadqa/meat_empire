// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sharedPreferencesHash() => r'ca329d21cb9532acf76436fc839fde21c0b7f1e6';

/// See also [sharedPreferences].
@ProviderFor(sharedPreferences)
final sharedPreferencesProvider = FutureProvider<SharedPreferences>.internal(
  sharedPreferences,
  name: r'sharedPreferencesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SharedPreferencesRef = FutureProviderRef<SharedPreferences>;
String _$isAuthinticatedHash() => r'3d120ed8dea6478a2f71b93c8028886bb548644d';

/// See also [isAuthinticated].
@ProviderFor(isAuthinticated)
final isAuthinticatedProvider = AutoDisposeProvider<bool>.internal(
  isAuthinticated,
  name: r'isAuthinticatedProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isAuthinticatedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef IsAuthinticatedRef = AutoDisposeProviderRef<bool>;
String _$userTokenHash() => r'17bcc39a97a4653e5c32dd991c3e5b17d48cd256';

/// See also [UserToken].
@ProviderFor(UserToken)
final userTokenProvider = NotifierProvider<UserToken, String?>.internal(
  UserToken.new,
  name: r'userTokenProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userTokenHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserToken = Notifier<String?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
