// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(accountRepository)
const accountRepositoryProvider = AccountRepositoryProvider._();

final class AccountRepositoryProvider
    extends
        $FunctionalProvider<
          AccountRepository,
          AccountRepository,
          AccountRepository
        >
    with $Provider<AccountRepository> {
  const AccountRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accountRepositoryHash();

  @$internal
  @override
  $ProviderElement<AccountRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AccountRepository create(Ref ref) {
    return accountRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AccountRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AccountRepository>(value),
    );
  }
}

String _$accountRepositoryHash() => r'098d7b34671fc15e625ab712de9079d0589c23a7';

@ProviderFor(account)
const accountProvider = AccountFamily._();

final class AccountProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProfileResponse>,
          ProfileResponse,
          FutureOr<ProfileResponse>
        >
    with $FutureModifier<ProfileResponse>, $FutureProvider<ProfileResponse> {
  const AccountProvider._({
    required AccountFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'accountProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$accountHash();

  @override
  String toString() {
    return r'accountProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ProfileResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProfileResponse> create(Ref ref) {
    final argument = this.argument as int;
    return account(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$accountHash() => r'b19db55dfcc610ca8b51bc9f381385b248eaa781';

final class AccountFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ProfileResponse>, int> {
  const AccountFamily._()
    : super(
        retry: null,
        name: r'accountProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AccountProvider call(int id) => AccountProvider._(argument: id, from: this);

  @override
  String toString() => r'accountProvider';
}

@ProviderFor(updateAccount)
const updateAccountProvider = UpdateAccountFamily._();

final class UpdateAccountProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProfileResponse>,
          ProfileResponse,
          FutureOr<ProfileResponse>
        >
    with $FutureModifier<ProfileResponse>, $FutureProvider<ProfileResponse> {
  const UpdateAccountProvider._({
    required UpdateAccountFamily super.from,
    required UserProfile super.argument,
  }) : super(
         retry: null,
         name: r'updateAccountProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$updateAccountHash();

  @override
  String toString() {
    return r'updateAccountProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ProfileResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProfileResponse> create(Ref ref) {
    final argument = this.argument as UserProfile;
    return updateAccount(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateAccountProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$updateAccountHash() => r'0f349439959b170ab34e7e032e2fa6f4c184dad9';

final class UpdateAccountFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ProfileResponse>, UserProfile> {
  const UpdateAccountFamily._()
    : super(
        retry: null,
        name: r'updateAccountProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UpdateAccountProvider call(UserProfile updatedProfile) =>
      UpdateAccountProvider._(argument: updatedProfile, from: this);

  @override
  String toString() => r'updateAccountProvider';
}
