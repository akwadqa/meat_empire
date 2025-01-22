// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart'
    as _i17;
import 'package:meat_empire/src/features/account/presentation/account_screen/account_screen.dart'
    as _i1;
import 'package:meat_empire/src/features/account/presentation/account_screen/main_account_screen.dart'
    as _i8;
import 'package:meat_empire/src/features/account/presentation/account_screen/not_auth_account_screen.dart'
    as _i10;
import 'package:meat_empire/src/features/auth/presentation/login_screen/login_screen.dart'
    as _i7;
import 'package:meat_empire/src/features/auth/presentation/signup_screen/signup_screen.dart'
    as _i14;
import 'package:meat_empire/src/features/cart/domain/cart_response.dart'
    as _i19;
import 'package:meat_empire/src/features/cart/presentation/cart_screen/cart_screen.dart'
    as _i2;
import 'package:meat_empire/src/features/cart/presentation/check_out/check_out_screen.dart'
    as _i4;
import 'package:meat_empire/src/features/cart/presentation/payment_screen/payment_screen.dart'
    as _i11;
import 'package:meat_empire/src/features/categories/presentation/categories_screen/categories_screen.dart'
    as _i3;
import 'package:meat_empire/src/features/home/domain/home/category/category.dart'
    as _i18;
import 'package:meat_empire/src/features/home/presentation/home_screen/home_screen.dart'
    as _i5;
import 'package:meat_empire/src/features/home/presentation/layout_screen/layout_screen.dart'
    as _i6;
import 'package:meat_empire/src/features/my_orders/presentation/page/my_order_screen.dart'
    as _i9;
import 'package:meat_empire/src/features/products/presentation/product_details_screen/product_details_screen.dart'
    as _i12;
import 'package:meat_empire/src/features/search/presentation/search_screen/search_screen.dart'
    as _i13;

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i15.PageRouteInfo<AccountRouteArgs> {
  AccountRoute({
    _i16.Key? key,
    required _i17.UserProfile userProfile,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          AccountRoute.name,
          args: AccountRouteArgs(
            key: key,
            userProfile: userProfile,
          ),
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AccountRouteArgs>();
      return _i1.AccountScreen(
        key: args.key,
        userProfile: args.userProfile,
      );
    },
  );
}

class AccountRouteArgs {
  const AccountRouteArgs({
    this.key,
    required this.userProfile,
  });

  final _i16.Key? key;

  final _i17.UserProfile userProfile;

  @override
  String toString() {
    return 'AccountRouteArgs{key: $key, userProfile: $userProfile}';
  }
}

/// generated route for
/// [_i2.CartScreen]
class CartRoute extends _i15.PageRouteInfo<void> {
  const CartRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i2.CartScreen();
    },
  );
}

/// generated route for
/// [_i3.CategoriesScreen]
class CategoriesRoute extends _i15.PageRouteInfo<CategoriesRouteArgs> {
  CategoriesRoute({
    _i16.Key? key,
    _i18.Category? category,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i3.CategoriesScreen();
    },
  );
}

class CategoriesRouteArgs {
  const CategoriesRouteArgs({
    this.key,
    this.category,
  });

  final _i16.Key? key;

  final _i18.Category? category;

  @override
  String toString() {
    return 'CategoriesRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i4.CheckOutScreen]
class CheckOutRoute extends _i15.PageRouteInfo<CheckOutRouteArgs> {
  CheckOutRoute({
    _i16.Key? key,
    required _i19.CartResponse cart,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          CheckOutRoute.name,
          args: CheckOutRouteArgs(
            key: key,
            cart: cart,
          ),
          initialChildren: children,
        );

  static const String name = 'CheckOutRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CheckOutRouteArgs>();
      return _i4.CheckOutScreen(
        key: args.key,
        cart: args.cart,
      );
    },
  );
}

class CheckOutRouteArgs {
  const CheckOutRouteArgs({
    this.key,
    required this.cart,
  });

  final _i16.Key? key;

  final _i19.CartResponse cart;

  @override
  String toString() {
    return 'CheckOutRouteArgs{key: $key, cart: $cart}';
  }
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomeScreen();
    },
  );
}

/// generated route for
/// [_i6.LayoutScreen]
class LayoutRoute extends _i15.PageRouteInfo<void> {
  const LayoutRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LayoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'LayoutRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i6.LayoutScreen();
    },
  );
}

/// generated route for
/// [_i7.LoginScreen]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i7.LoginScreen();
    },
  );
}

/// generated route for
/// [_i8.MainAccountScreen]
class MainAccountRoute extends _i15.PageRouteInfo<MainAccountRouteArgs> {
  MainAccountRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          MainAccountRoute.name,
          args: MainAccountRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MainAccountRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MainAccountRouteArgs>(
          orElse: () => const MainAccountRouteArgs());
      return _i8.MainAccountScreen(key: args.key);
    },
  );
}

class MainAccountRouteArgs {
  const MainAccountRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'MainAccountRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.MyOrdersScreen]
class MyOrdersRoute extends _i15.PageRouteInfo<void> {
  const MyOrdersRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MyOrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyOrdersRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i9.MyOrdersScreen();
    },
  );
}

/// generated route for
/// [_i10.NotAuthMainAccountScreen]
class NotAuthMainAccountRoute extends _i15.PageRouteInfo<void> {
  const NotAuthMainAccountRoute({List<_i15.PageRouteInfo>? children})
      : super(
          NotAuthMainAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotAuthMainAccountRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i10.NotAuthMainAccountScreen();
    },
  );
}

/// generated route for
/// [_i11.PaymentScreen]
class PaymentRoute extends _i15.PageRouteInfo<void> {
  const PaymentRoute({List<_i15.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i11.PaymentScreen();
    },
  );
}

/// generated route for
/// [_i12.ProductDetailsScreen]
class ProductDetailsRoute extends _i15.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    _i16.Key? key,
    required int productId,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          ProductDetailsRoute.name,
          args: ProductDetailsRouteArgs(
            key: key,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailsRouteArgs>();
      return _i12.ProductDetailsScreen(
        key: args.key,
        productId: args.productId,
      );
    },
  );
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({
    this.key,
    required this.productId,
  });

  final _i16.Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i13.SearchScreen]
class SearchRoute extends _i15.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i16.Key? key,
    String? categoryId,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            categoryId: categoryId,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SearchRouteArgs>(orElse: () => const SearchRouteArgs());
      return _i13.SearchScreen(
        key: args.key,
        categoryId: args.categoryId,
      );
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.categoryId,
  });

  final _i16.Key? key;

  final String? categoryId;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, categoryId: $categoryId}';
  }
}

/// generated route for
/// [_i14.SignupScreen]
class SignupRoute extends _i15.PageRouteInfo<void> {
  const SignupRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i14.SignupScreen();
    },
  );
}
