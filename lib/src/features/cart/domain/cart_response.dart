import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';

import 'cart.dart';
// import 'user_profile.dart';

part 'cart_response.freezed.dart';
part 'cart_response.g.dart';

@freezed
class CartResponse with _$CartResponse {
  factory CartResponse({
    bool? allowMultipleProfiles,
    List<UserProfile>? userProfiles,
    Cart? cart,
    dynamic totalProducts,
    String? message,
    bool? success,
  }) = _CartResponse;

  factory CartResponse.fromJson(Map<String, dynamic> json) =>
      _$CartResponseFromJson(json);
}
