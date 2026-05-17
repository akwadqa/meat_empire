import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meat_empire/src/features/account/presentation/account_screen/account_screen.dart';
import 'package:meat_empire/src/features/account/presentation/account_screen/main_account_screen.dart';
import 'package:meat_empire/src/features/auth/presentation/login_screen/login_screen.dart';
import 'package:meat_empire/src/features/auth/presentation/signup_screen/signup_screen.dart';
import 'package:meat_empire/src/features/cart/domain/cart.dart';
import 'package:meat_empire/src/features/cart/domain/cart_response.dart';
import 'package:meat_empire/src/features/cart/domain/delivery_slot.dart';
import 'package:meat_empire/src/features/cart/domain/slot.dart';
import 'package:meat_empire/src/features/cart/presentation/cart_screen/cart_screen.dart';
import 'package:meat_empire/src/features/cart/presentation/check_out/check_out_screen.dart';
import 'package:meat_empire/src/features/cart/presentation/payment_screen/payment_screen.dart';
import 'package:meat_empire/src/features/categories/presentation/categories_screen/categories_screen.dart';
import 'package:meat_empire/src/features/home/data/home_repository.dart';
import 'package:meat_empire/src/features/home/presentation/home_screen/home_screen.dart';

import 'package:meat_empire/src/features/home/presentation/layout_screen/layout_screen.dart';
import 'package:meat_empire/src/features/my_orders/presentation/page/my_order_screen.dart';
import 'package:meat_empire/src/features/products/presentation/product_details_screen/product_details_screen.dart';

import 'custom_navigation_observer.dart';
import 'fallback_screen.dart';
import 'go_routes.dart';

final GlobalKey<NavigatorState> rootKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellKey = GlobalKey<NavigatorState>();

// String normalizeIncomingUri(Uri u) {
//   if (u.scheme == 'http' || u.scheme == 'https') {
//     final path = u.path;

//     final regExp = RegExp(r'id-(\d+)');
//     final match = regExp.firstMatch(path);

//     if (match != null) {
//       final productId = match.group(1);

//       return '/product-details?id=$productId';
//     }

//     return path.isEmpty ? '/' : path;
//   }

//   if (u.scheme == 'meat-empire') {
//     final path = u.host.isEmpty ? u.path : '/${u.host}${u.path}';
//     return path;
//   }

//   return u.toString();
// }

String normalizeIncomingUri(Uri u) {
  debugPrint("***********normalizeIncomingUri****************");
  debugPrint(u.toString());
  if (u.scheme == 'http' || u.scheme == 'https') {
    final path = u.path.replaceAll('/', '');

    if (u.path.contains('id-')) {
      final productMatch = RegExp(r'id-(\d+)').firstMatch(u.path);
      if (productMatch != null) {
        return '${GoRoutes.productDetails}?id=${productMatch.group(1)}';
      }
    }

    if (path.isNotEmpty && !u.path.contains('id-')) {
      return '${GoRoutes.home}?category=$path';
    }

    return u.path.isEmpty ? '/' : u.path;
  }
  return u.toString();
}

class AppRouter {
  final GoRouter goRouter;

  AppRouter(Ref ref) : goRouter = _createRouter(ref);

