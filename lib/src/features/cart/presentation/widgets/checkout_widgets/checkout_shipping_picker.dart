import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/features/cart/domain/delivery_slot.dart';
import 'package:meat_empire/src/features/cart/domain/slot.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_shipping_date_picker_widget.dart';
import 'package:meat_empire/src/features/cart/presentation/widgets/checkout_widgets/checkout_shipping_time_picker_widget.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class CheckoutShippingDateTimePickerFormField
    extends FormField<Map<String, dynamic>> {
  CheckoutShippingDateTimePickerFormField({
    Key? key,
    required List<DeliverySlot> deliverySlots,
    DeliverySlot? initialDateSlot,
    Slot? initialTimeSlot,
    FormFieldSetter<Map<String, dynamic>>? onSaved,
    FormFieldValidator<Map<String, dynamic>>? validator,
    ValueChanged<Map<String, dynamic>>? onChanged,
  }) : super(
          key: key,
          initialValue: {
            'date': initialDateSlot,
            'time': initialTimeSlot,
          },
          onSaved: onSaved,
          validator: validator,
          builder: (FormFieldState<Map<String, dynamic>> field) {
            final state =
                field as _CheckoutShippingDateTimePickerFormFieldState;
            final selectedDateSlot = state.value?['date'] as DeliverySlot?;
            final selectedTimeSlot = state.value?['time'] as Slot?;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShippingDatePicker(
                  deliverySlots: deliverySlots,
                  selectedDateSlot: selectedDateSlot,
                  onDateSelected: (slot) {
                    state.didChange({'date': slot, 'time': null});
                    if (onChanged != null) {
                      onChanged(state.value!);
                    }
                  },
                ),
                16.verticalSpace,
                if (selectedDateSlot != null)
                  ShippingTimePicker(
                    timeSlots: selectedDateSlot.slots ?? [],
                    selectedTimeSlot: selectedTimeSlot,
                    onTimeSelected: (slot) {
                      state.didChange({'date': selectedDateSlot, 'time': slot});
                      if (onChanged != null) {
                        onChanged(state.value!);
                      }
                    },
                  ),
                if (field.hasError)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      field.errorText ?? '',
                      style: TextStyle(color: AppColors.darkRed),
                    ),
                  ),
              ],
            );
          },
        );

  @override
  _CheckoutShippingDateTimePickerFormFieldState createState() =>
      _CheckoutShippingDateTimePickerFormFieldState();
}

class _CheckoutShippingDateTimePickerFormFieldState
    extends FormFieldState<Map<String, dynamic>> {}
