import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/cart/domain/payment_entities/confirm_payment_body_data.dart';
import 'package:meat_empire/src/features/cart/domain/payment_entities/confirm_payment_response.dart';
import 'package:meat_empire/src/features/cart/domain/payment_entities/payment_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../constants/end_points.dart';
import '../../../network/network_service.dart';

part 'payment_repository.g.dart';

@Riverpod(keepAlive: true)
PaymentRepository paymentRepository(Ref ref) =>
    PaymentRepository(ref.watch(networkServiceProvider()));

class PaymentRepository {
  final NetworkService _networkService;

  const PaymentRepository(this._networkService);

  Future<PaymentResponse> getPayment(int id) async {
    final response = await _networkService
        .get(EndPoints.checkOutApi, queryParameters: {"user_id": id});
    PaymentResponse paymentResponse = PaymentResponse.fromJson(response.data);
    if (paymentResponse.success) {
      return paymentResponse;
    }
    throw AppException(paymentResponse.message);
  }

  Future<ConfirmPaymentResponse> confirmPayment(
      ConfirmPaymentBodyData body) async {
        debugPrint("Selected Date: ${body.deliveryDtae}");
        debugPrint("Selected Time: ${body.ecTimeSlot}");
        debugPrint("confirmPayment checkOutApi *//");
    final response =
        await _networkService.post(EndPoints.checkOutApi, body.toJson());
    ConfirmPaymentResponse paymentResponse =
        ConfirmPaymentResponse.fromJson(response.data);
    return paymentResponse;
  }
}

@riverpod
FutureOr<PaymentResponse> payment(Ref ref, int id) async {
  final paymentRepository = ref.watch(paymentRepositoryProvider);
  return paymentRepository.getPayment(id);
}

@riverpod
FutureOr<ConfirmPaymentResponse> confirmPayment(
    Ref ref, ConfirmPaymentBodyData body) async {
  final paymentRepository = ref.watch(paymentRepositoryProvider);
  return paymentRepository.confirmPayment(body);
}
