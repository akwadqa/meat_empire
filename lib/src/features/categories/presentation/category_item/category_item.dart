import 'package:flutter/material.dart';

import '../../../../theme/app_colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.onTap,
    required this.label,
    required this.image,
  });

  final VoidCallback? onTap;
  final String label;
  final Widget image;

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
                  color: AppColors.darkRed.withValues(alpha: 0.26),
                  offset: const Offset(0, 2),
                  blurRadius: 6,
                ),
              ],
            ),
            padding: const EdgeInsets.all(16),
            height: 74,
            width: 74,
            child: image,
          ),
          Spacer(),
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
