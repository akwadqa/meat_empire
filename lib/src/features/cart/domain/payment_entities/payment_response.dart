import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';
import 'package:meat_empire/src/features/cart/domain/cart.dart';
import 'package:meat_empire/src/features/cart/domain/payment_entities/payment_info_entity.dart';

part 'payment_response.freezed.dart';
part 'payment_response.g.dart';

@freezed
abstract class PaymentResponse with _$PaymentResponse {
  factory PaymentResponse({
    bool? allowMultipleProfiles,
    bool? allowToApplyWallet,
    required PaymentInfoEntity paymentInfo,
    required List<PaymentInfoEntity> paymentMethods,
    List<UserProfile>? userProfiles,
    Cart? cart,
    String? totalProducts,
    required String message,
    required bool success,
  }) = _PaymentResponse;

  factory PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseFromJson(json);
}
