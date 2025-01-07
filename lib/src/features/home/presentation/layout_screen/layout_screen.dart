import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/home/data/home_repository.dart';
import 'package:meat_empire/src/features/home/domain/home/layout.dart';
import 'package:meat_empire/src/shared_widgets/app_error_widget.dart';
import 'package:meat_empire/src/shared_widgets/fade_circle_loading_indicator.dart';

import '../../domain/home/home.dart';
import 'layout_block.dart';

@RoutePage()
class LayoutScreen extends ConsumerWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeAsync = ref.watch(homeProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildHomeContent(homeAsync),
          SliverToBoxAdapter(
            child: SizedBox(height: 80),
          )
        ],
      ),
    );
  }

  Widget _buildHomeContent(AsyncValue<Home> homeAsync) {
    return homeAsync.when(
      data: (data) => _buildLayoutList(data.layout),
      loading: () =>
          SliverToBoxAdapter(child: Center(child: const FadeCircleLoadingIndicator())),
      error: (_, __) =>
          SliverToBoxAdapter(child: Center(child: const AppErrorWidget())),
    );
  }

  Widget _buildLayoutList(List<Layout> layout) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final layoutBlock = layout[index];
          return Padding(
            padding: EdgeInsets.only(right: 10, left: 10, bottom: 20),
            child: LayoutBlock(layout: layoutBlock),
          );
        },
        childCount: layout.length,
      ),
    );
  }
}
