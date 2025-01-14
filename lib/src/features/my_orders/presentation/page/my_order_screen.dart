import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/my_orders/data/repository/my_orders_repository.dart';
import 'package:meat_empire/src/features/my_orders/domain/entities/orders_response.dart';
import 'package:meat_empire/src/features/my_orders/presentation/widgets/order_card.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

@RoutePage()
class MyOrdersScreen extends ConsumerStatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

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
    asyncData(String? status) => ref.watch(myOrdersProvider(status ?? "C"));
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
            _buildCanceledOrdersView(context, asyncData),
            _buildCompletedOrdersView(context, asyncData),
            _buildProcessingOrdersView(context, asyncData),
          ],
        ),
      ),
    );
  }

  Widget _buildCanceledOrdersView(BuildContext context,
      AsyncValue<OrdersResponse> Function(String? status) asyncData) {
    return asyncData("O").when(
      data: (data) {
        return data.orders.isEmpty
            ? Center(
                child: Text(
                  "No delivered orders yet.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              )
            : ListView.builder(
                itemCount: data.orders.length,
                itemBuilder: (context, index) {
                  final order = data.orders[index];
                  return OrderCardWidget(
                    orderNumber: order.orderId,
                    orderDate: order.orderDate,
                    productImages: List<String>.from(
                        order.products.map((product) => product.imageUrl)),
                    totalCost: order.orderTotalCost,
                  );
                },
              );
      },
      loading: () => Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text(error.toString())),
    );
  }

  Widget _buildCompletedOrdersView(BuildContext context,
      AsyncValue<OrdersResponse> Function(String? status) asyncData) {
    return asyncData("C").when(
      data: (data) {
        return data.orders.isEmpty
            ? Center(
                child: Text(
                  "No delivered orders yet.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              )
            : ListView.builder(
                itemCount: data.orders.length,
                itemBuilder: (context, index) {
                  final order = data.orders[index];
                  return OrderCardWidget(
                    orderNumber: order.orderId,
                    orderDate: order.orderDate,
                    productImages: List<String>.from(
                        order.products.map((product) => product.imageUrl)),
                    totalCost: order.orderTotalCost,
                  );
                },
              );
      },
      loading: () => Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text(error.toString())),
    );
  }

  Widget _buildProcessingOrdersView(BuildContext context,
      AsyncValue<OrdersResponse> Function(String? status) asyncData) {
    return asyncData("I").when(
      data: (data) {
        return data.orders.isEmpty
            ? Center(
                child: Column(
                  children: [
                    Text(
                      "No delivered orders yet.",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              )
            : ListView.builder(
                itemCount: data.orders.length,
                itemBuilder: (context, index) {
                  final order = data.orders[index];
                  return OrderCardWidget(
                    orderNumber: order.orderId,
                    orderDate: order.orderDate,
                    productImages: List<String>.from(
                        order.products.map((product) => product.imageUrl)),
                    totalCost: order.orderTotalCost,
                  );
                },
              );
      },
      loading: () => Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text(error.toString())),
    );
  }
}
