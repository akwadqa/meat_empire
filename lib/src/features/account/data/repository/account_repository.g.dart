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
String _$accountProviderHash() => r'faece18288bb6eb7736c0f25cf2f8dbd4b6a5678';

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

/// See also [accountProvider].
@ProviderFor(accountProvider)
const accountProviderProvider = AccountProviderFamily();

/// See also [accountProvider].
class AccountProviderFamily extends Family<AsyncValue<ProfileResponse>> {
  /// See also [accountProvider].
  const AccountProviderFamily();

  /// See also [accountProvider].
  AccountProviderProvider call(
    int id,
  ) {
    return AccountProviderProvider(
      id,
    );
  }

  @override
  AccountProviderProvider getProviderOverride(
    covariant AccountProviderProvider provider,
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
  String? get name => r'accountProviderProvider';
}

/// See also [accountProvider].
class AccountProviderProvider
    extends AutoDisposeFutureProvider<ProfileResponse> {
  /// See also [accountProvider].
  AccountProviderProvider(
    int id,
  ) : this._internal(
          (ref) => accountProvider(
            ref as AccountProviderRef,
            id,
          ),
          from: accountProviderProvider,
          name: r'accountProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountProviderHash,
          dependencies: AccountProviderFamily._dependencies,
          allTransitiveDependencies:
              AccountProviderFamily._allTransitiveDependencies,
          id: id,
        );

  AccountProviderProvider._internal(
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
    FutureOr<ProfileResponse> Function(AccountProviderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AccountProviderProvider._internal(
        (ref) => create(ref as AccountProviderRef),
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
    return _AccountProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountProviderProvider && other.id == id;
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
mixin AccountProviderRef on AutoDisposeFutureProviderRef<ProfileResponse> {
  /// The parameter `id` of this provider.
  int get id;
}

class _AccountProviderProviderElement
    extends AutoDisposeFutureProviderElement<ProfileResponse>
    with AccountProviderRef {
  _AccountProviderProviderElement(super.provider);

  @override
  int get id => (origin as AccountProviderProvider).id;
}

String _$updateAccountProviderHash() =>
    r'55fc6845ab1c3e5db51ab7d9d474b9d8a997ac74';

/// See also [updateAccountProvider].
@ProviderFor(updateAccountProvider)
const updateAccountProviderProvider = UpdateAccountProviderFamily();

/// See also [updateAccountProvider].
class UpdateAccountProviderFamily extends Family<AsyncValue<ProfileResponse>> {
  /// See also [updateAccountProvider].
  const UpdateAccountProviderFamily();

  /// See also [updateAccountProvider].
  UpdateAccountProviderProvider call(
    UserProfile updatedProfile,
  ) {
    return UpdateAccountProviderProvider(
      updatedProfile,
    );
  }

  @override
  UpdateAccountProviderProvider getProviderOverride(
    covariant UpdateAccountProviderProvider provider,
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
  String? get name => r'updateAccountProviderProvider';
}

/// See also [updateAccountProvider].
class UpdateAccountProviderProvider
    extends AutoDisposeFutureProvider<ProfileResponse> {
  /// See also [updateAccountProvider].
  UpdateAccountProviderProvider(
    UserProfile updatedProfile,
  ) : this._internal(
          (ref) => updateAccountProvider(
            ref as UpdateAccountProviderRef,
            updatedProfile,
          ),
          from: updateAccountProviderProvider,
          name: r'updateAccountProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateAccountProviderHash,
          dependencies: UpdateAccountProviderFamily._dependencies,
          allTransitiveDependencies:
              UpdateAccountProviderFamily._allTransitiveDependencies,
          updatedProfile: updatedProfile,
        );

  UpdateAccountProviderProvider._internal(
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
    FutureOr<ProfileResponse> Function(UpdateAccountProviderRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateAccountProviderProvider._internal(
        (ref) => create(ref as UpdateAccountProviderRef),
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
    return _UpdateAccountProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateAccountProviderProvider &&
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
mixin UpdateAccountProviderRef
    on AutoDisposeFutureProviderRef<ProfileResponse> {
  /// The parameter `updatedProfile` of this provider.
  UserProfile get updatedProfile;
}

class _UpdateAccountProviderProviderElement
    extends AutoDisposeFutureProviderElement<ProfileResponse>
    with UpdateAccountProviderRef {
  _UpdateAccountProviderProviderElement(super.provider);

  @override
  UserProfile get updatedProfile =>
      (origin as UpdateAccountProviderProvider).updatedProfile;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
