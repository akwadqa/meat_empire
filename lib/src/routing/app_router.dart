import 'package:auto_route/auto_route.dart';
import 'package:meat_empire/src/routing/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true, children: [
          AutoRoute(page: LayoutRoute.page),
          AutoRoute(page: SearchRoute.page),
          AutoRoute(page: CartRoute.page),
          AutoRoute(page: AccountRoute.page),
        ]),
        AutoRoute(page: ProductDetailsRoute.page)
      ];
}
