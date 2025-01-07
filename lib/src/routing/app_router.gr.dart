// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:meat_empire/src/features/account/presentation/account_screen/account_screen.dart'
    as _i1;
import 'package:meat_empire/src/features/auth/presentation/login_screen/login_screen.dart'
    as _i6;
import 'package:meat_empire/src/features/auth/presentation/signup_screen/signup_screen.dart'
    as _i9;
import 'package:meat_empire/src/features/cart/presentation/cart_screen/cart_screen.dart'
    as _i2;
import 'package:meat_empire/src/features/categories/presentation/categories_screen/categories_screen.dart'
    as _i3;
import 'package:meat_empire/src/features/home/domain/home/category/category.dart'
    as _i12;
import 'package:meat_empire/src/features/home/presentation/home_screen/home_screen.dart'
    as _i4;
import 'package:meat_empire/src/features/home/presentation/layout_screen/layout_screen.dart'
    as _i5;
import 'package:meat_empire/src/features/products/presentation/product_details_screen/product_details_screen.dart'
    as _i7;
import 'package:meat_empire/src/features/search/presentation/search_screen/search_screen.dart'
    as _i8;

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i10.PageRouteInfo<void> {
  const AccountRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountScreen();
    },
  );
}

/// generated route for
/// [_i2.CartScreen]
class CartRoute extends _i10.PageRouteInfo<void> {
  const CartRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i2.CartScreen();
    },
  );
}

/// generated route for
/// [_i3.CategoriesScreen]
class CategoriesRoute extends _i10.PageRouteInfo<CategoriesRouteArgs> {
  CategoriesRoute({
    _i11.Key? key,
    _i12.Category? category,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          CategoriesRoute.name,
          args: CategoriesRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CategoriesRouteArgs>(
          orElse: () => const CategoriesRouteArgs());
      return _i3.CategoriesScreen(
        key: args.key,
        category: args.category,
      );
    },
  );
}

class CategoriesRouteArgs {
  const CategoriesRouteArgs({
    this.key,
    this.category,
  });

  final _i11.Key? key;

  final _i12.Category? category;

  @override
  String toString() {
    return 'CategoriesRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i5.LayoutScreen]
class LayoutRoute extends _i10.PageRouteInfo<void> {
  const LayoutRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LayoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'LayoutRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i5.LayoutScreen();
    },
  );
}

/// generated route for
/// [_i6.LoginScreen]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i6.LoginScreen();
    },
  );
}

/// generated route for
/// [_i7.ProductDetailsScreen]
class ProductDetailsRoute extends _i10.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    _i11.Key? key,
    required int productId,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          ProductDetailsRoute.name,
          args: ProductDetailsRouteArgs(
            key: key,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailsRouteArgs>();
      return _i7.ProductDetailsScreen(
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

  final _i11.Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i8.SearchScreen]
class SearchRoute extends _i10.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i11.Key? key,
    String? categoryId,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            categoryId: categoryId,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SearchRouteArgs>(orElse: () => const SearchRouteArgs());
      return _i8.SearchScreen(
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

  final _i11.Key? key;

  final String? categoryId;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, categoryId: $categoryId}';
  }
}

/// generated route for
/// [_i9.SignupScreen]
class SignupRoute extends _i10.PageRouteInfo<void> {
  const SignupRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i9.SignupScreen();
    },
  );
}
