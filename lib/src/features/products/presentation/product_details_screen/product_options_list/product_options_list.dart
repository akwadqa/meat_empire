import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/products/presentation/product_details_screen/product_options_list/product_options_controller.dart';

import '../../../../../theme/app_colors.dart';
import '../../../domain/product_details_response/product_options/option.dart';
import '../../../domain/product_details_response/product_options/product_options.dart';
import '../../../domain/product_details_response/product_options/selected_option.dart';
import '../../../domain/product_details_response/product_options/variant.dart';

class ProductOptionsList extends ConsumerWidget {
  const ProductOptionsList({super.key, required this.productOptions});

  final ProductOptions productOptions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) =>
          _OptionBlock(option: productOptions.options[index]),
      separatorBuilder: (_, __) => const SizedBox(height: 20),
      itemCount: productOptions.options.length,
    );
  }
}

class _OptionBlock extends StatelessWidget {
  const _OptionBlock({required this.option});

  final Option option;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          option.optionName,
          style:
              Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 18),
        ),
        const SizedBox(height: 16),
        _OptionVariantWrap(option: option),
      ],
    );
  }
}

class _OptionVariantWrap extends ConsumerWidget {
  const _OptionVariantWrap({required this.option});

  final Option option;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedOptions = ref.watch(productOptionsControllerProvider);

    final selectedVariantId = selectedOptions
        .firstWhere((selected) => selected.optionId == option.optionId,
            orElse: () =>
                SelectedOption(optionId: option.optionId, variantId: -1))
        .variantId;

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: option.variants.map((variant) {
        return _OptionVariant(
          variant: variant,
          isSelected: int.parse(variant.variantId) == selectedVariantId,
          optionId: option.optionId,
        );
      }).toList(),
    );
  }
}

class _OptionVariant extends ConsumerWidget {
  const _OptionVariant({
    required this.variant,
    required this.isSelected,
    required this.optionId,
  });

  final Variant variant;
  final bool isSelected;
  final int optionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref
            .read(productOptionsControllerProvider.notifier)
            .selectVariant(optionId, variant);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: isSelected ? AppColors.primary : AppColors.grayBorder,
              ),
            ),
            child: Text(
              variant.variantName,
              style: TextStyle(
                fontSize: 16,
                color: isSelected ? AppColors.primary : AppColors.darkGray,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          if (isSelected)
            PositionedDirectional(
              top: -8,
              start: -8,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
