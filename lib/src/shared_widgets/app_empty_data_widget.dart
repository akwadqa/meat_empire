import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';

class AppEmptyDataWidget extends StatelessWidget {
  final String text;
  const AppEmptyDataWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.emptyData.svg(width: 120, height: 120),
          20.verticalSpace,
          Text(
            context.tr(text),
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}
