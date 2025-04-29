import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';

import '../../../../theme/app_colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key,
      required this.onTap,
      required this.label,
      required this.image,
      this.height = 64, //74,
      this.width = 64, //74,
      this.withBorder = false});

  final VoidCallback? onTap;
  final String label;
  final Widget image;
  final double height;
  final double width;
  final bool withBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.rose,
              boxShadow: [
                BoxShadow(
                  color: AppColors.darkRed.withAlpha((0.26 * 255).round()),
                  offset: const Offset(0, 2),
                  blurRadius: 6,
                ),
              ],
              border: withBorder
                  ? Border.all(color: AppColors.newRed, width: 1)
                  : null,
            ),
            padding: EdgeInsets.all(height >= 64 ? 16 : 8),
            height: height,
            width: width,
            child: image,
          ),
          10.verticalSpace,
          Text(
            label,
            style: const TextStyle(
                fontWeight: FontWeight.w700, color: AppColors.black900),
          ),
        ],
      ),
    );
  }
}
