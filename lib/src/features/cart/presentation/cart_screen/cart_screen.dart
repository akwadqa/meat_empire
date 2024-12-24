import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../theme/app_colors.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text('suggestedProducts'.tr()),
            Container(
              color: AppColors.lightGray01,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container();
                  },
                  separatorBuilder: (_, __) => const SizedBox(width: 16),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
