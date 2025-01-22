import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/features/cart/domain/payment_entities/payment_info_entity.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class PaymentMethodFormField extends FormField<int> {
  PaymentMethodFormField({
    Key? key,
    required List<PaymentInfoEntity> payments, // List of payment options
    FormFieldSetter<int>? onSaved,
    FormFieldValidator<int>? validator,
    int initialValue = -1, // Default to no selection
  }) : super(
          key: key,
          initialValue: initialValue,
          onSaved: onSaved,
          validator: validator,
          builder: (FormFieldState<int> state) {
            return _PaymentMethodField(
              state: state,
              payments: payments,
            );
          },
        );
}

class _PaymentMethodField extends StatelessWidget {
  final FormFieldState<int> state;
  final List<PaymentInfoEntity> payments;

  const _PaymentMethodField({
    Key? key,
    required this.state,
    required this.payments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Text(
          "payment_method".tr(),
          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 12),

        // List of Payment Options
        Column(
          children: payments.asMap().entries.map((entry) {
            final index = entry.key;
            final payment = entry.value;
            final isSelected = state.value == index;

            return GestureDetector(
              onTap: () {
                state.didChange(index); // Update the selected option
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 6),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected ? AppColors.primary : AppColors.lightGray,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color:
                      isSelected ? AppColors.primarySwatch[50] : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Payment Description and Icon
                    Row(
                      children: [
                        if (payment.image != null)
                          Image.network(
                            payment.image!,
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                        if (payment.image == null)
                          const Icon(
                            Icons.credit_card,
                            size: 30,
                            color: AppColors.grey600,
                          ),
                        const SizedBox(width: 10),
                        Text(
                          payment.payment,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: isSelected
                                        ? AppColors.primary
                                        : AppColors.black900,
                                    fontSize: 14,
                                  ),
                        ),
                      ],
                    ),

                    // Selected Icon
                    if (isSelected)
                      const Icon(
                        Icons.check_circle,
                        color: AppColors.primary,
                        size: 24,
                      ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),

        // Error Message
        if (state.hasError)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              state.errorText ?? '',
              style: const TextStyle(color: Colors.red, fontSize: 12),
            ),
          ),
      ],
    );
  }
}
