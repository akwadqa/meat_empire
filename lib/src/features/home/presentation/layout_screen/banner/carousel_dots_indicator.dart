import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'carousel_dots_indicator.g.dart';

@riverpod
class CarouselPageIndex extends _$CarouselPageIndex {
  @override
  int build() => 0;

  void setPageIndex(int newIndex) {
    state = newIndex;
  }
}

class CarouselDotsIndicator extends ConsumerWidget {
  const CarouselDotsIndicator({super.key, required this.dotsCount});
  final int dotsCount;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int pageIndex = ref.watch(carouselPageIndexProvider);
    return DotsIndicator(
      dotsCount: dotsCount,
      position: pageIndex,
      decorator: DotsDecorator(
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        color: Colors.red,
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }
}
