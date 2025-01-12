// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accountRepositoryHash() => r'098d7b34671fc15e625ab712de9079d0589c23a7';

/// See also [accountRepository].
@ProviderFor(accountRepository)
final accountRepositoryProvider = Provider<AccountRepository>.internal(
  accountRepository,
  name: r'accountRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$accountRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AccountRepositoryRef = ProviderRef<AccountRepository>;
String _$accountHash() => r'b19db55dfcc610ca8b51bc9f381385b248eaa781';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [account].
@ProviderFor(account)
const accountProvider = AccountFamily();

/// See also [account].
class AccountFamily extends Family<AsyncValue<ProfileResponse>> {
  /// See also [account].
  const AccountFamily();

  /// See also [account].
  AccountProvider call(
    int id,
  ) {
    return AccountProvider(
      id,
    );
  }

  @override
  AccountProvider getProviderOverride(
    covariant AccountProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'accountProvider';
}

/// See also [account].
class AccountProvider extends AutoDisposeFutureProvider<ProfileResponse> {
  /// See also [account].
  AccountProvider(
    int id,
  ) : this._internal(
          (ref) => account(
            ref as AccountRef,
            id,
          ),
          from: accountProvider,
          name: r'accountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountHash,
          dependencies: AccountFamily._dependencies,
          allTransitiveDependencies: AccountFamily._allTransitiveDependencies,
          id: id,
        );

  AccountProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<ProfileResponse> Function(AccountRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AccountProvider._internal(
        (ref) => create(ref as AccountRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProfileResponse> createElement() {
    return _AccountProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AccountRef on AutoDisposeFutureProviderRef<ProfileResponse> {
  /// The parameter `id` of this provider.
  int get id;
}

class _AccountProviderElement
    extends AutoDisposeFutureProviderElement<ProfileResponse> with AccountRef {
  _AccountProviderElement(super.provider);

  @override
  int get id => (origin as AccountProvider).id;
}

String _$updateAccountHash() => r'0f349439959b170ab34e7e032e2fa6f4c184dad9';

/// See also [updateAccount].
@ProviderFor(updateAccount)
const updateAccountProvider = UpdateAccountFamily();

/// See also [updateAccount].
class UpdateAccountFamily extends Family<AsyncValue<ProfileResponse>> {
  /// See also [updateAccount].
  const UpdateAccountFamily();

  /// See also [updateAccount].
  UpdateAccountProvider call(
    UserProfile updatedProfile,
  ) {
    return UpdateAccountProvider(
      updatedProfile,
    );
  }

  @override
  UpdateAccountProvider getProviderOverride(
    covariant UpdateAccountProvider provider,
  ) {
    return call(
      provider.updatedProfile,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateAccountProvider';
}

/// See also [updateAccount].
class UpdateAccountProvider extends AutoDisposeFutureProvider<ProfileResponse> {
  /// See also [updateAccount].
  UpdateAccountProvider(
    UserProfile updatedProfile,
  ) : this._internal(
          (ref) => updateAccount(
            ref as UpdateAccountRef,
            updatedProfile,
          ),
          from: updateAccountProvider,
          name: r'updateAccountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateAccountHash,
          dependencies: UpdateAccountFamily._dependencies,
          allTransitiveDependencies:
              UpdateAccountFamily._allTransitiveDependencies,
          updatedProfile: updatedProfile,
        );

  UpdateAccountProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.updatedProfile,
  }) : super.internal();

  final UserProfile updatedProfile;

  @override
  Override overrideWith(
    FutureOr<ProfileResponse> Function(UpdateAccountRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateAccountProvider._internal(
        (ref) => create(ref as UpdateAccountRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        updatedProfile: updatedProfile,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProfileResponse> createElement() {
    return _UpdateAccountProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateAccountProvider &&
        other.updatedProfile == updatedProfile;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, updatedProfile.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateAccountRef on AutoDisposeFutureProviderRef<ProfileResponse> {
  /// The parameter `updatedProfile` of this provider.
  UserProfile get updatedProfile;
}

class _UpdateAccountProviderElement
    extends AutoDisposeFutureProviderElement<ProfileResponse>
    with UpdateAccountRef {
  _UpdateAccountProviderElement(super.provider);

  @override
  UserProfile get updatedProfile =>
      (origin as UpdateAccountProvider).updatedProfile;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
