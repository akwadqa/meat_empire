import 'package:auto_route/auto_route.dart';
import 'package:meat_empire/src/routing/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, page: HomeRoute.page, children: [
          AutoRoute(page: LayoutRoute.page),
          AutoRoute(page: SearchRoute.page),
          AutoRoute(page: CartRoute.page),
          AutoRoute(page: AccountRoute.page),
        ]),
        AutoRoute(page: ProductDetailsRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SignupRoute.page),
        AutoRoute(page: CategoriesRoute.page, children: [
          AutoRoute(page: SearchRoute.page),
        ])
      ];
}
