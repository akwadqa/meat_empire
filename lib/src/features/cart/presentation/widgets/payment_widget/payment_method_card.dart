import 'package:easy_localization/easy_localization.dart' as local;
import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/cart/domain/payment_entities/payment_info_entity.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class PaymentMethodFormField extends FormField<int> {
  PaymentMethodFormField({
    Key? key,
    required List<PaymentInfoEntity> payments,
    FormFieldSetter<int>? onSaved,
    FormFieldSetter<PaymentInfoEntity>? onchange,
    FormFieldValidator<int>? validator,
    int initialValue = -1,
  }) : super(
          key: key,
          initialValue: initialValue,
          onSaved: onSaved,
          validator: validator,
          builder: (FormFieldState<int> state) {
            return _PaymentMethodField(
              state: state,
              payments: payments,
              onChange: onchange,
            );
          },
        );
}

class _PaymentMethodField extends StatelessWidget {
  final FormFieldState<int> state;
  final List<PaymentInfoEntity> payments;
  final ValueChanged<PaymentInfoEntity>?
      onChange; // Callback for selected payment

  const _PaymentMethodField({
    required this.state,
    required this.payments,
    this.onChange,
  }) : super();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Text(
          "payment_method".tr(),
          style:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 16),
        ).onlyPadding(start: 12),
        12.verticalSpace,

        Column(
          children: payments.asMap().entries.map((entry) {
            final index = entry.key;
            final payment = entry.value;
            final isSelected = state.value == index;

            return GestureDetector(
              onTap: () {
                state.didChange(index);
                state.save();
                onChange?.call(payment);
              },
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Stack(
                  children: [
                    Container(
                      child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 12),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isSelected
                                  ? AppColors.primary
                                  : AppColors.lightGray,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            // color:
                            //     isSelected ? AppColors.primarySwatch[50] : Colors.white,
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              payment.payment,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    color: isSelected
                                        ? AppColors.primary
                                        : AppColors.black900,
                                    fontSize: 14,
                                  ),
                            ),
                            leading: Image.network(
                              payment.image!,
                              height: 30,
                              width: 30,
                              errorBuilder: (ctx, oob, ko) {
                                return Icon(
                                  Icons.credit_card,
                                  color: AppColors.grey600,
                                );
                              },
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                    if (isSelected)
                      const PositionedDirectional(
                        top: 0,
                        end: 4,
                        child: Icon(
                          Icons.check_circle,
                          color: AppColors.primary,
                          size: 20,
                        ),
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
