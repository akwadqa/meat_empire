import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/shared_widgets/helper.dart';

import '../../../../theme/app_colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.onTap,
    required this.label,
    this.bgColor,
    required this.image,
    this.height = 100,
    this.width = 100,
    this.withBorder = false,
  });

  final VoidCallback? onTap;
  final String label;
  final Widget image;
  final double height;
  final double width;
  final bool withBorder;
  final String? bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (bgColor?.isNotEmpty ?? false)
                  ? hexToColor(bgColor!)
                  : AppColors.offWhite, // boxShadow: [
              //   BoxShadow(
              //     color: AppColors.darkRed.withAlpha((0.26 * 255).round()),
              //     offset: const Offset(0, 2),
              //     blurRadius: 8,
              //   ),
              // ],
              // border: withBorder
              //     ? Border.all(color: AppColors.newRed, width: 1)
              //     : null,
            ),
            padding: EdgeInsets.all(height >= 64 ? 6 : 4),
            height: height,
            width: width,
            child: image,
          ),
          10.verticalSpace,
          Text(
            label,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              color: AppColors.black900,
            ),
          ),
        ],
      ),
    );
  }
}
