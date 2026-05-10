import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/categories/presentation/categories_screen/set_category_id_controller.dart';
import 'package:meat_empire/src/features/home/data/home_repository.dart';
import 'package:meat_empire/src/features/home/domain/home/category/category.dart';
import 'package:meat_empire/src/features/home/domain/home/layout.dart';
import 'package:meat_empire/src/features/search/presentation/search_controller/search_category_index_controller.dart';
import 'package:meat_empire/src/routing/new_router/go_routes.dart';
import 'package:meat_empire/src/shared_widgets/app_error_widget.dart';
import 'package:meat_empire/src/shared_widgets/fade_circle_loading_indicator.dart';
import 'package:collection/collection.dart';
import '../../domain/home/home.dart';
import 'layout_block.dart';

@RoutePage()
class LayoutScreen extends ConsumerWidget {
  const LayoutScreen({super.key, this.initalCategory});
  final String? initalCategory;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(homeProvider, (previous, next) {
      if (next is AsyncData) {
        if (initalCategory != null) {
          final categoriesList = next.value!.layout
              .where((layout) => layout.type == 'categories')
              .expand((layout) => layout.data)
              .whereType<Category>()
              .toList();

          final currentId = categoriesList
              .firstWhereOrNull(
                (category) => category.category.toLowerCase().contains(
                  initalCategory!.toLowerCase(),
                ),
              )
              ?.categoryId;

          if (currentId != null) {
            final selectedCategoryNotifier = ref.read(
              selectedCategoryProvider.notifier,
            );
            selectedCategoryNotifier.setCategory(currentId);

            ref
                .read(searchCategoryIndexControllerProvider.notifier)
                .switchState();

            Future.microtask(() {
              context.pushReplacement(
                GoRoutes.categories,
                extra: {"categoryId": currentId, "fromHome": true},
              );
            });
          }

          // final categoryLayout = data.layout.firstWhere(
          //   (layout) =>
          //       layout.type == 'categories' &&
          //       (layout.data as List<Category>).any(
          //         (category) =>
          //             category is String &&
          //             category.toLowerCase() == initalCategory!.toLowerCase(),
          //       ),
          // );
        }
      }
    });

    final homeAsync = ref.watch(homeProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildHomeContent(homeAsync, context, ref),
          SliverToBoxAdapter(child: SizedBox(height: 80)),
        ],
      ),
    );
  }

  Widget _buildHomeContent(
    AsyncValue<Home> homeAsync,
    BuildContext context,
    WidgetRef ref,
  ) {
    return homeAsync.when(
      data: (data) {
        return _buildLayoutList(data.layout);
      },
      loading: () => SliverToBoxAdapter(
        child: Center(
          child: const FadeCircleLoadingIndicator(),
        ).onlyPadding(top: MediaQuery.sizeOf(context).width / 1.2),
      ),
      error: (_, __) =>
          SliverToBoxAdapter(child: Center(child: const AppErrorWidget())),
    );
  }

  Widget _buildLayoutList(List<Layout> layout) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final layoutBlock = layout[index];
        return Padding(
          padding: EdgeInsets.only(
            // right: 10, left: 10,
            bottom: 10,
          ),
          child: LayoutBlock(layout: layoutBlock),
        );
      }, childCount: layout.length),
    );
  }
}
