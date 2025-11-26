// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(paymentRepository)
const paymentRepositoryProvider = PaymentRepositoryProvider._();

final class PaymentRepositoryProvider
    extends
        $FunctionalProvider<
          PaymentRepository,
          PaymentRepository,
          PaymentRepository
        >
    with $Provider<PaymentRepository> {
  const PaymentRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentRepositoryHash();

  @$internal
  @override
  $ProviderElement<PaymentRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PaymentRepository create(Ref ref) {
    return paymentRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaymentRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaymentRepository>(value),
    );
  }
}

String _$paymentRepositoryHash() => r'08120c10e06a351766e5d58c29cdca21d3b110d6';

@ProviderFor(payment)
const paymentProvider = PaymentFamily._();

final class PaymentProvider
    extends
        $FunctionalProvider<
          AsyncValue<PaymentResponse>,
          PaymentResponse,
          FutureOr<PaymentResponse>
        >
    with $FutureModifier<PaymentResponse>, $FutureProvider<PaymentResponse> {
  const PaymentProvider._({
    required PaymentFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'paymentProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$paymentHash();

  @override
  String toString() {
    return r'paymentProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<PaymentResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PaymentResponse> create(Ref ref) {
    final argument = this.argument as int;
    return payment(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PaymentProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$paymentHash() => r'ec4d2cd223d717f456b2e44d2a7b1b2e4bbe6713';

final class PaymentFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<PaymentResponse>, int> {
  const PaymentFamily._()
    : super(
        retry: null,
        name: r'paymentProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PaymentProvider call(int id) => PaymentProvider._(argument: id, from: this);

  @override
  String toString() => r'paymentProvider';
}

@ProviderFor(confirmPayment)
const confirmPaymentProvider = ConfirmPaymentFamily._();

final class ConfirmPaymentProvider
    extends
        $FunctionalProvider<
          AsyncValue<ConfirmPaymentResponse>,
          ConfirmPaymentResponse,
          FutureOr<ConfirmPaymentResponse>
        >
    with
        $FutureModifier<ConfirmPaymentResponse>,
        $FutureProvider<ConfirmPaymentResponse> {
  const ConfirmPaymentProvider._({
    required ConfirmPaymentFamily super.from,
    required ConfirmPaymentBodyData super.argument,
  }) : super(
         retry: null,
         name: r'confirmPaymentProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$confirmPaymentHash();

  @override
  String toString() {
    return r'confirmPaymentProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ConfirmPaymentResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ConfirmPaymentResponse> create(Ref ref) {
    final argument = this.argument as ConfirmPaymentBodyData;
    return confirmPayment(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ConfirmPaymentProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$confirmPaymentHash() => r'b332fc13e4c15aca22fa69d27690be087aa6c62f';

final class ConfirmPaymentFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<ConfirmPaymentResponse>,
          ConfirmPaymentBodyData
        > {
  const ConfirmPaymentFamily._()
    : super(
        retry: null,
        name: r'confirmPaymentProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ConfirmPaymentProvider call(ConfirmPaymentBodyData body) =>
      ConfirmPaymentProvider._(argument: body, from: this);

  @override
  String toString() => r'confirmPaymentProvider';
}