  static GoRouter _createRouter(Ref ref) {
    // static final GoRouter router = GoRouter(
    return GoRouter(
      navigatorKey: rootKey,
      initialLocation: GoRoutes.home,
      observers: [CustomNavigationObserver()],
      errorBuilder: (context, state) => const FallbackScreen(),
      redirect: (context, state) {
        // return null;
        final uri = state.uri;
        final path = uri.path;

        // 1. القائمة البيضاء: أي صفحة معرفة في التطبيق يجب أن تمر دون تدخل
        // أضف هنا أي صفحة جديدة تنشئها مثل login أو register
        final whiteList = [
          GoRoutes.productDetails,
          GoRoutes.cart,
          GoRoutes.account,
          GoRoutes.login, // أضف صفحة تسجيل الدخول هنا
          GoRoutes.layout, // وأي صفحات أخرى مشابهة
          GoRoutes.categories,
          GoRoutes.myOrders,
          GoRoutes.payment,
          GoRoutes.checkout,
          GoRoutes.signup,
        ];

        if (whiteList.contains(state.fullPath) || whiteList.contains(path)) {
          return null;
        }

        final cleanPath = path.replaceAll('/', '');
        if (cleanPath.isEmpty) return null;
     if (uri.host.contains('meat-empire.com') ||
            (path != '/' && !path.startsWith(GoRoutes.home))) {
          final productMatch = RegExp(r'id-(\d+)').firstMatch(path);
          if (productMatch != null) {
            final idString = productMatch.group(1);
            return '${GoRoutes.productDetails}?id=$idString';
          }

          if (!whiteList.contains(path) && path != GoRoutes.home) {
            ref.read(homeRepositoryProvider).getHome(rootKey.currentContext);
            return '${GoRoutes.home}?category=$cleanPath';
          }
        }

        return null;
      },
      routes: [
        /// SHELL (BOTTOM NAV)
        ShellRoute(
          builder: (context, state, child) {
            return HomeScreen(child: child);
          },
          routes: [
            GoRoute(
              path: GoRoutes.home,
              builder: (context, state) {
                final categoryName = state.uri.queryParameters['category'];
                return LayoutScreen(initalCategory: categoryName);
              },
            ),

            GoRoute(
              path: GoRoutes.categories,
              name: GoRoutes.categories,

              // parentNavigatorKey: rootKey,
              builder: (context, state) {
                final Map<String, dynamic>? extraData =
                    state.extra as Map<String, dynamic>?;

                return CategoriesScreen(
                  categoryId: extraData?["categoryId"],
                  fromHome: extraData?["fromHome"],
                );
              },
            ),

            GoRoute(
              path: GoRoutes.cart,
              builder: (context, state) => const CartScreen(),
            ),

            GoRoute(
              path: GoRoutes.account,
              builder: (context, state) => MainAccountScreen(),
            ),
          ],
        ),

        // GoRoute(
        //   path: GoRoutes.productDetails,
        //   name: GoRoutes.productDetails,
        //   // parentNavigatorKey: rootKey,
        //   pageBuilder: (BuildContext context, GoRouterState state) {
        //     return CustomTransitionPage(
        //       key: state.pageKey,
        //       child: ProductDetailsScreen(productId: state.extra as int),
        //       transitionsBuilder:
        //           (context, animation, secondaryAnimation, child) {
        //             return FadeTransition(opacity: animation, child: child);
        //           },
        //     );
        //   },
        // ),
        GoRoute(
          path: GoRoutes.productDetails,
          name: GoRoutes.productDetails,
          pageBuilder: (BuildContext context, GoRouterState state) {
            int? productId = state.extra as int?;

            if (productId == null && state.uri.queryParameters['id'] != null) {
              productId = int.tryParse(state.uri.queryParameters['id']!);
            }

            return CustomTransitionPage(
              key: state.pageKey,
              child: ProductDetailsScreen(productId: productId ?? 0),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return FadeTransition(opacity: animation, child: child);
                  },
            );
          },
        ),

        // LOGIN
        GoRoute(
          path: GoRoutes.login,
          builder: (context, state) => const LoginScreen(),
        ),

        // SIGNUP
        GoRoute(
          path: GoRoutes.signup,
          builder: (context, state) => const SignupScreen(),
        ),

        GoRoute(
          path: GoRoutes.myOrders,
          builder: (context, state) => const MyOrdersScreen(),
        ),

        /// CHECKOUT
        GoRoute(
          path: GoRoutes.checkout,
          builder: (context, state) {
            final cart = state.extra as CartResponse;
            return CheckOutScreen(cart: cart);
          },
        ),

        // GoRoute(
        //   path: GoRoutes.payment,
        //   builder: (context, state) {
        //     final slot = state.extra as Slot;
        //     final deliverySlot = state.extra as DeliverySlot;
        //     return PaymentScreen(slot: slot, deliverySlot: deliverySlot);
        //   },
        // ),
        GoRoute(
          path: GoRoutes.payment,
          name: GoRoutes.payment,
          // parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final extra = state.extra as Map<String, dynamic>;

            final Slot slot = extra['slot'];
            final DeliverySlot deliverySlot = extra['deliverySlot'];
            return CustomTransitionPage(
              key: state.pageKey,
              child: PaymentScreen(slot: slot, deliverySlot: deliverySlot),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return FadeTransition(opacity: animation, child: child);
                  },
            );
          },
        ),
      ],
    );
  }
}
