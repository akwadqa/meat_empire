import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/orders_response.dart';
import 'package:meat_empire/src/features/my_orders/presentation/controllers/my_orders_controller.dart';
import 'package:meat_empire/src/features/my_orders/presentation/widgets/order_card.dart';
import 'package:meat_empire/src/shared_widgets/app_empty_data_widget.dart';
import 'package:meat_empire/src/shared_widgets/app_error_widget.dart';
import 'package:meat_empire/src/shared_widgets/app_pagination_widget.dart';
import 'package:meat_empire/src/shared_widgets/fade_circle_loading_indicator.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

@RoutePage()
class MyOrdersScreen extends ConsumerStatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends ConsumerState<MyOrdersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize the TabController with 2 tabs
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose the TabController to avoid memory leaks
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    asyncData(String? status) =>
        ref.watch(myOrdersControllerProvider(status ?? "C"));
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Colors.black)
                .onlyPadding(start: 20),
          ),
          title: Text(
            context.tr("my_orders"),
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 18),
          ),
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: AppColors.primary,
            indicatorWeight: 0.4,
            indicatorSize: TabBarIndicatorSize.tab,
            // indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
            indicator: BoxDecoration(
                border: Border(
              bottom: BorderSide(
                color: AppColors.primary,
                width: 2,
              ),
            )),
            dividerHeight: 0.5,
            dividerColor: Colors.grey[600],
            padding: const EdgeInsets.symmetric(horizontal: 10),
            controller: _tabController,

            tabs: [
              Tab(
                  child: Text(context.tr("processing"),
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ))),
              Tab(
                  child: Text(context.tr("delivered"),
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ))),
              Tab(
                  child: Text(context.tr("canceled"),
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ))),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            _buildProcessingOrdersView(context, asyncData),
            _buildCompletedOrdersView(context, asyncData),
            _buildCanceledOrdersView(context, asyncData),
          ],
        ),
      ),
    );
  }

  Widget _buildProcessingOrdersView(BuildContext context,
      AsyncValue<OrdersResponse> Function(String? status) asyncData) {
    return Consumer(builder: (context, ref, child) {
      final asyncOrdersO = ref.watch(myOrdersControllerProvider("O"));
      final asyncOrdersA = ref.watch(myOrdersControllerProvider("A"));

      return RefreshIndicator(
        onRefresh: () async {
          await _refreshOrders(ref, ["O", "A"]);
        },
        child: asyncOrdersO.when(
          data: (ordersO) {
            return asyncOrdersA.when(
              data: (ordersA) {
                // Combine and sort orders by orderId (biggest first)
                final allOrders = [...ordersO.orders, ...ordersA.orders]..sort(
                    (a, b) => int.parse(b.orderId)
                        .compareTo(int.parse(a.orderId))); // Sort descending

                return AppPaginationWidget(
                  onLoading: (page) async {
                    await ref
                        .read(myOrdersControllerProvider("A").notifier)
                        .loadMore("A", page);
                    return await ref
                        .read(myOrdersControllerProvider("O").notifier)
                        .loadMore("O", page);
                  },
                  child: allOrders.isEmpty
                      ? AppEmptyDataWidget(text: "no_orders_message")
                      : ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: allOrders.length,
                          itemBuilder: (context, index) {
                            final order = allOrders[index];
                            return OrderCardWidget(order: order);
                          },
                        ),
                );
              },
              loading: () => FadeCircleLoadingIndicator()
                  .onlyPadding(top: MediaQuery.sizeOf(context).width / 1.2),
              error: (error, stackTrace) => AppErrorWidget(),
            );
          },
          loading: () => FadeCircleLoadingIndicator()
              .onlyPadding(top: MediaQuery.sizeOf(context).width / 1.2),
          error: (error, stackTrace) => AppErrorWidget(),
        ),
      );
    });
  }

  Widget _buildCompletedOrdersView(BuildContext context,
      AsyncValue<OrdersResponse> Function(String? status) asyncData) {
    return RefreshIndicator(
      onRefresh: () async {
        await _refreshOrders(ref, ["C"]);
      },
      child: asyncData("C").when(
        data: (data) {
          return AppPaginationWidget(
            onLoading: (page) => ref
                .read(myOrdersControllerProvider("C").notifier)
                .loadMore("C", page),
            child: data.orders.isEmpty
                ? AppEmptyDataWidget(text: "no_orders_message")
                : ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: data.orders.length,
                    itemBuilder: (context, index) {
                      final order = data.orders[index];
                      return OrderCardWidget(
                        order: order,
                      );
                    },
                  ),
          );
        },
        loading: () => FadeCircleLoadingIndicator()
            .onlyPadding(top: MediaQuery.sizeOf(context).width / 1.2),
        error: (error, stackTrace) => AppErrorWidget(),
      ),
    );
  }

  Widget _buildCanceledOrdersView(BuildContext context,
      AsyncValue<OrdersResponse> Function(String? status) asyncData) {
    return RefreshIndicator(
      onRefresh: () async {
        await _refreshOrders(ref, ["I"]);
      },
      child: asyncData("I").when(
        data: (data) {
          return AppPaginationWidget(
            onLoading: (page) => ref
                .read(myOrdersControllerProvider("I").notifier)
                .loadMore("I", page),
            child: data.orders.isEmpty
                ? AppEmptyDataWidget(text: "no_orders_message")
                : ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: data.orders.length,
                    itemBuilder: (context, index) {
                      final order = data.orders[index];
                      return OrderCardWidget(
                        order: order,
                      );
                    },
                  ),
          );
        },
        loading: () => FadeCircleLoadingIndicator()
            .onlyPadding(top: MediaQuery.sizeOf(context).width / 1.2),
        error: (error, stackTrace) => AppErrorWidget(),
      ),
    );
  }

// Function to refresh orders
  Future<void> _refreshOrders(WidgetRef ref, List<String> statuses) async {
    for (var status in statuses) {
      ref.invalidate(myOrdersControllerProvider(status));
    }
  }
}
