import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_info_entity.freezed.dart';
part 'payment_info_entity.g.dart';

@freezed
abstract class PaymentInfoEntity with _$PaymentInfoEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory PaymentInfoEntity({
    required String paymentId,
    required String payment,
    String? description,
    String? instructions,
    String? image,
  }) = _PaymentInfoEntity;

  factory PaymentInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$PaymentInfoEntityFromJson(json);
}
