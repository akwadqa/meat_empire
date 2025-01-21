import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/features/cart/domain/payment_entities/payment_info_entity.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class PaymentMethodFormField extends FormField<int> {
  PaymentMethodFormField({
    Key? key,
    required List<PaymentInfoEntity>
        payments, // Pass the list of payment options
    required BuildContext context,
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
              context: context,
            );
          },
        );
}

class _PaymentMethodField extends StatelessWidget {
  final FormFieldState<int> state;
  final List<PaymentInfoEntity> payments;
  final BuildContext context;

  const _PaymentMethodField({
    Key? key,
    required this.state,
    required this.payments,
    required this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "payment_method".tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14),
        ),
        8.verticalSpace,
        Wrap(
          spacing: 8, // Space between chips
          runSpacing: 8,
          children: List.generate(
            payments.length,
            (index) {
              final payment = payments[index];
              final isSelected = state.value == index;

              return GestureDetector(
                onTap: () {
                  state.didChange(
                      index); // Update the state when a chip is tapped
                },
                child: Chip(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(
                      color:
                          isSelected ? AppColors.primary : AppColors.lightGray,
                      width: 1,
                    ),
                  ),
                  backgroundColor: isSelected
                      ? AppColors.primarySwatch[50]
                      : Colors.transparent,
                  label: Text(
                    payment.payment,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: isSelected
                              ? AppColors.primary
                              : AppColors.black900,
                          fontSize: 14,
                        ),
                  ),
                  avatar: payment.image != null
                      ? Image.network(
                          payment.image!,
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
              );
            },
          ),
        ),
        if (state.hasError)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              state.errorText ?? '',
              style: TextStyle(color: Colors.red, fontSize: 12),
            ),
          ),
      ],
    );
  }
}
