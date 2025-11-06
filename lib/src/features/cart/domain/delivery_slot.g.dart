// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeliverySlot _$DeliverySlotFromJson(Map<String, dynamic> json) =>
    _DeliverySlot(
      date: json['date'] as String?,
      timestamp: (json['timestamp'] as num?)?.toInt(),
      heading: json['heading'] as String?,
      subheading: json['subheading'] as String?,
      unavailable: json['unavailable'] as bool?,
      reason: json['reason'] as String?,
      slots: (json['slots'] as List<dynamic>?)
          ?.map((e) => Slot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
