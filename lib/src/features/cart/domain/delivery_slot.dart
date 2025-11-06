import 'package:freezed_annotation/freezed_annotation.dart';

import 'slot.dart';

part 'delivery_slot.freezed.dart';
part 'delivery_slot.g.dart';

@freezed
abstract class DeliverySlot with _$DeliverySlot {
  factory DeliverySlot({
    String? date,
    int? timestamp,
    String? heading,
    String? subheading,
    bool? unavailable,
    String? reason,
    List<Slot>? slots,
  }) = _DeliverySlot;

  factory DeliverySlot.fromJson(Map<String, dynamic> json) =>
      _$DeliverySlotFromJson(json);
}
