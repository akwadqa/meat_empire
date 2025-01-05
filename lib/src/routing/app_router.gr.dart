// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:meat_empire/src/features/account/presentation/account_screen/account_screen.dart'
    as _i1;
import 'package:meat_empire/src/features/auth/presentation/login_screen/login_screen.dart'
    as _i5;
import 'package:meat_empire/src/features/auth/presentation/signup_screen/signup_screen.dart'
    as _i8;
import 'package:meat_empire/src/features/cart/presentation/cart_screen/cart_screen.dart'
    as _i2;
import 'package:meat_empire/src/features/home/presentation/home_screen/home_screen.dart'
    as _i3;
import 'package:meat_empire/src/features/home/presentation/layout_screen/layout_screen.dart'
    as _i4;
import 'package:meat_empire/src/features/products/presentation/product_details_screen/product_details_screen.dart'
    as _i6;
import 'package:meat_empire/src/features/search/presentation/search_screen/search_screen.dart'
    as _i7;

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i9.PageRouteInfo<void> {
  const AccountRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountScreen();
    },
  );
}

/// generated route for
/// [_i2.CartScreen]
class CartRoute extends _i9.PageRouteInfo<void> {
  const CartRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.CartScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}

/// generated route for
/// [_i4.LayoutScreen]
class LayoutRoute extends _i9.PageRouteInfo<void> {
  const LayoutRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LayoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'LayoutRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.LayoutScreen();
    },
  );
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.LoginScreen();
    },
  );
}

/// generated route for
/// [_i6.ProductDetailsScreen]
class ProductDetailsRoute extends _i9.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    _i10.Key? key,
    required int productId,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          ProductDetailsRoute.name,
          args: ProductDetailsRouteArgs(
            key: key,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailsRouteArgs>();
      return _i6.ProductDetailsScreen(
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

  final _i10.Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i7.SearchScreen]
class SearchRoute extends _i9.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i10.Key? key,
    String? categoryId,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            categoryId: categoryId,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SearchRouteArgs>(orElse: () => const SearchRouteArgs());
      return _i7.SearchScreen(
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

  final _i10.Key? key;

  final String? categoryId;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, categoryId: $categoryId}';
  }
}

/// generated route for
/// [_i8.SignupScreen]
class SignupRoute extends _i9.PageRouteInfo<void> {
  const SignupRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.SignupScreen();
    },
  );
}
