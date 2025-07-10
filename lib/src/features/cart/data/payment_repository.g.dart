// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paymentRepositoryHash() => r'08120c10e06a351766e5d58c29cdca21d3b110d6';

/// See also [paymentRepository].
@ProviderFor(paymentRepository)
final paymentRepositoryProvider = Provider<PaymentRepository>.internal(
  paymentRepository,
  name: r'paymentRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paymentRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PaymentRepositoryRef = ProviderRef<PaymentRepository>;
String _$paymentHash() => r'ec4d2cd223d717f456b2e44d2a7b1b2e4bbe6713';

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

/// See also [payment].
@ProviderFor(payment)
const paymentProvider = PaymentFamily();

/// See also [payment].
class PaymentFamily extends Family<AsyncValue<PaymentResponse>> {
  /// See also [payment].
  const PaymentFamily();

  /// See also [payment].
  PaymentProvider call(int id) {
    return PaymentProvider(id);
  }

  @override
  PaymentProvider getProviderOverride(covariant PaymentProvider provider) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'paymentProvider';
}

/// See also [payment].
class PaymentProvider extends AutoDisposeFutureProvider<PaymentResponse> {
  /// See also [payment].
  PaymentProvider(int id)
    : this._internal(
        (ref) => payment(ref as PaymentRef, id),
        from: paymentProvider,
        name: r'paymentProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$paymentHash,
        dependencies: PaymentFamily._dependencies,
        allTransitiveDependencies: PaymentFamily._allTransitiveDependencies,
        id: id,
      );

  PaymentProvider._internal(
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
    FutureOr<PaymentResponse> Function(PaymentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PaymentProvider._internal(
        (ref) => create(ref as PaymentRef),
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
  AutoDisposeFutureProviderElement<PaymentResponse> createElement() {
    return _PaymentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PaymentProvider && other.id == id;
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
mixin PaymentRef on AutoDisposeFutureProviderRef<PaymentResponse> {
  /// The parameter `id` of this provider.
  int get id;
}

class _PaymentProviderElement
    extends AutoDisposeFutureProviderElement<PaymentResponse>
    with PaymentRef {
  _PaymentProviderElement(super.provider);

  @override
  int get id => (origin as PaymentProvider).id;
}

String _$confirmPaymentHash() => r'b332fc13e4c15aca22fa69d27690be087aa6c62f';

/// See also [confirmPayment].
@ProviderFor(confirmPayment)
const confirmPaymentProvider = ConfirmPaymentFamily();

/// See also [confirmPayment].
class ConfirmPaymentFamily extends Family<AsyncValue<ConfirmPaymentResponse>> {
  /// See also [confirmPayment].
  const ConfirmPaymentFamily();

  /// See also [confirmPayment].
  ConfirmPaymentProvider call(ConfirmPaymentBodyData body) {
    return ConfirmPaymentProvider(body);
  }

  @override
  ConfirmPaymentProvider getProviderOverride(
    covariant ConfirmPaymentProvider provider,
  ) {
    return call(provider.body);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'confirmPaymentProvider';
}

/// See also [confirmPayment].
class ConfirmPaymentProvider
    extends AutoDisposeFutureProvider<ConfirmPaymentResponse> {
  /// See also [confirmPayment].
  ConfirmPaymentProvider(ConfirmPaymentBodyData body)
    : this._internal(
        (ref) => confirmPayment(ref as ConfirmPaymentRef, body),
        from: confirmPaymentProvider,
        name: r'confirmPaymentProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$confirmPaymentHash,
        dependencies: ConfirmPaymentFamily._dependencies,
        allTransitiveDependencies:
            ConfirmPaymentFamily._allTransitiveDependencies,
        body: body,
      );

  ConfirmPaymentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.body,
  }) : super.internal();

  final ConfirmPaymentBodyData body;

  @override
  Override overrideWith(
    FutureOr<ConfirmPaymentResponse> Function(ConfirmPaymentRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ConfirmPaymentProvider._internal(
        (ref) => create(ref as ConfirmPaymentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        body: body,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ConfirmPaymentResponse> createElement() {
    return _ConfirmPaymentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ConfirmPaymentProvider && other.body == body;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, body.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ConfirmPaymentRef
    on AutoDisposeFutureProviderRef<ConfirmPaymentResponse> {
  /// The parameter `body` of this provider.
  ConfirmPaymentBodyData get body;
}

class _ConfirmPaymentProviderElement
    extends AutoDisposeFutureProviderElement<ConfirmPaymentResponse>
    with ConfirmPaymentRef {
  _ConfirmPaymentProviderElement(super.provider);

  @override
  ConfirmPaymentBodyData get body => (origin as ConfirmPaymentProvider).body;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
