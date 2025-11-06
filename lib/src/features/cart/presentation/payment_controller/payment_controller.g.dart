// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PaymentController)
const paymentControllerProvider = PaymentControllerProvider._();

final class PaymentControllerProvider
    extends $AsyncNotifierProvider<PaymentController, ConfirmPaymentResponse?> {
  const PaymentControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentControllerHash();

  @$internal
  @override
  PaymentController create() => PaymentController();
}

String _$paymentControllerHash() => r'7b13334acbcebf4839ef8cd46168067e23b726f8';

abstract class _$PaymentController
    extends $AsyncNotifier<ConfirmPaymentResponse?> {
  FutureOr<ConfirmPaymentResponse?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<ConfirmPaymentResponse?>,
              ConfirmPaymentResponse?
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<ConfirmPaymentResponse?>,
                ConfirmPaymentResponse?
              >,
              AsyncValue<ConfirmPaymentResponse?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
