import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class ProductListView extends StatelessWidget {
  final List<String> productImages;

  const ProductListView({super.key, required this.productImages});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    bool shortProductList = productImages.length > 4;

    return SizedBox(
      height: 70,
      child: Row(
        children: [
          if (shortProductList)
            Flexible(
              // flex: 1,
              child: IconButton(
                onPressed: () {
                  scrollController.animateTo(
                    scrollController.offset - 70,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 16,
                  color: AppColors.grey600,
                ),
              ),
            ),
          Flexible(
            flex: 10,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: productImages.length,
              separatorBuilder: (context, index) => 8.horizontalSpace,
              itemBuilder: (context, index) => Row(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.gray02, width: 0.5),
                    ),
                    width: 60,
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        productImages[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ).symmetricPadding(horizontal: shortProductList ? 0 : 8),
          ),
          if (shortProductList)
            Flexible(
              // flex: 1,
              child: IconButton(
                onPressed: () {
                  scrollController.animateTo(
                    scrollController.offset + 70,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: AppColors.grey600,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
