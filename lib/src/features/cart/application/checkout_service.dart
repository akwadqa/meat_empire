import 'package:flutter/material.dart';
import 'package:meat_empire/src/features/cart/domain/slot.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:meat_empire/src/features/cart/domain/delivery_slot.dart';

part 'checkout_service.g.dart';

@riverpod
class CheckoutController extends _$CheckoutController {
  DeliverySlot? _selectedDeliverySlot;
  Slot? _selectedTimeSlot;

  @override
  DeliverySlot? build(List<DeliverySlot> deliverySlots) {
    debugPrint("Build first checkout initial");
    // Default to the first available delivery slot
    _selectedDeliverySlot = null;
    _selectedTimeSlot = null; // Ensure no time slot is selected by default
    return _selectedDeliverySlot;
  }

  /// Get the selected time slot
  Slot? get selectedTimeSlot => _selectedTimeSlot;
  DeliverySlot? get selectedDaySlot => _selectedDeliverySlot;

  /// Select a delivery slot
  void selectDeliverySlot(DeliverySlot slot) {
    _selectedDeliverySlot = slot;
    _selectedTimeSlot = null; // Reset the time slot when a new day is selected
    state = _selectedDeliverySlot;
  }

  /// Select a specific time slot
  void selectTimeSlot(Slot slot) {
    // if (_selectedTimeSlot != slot) {
    _selectedTimeSlot = slot;
    state = _selectedDeliverySlot;
    // }
  }
}
