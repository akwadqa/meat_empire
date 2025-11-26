import 'package:freezed_annotation/freezed_annotation.dart';

part 'slot.freezed.dart';
part 'slot.g.dart';

@freezed
abstract class Slot with _$Slot {
  factory Slot({
    String? slot,
    String? formatSlot,
    String? from,
    String? to,
    String? note,
  }) = _Slot;

  factory Slot.fromJson(Map<String, dynamic> json) => _$SlotFromJson(json);
}