// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart'
    as _i19;
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
import 'package:meat_empire/src/features/cart/domain/cart.dart' as _i22;
import 'package:meat_empire/src/features/cart/domain/cart_response.dart'
    as _i20;
import 'package:meat_empire/src/features/cart/domain/payment_entities/confirm_payment_response.dart'
    as _i23;
import 'package:meat_empire/src/features/cart/domain/slot.dart' as _i21;
import 'package:meat_empire/src/features/cart/presentation/cart_screen/cart_screen.dart'
    as _i2;
import 'package:meat_empire/src/features/cart/presentation/check_out/check_out_screen.dart'
    as _i4;
import 'package:meat_empire/src/features/cart/presentation/payment_screen/payment_screen.dart'
    as _i11;
import 'package:meat_empire/src/features/cart/presentation/payment_screen/payment_web_view.dart'
    as _i16;
import 'package:meat_empire/src/features/cart/presentation/payment_screen/success_payment_screen.dart'
    as _i15;
import 'package:meat_empire/src/features/categories/presentation/categories_screen/categories_screen.dart'
    as _i3;
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
class AccountRoute extends _i17.PageRouteInfo<AccountRouteArgs> {
  AccountRoute({
    _i18.Key? key,
    required _i19.UserProfile userProfile,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          AccountRoute.name,
          args: AccountRouteArgs(
            key: key,
            userProfile: userProfile,
          ),
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static _i17.PageInfo page = _i17.PageInfo(
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

  final _i18.Key? key;

  final _i19.UserProfile userProfile;

  @override
  String toString() {
    return 'AccountRouteArgs{key: $key, userProfile: $userProfile}';
  }
}

/// generated route for
/// [_i2.CartScreen]
class CartRoute extends _i17.PageRouteInfo<void> {
  const CartRoute({List<_i17.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i2.CartScreen();
    },
  );
}

/// generated route for
/// [_i3.CategoriesScreen]
class CategoriesRoute extends _i17.PageRouteInfo<void> {
  const CategoriesRoute({List<_i17.PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i3.CategoriesScreen();
    },
  );
}

/// generated route for
/// [_i4.CheckOutScreen]
class CheckOutRoute extends _i17.PageRouteInfo<CheckOutRouteArgs> {
  CheckOutRoute({
    _i18.Key? key,
    required _i20.CartResponse cart,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          CheckOutRoute.name,
          args: CheckOutRouteArgs(
            key: key,
            cart: cart,
          ),
          initialChildren: children,
        );

  static const String name = 'CheckOutRoute';

  static _i17.PageInfo page = _i17.PageInfo(
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

  final _i18.Key? key;

  final _i20.CartResponse cart;

  @override
  String toString() {
    return 'CheckOutRouteArgs{key: $key, cart: $cart}';
  }
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i17.PageRouteInfo<void> {
  const HomeRoute({List<_i17.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomeScreen();
    },
  );
}

/// generated route for
/// [_i6.LayoutScreen]
class LayoutRoute extends _i17.PageRouteInfo<void> {
  const LayoutRoute({List<_i17.PageRouteInfo>? children})
      : super(
          LayoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'LayoutRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i6.LayoutScreen();
    },
  );
}

/// generated route for
/// [_i7.LoginScreen]
class LoginRoute extends _i17.PageRouteInfo<void> {
  const LoginRoute({List<_i17.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i7.LoginScreen();
    },
  );
}

/// generated route for
/// [_i8.MainAccountScreen]
class MainAccountRoute extends _i17.PageRouteInfo<MainAccountRouteArgs> {
  MainAccountRoute({
    _i18.Key? key,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          MainAccountRoute.name,
          args: MainAccountRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MainAccountRoute';

  static _i17.PageInfo page = _i17.PageInfo(
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

  final _i18.Key? key;

  @override
  String toString() {
    return 'MainAccountRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.MyOrdersScreen]
class MyOrdersRoute extends _i17.PageRouteInfo<void> {
  const MyOrdersRoute({List<_i17.PageRouteInfo>? children})
      : super(
          MyOrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyOrdersRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i9.MyOrdersScreen();
    },
  );
}

/// generated route for
/// [_i10.NotAuthMainAccountScreen]
class NotAuthMainAccountRoute extends _i17.PageRouteInfo<void> {
  const NotAuthMainAccountRoute({List<_i17.PageRouteInfo>? children})
      : super(
          NotAuthMainAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotAuthMainAccountRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i10.NotAuthMainAccountScreen();
    },
  );
}

/// generated route for
/// [_i11.PaymentScreen]
class PaymentRoute extends _i17.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    _i18.Key? key,
    required _i21.Slot slot,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            slot: slot,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentRouteArgs>();
      return _i11.PaymentScreen(
        key: args.key,
        slot: args.slot,
      );
    },
  );
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    required this.slot,
  });

  final _i18.Key? key;

  final _i21.Slot slot;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, slot: $slot}';
  }
}

/// generated route for
/// [_i12.ProductDetailsScreen]
class ProductDetailsRoute extends _i17.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    _i18.Key? key,
    required int productId,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          ProductDetailsRoute.name,
          args: ProductDetailsRouteArgs(
            key: key,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static _i17.PageInfo page = _i17.PageInfo(
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

  final _i18.Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i13.SearchScreen]
class SearchRoute extends _i17.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i18.Key? key,
    String? categoryId,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            categoryId: categoryId,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i17.PageInfo page = _i17.PageInfo(
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

  final _i18.Key? key;

  final String? categoryId;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, categoryId: $categoryId}';
  }
}

/// generated route for
/// [_i14.SignupScreen]
class SignupRoute extends _i17.PageRouteInfo<void> {
  const SignupRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i14.SignupScreen();
    },
  );
}

/// generated route for
/// [_i15.SuccessPaymentScreen]
class SuccessPaymentRoute extends _i17.PageRouteInfo<SuccessPaymentRouteArgs> {
  SuccessPaymentRoute({
    _i18.Key? key,
    required _i22.Cart cart,
    required int orderId,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          SuccessPaymentRoute.name,
          args: SuccessPaymentRouteArgs(
            key: key,
            cart: cart,
            orderId: orderId,
          ),
          initialChildren: children,
        );

  static const String name = 'SuccessPaymentRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SuccessPaymentRouteArgs>();
      return _i15.SuccessPaymentScreen(
        key: args.key,
        cart: args.cart,
        orderId: args.orderId,
      );
    },
  );
}

class SuccessPaymentRouteArgs {
  const SuccessPaymentRouteArgs({
    this.key,
    required this.cart,
    required this.orderId,
  });

  final _i18.Key? key;

  final _i22.Cart cart;

  final int orderId;

  @override
  String toString() {
    return 'SuccessPaymentRouteArgs{key: $key, cart: $cart, orderId: $orderId}';
  }
}

/// generated route for
/// [_i16.WebViewScreen]
class WebViewRoute extends _i17.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    _i18.Key? key,
    required _i23.ConfirmPaymentResponse paymentResponse,
    required _i22.Cart cart,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          WebViewRoute.name,
          args: WebViewRouteArgs(
            key: key,
            paymentResponse: paymentResponse,
            cart: cart,
          ),
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WebViewRouteArgs>();
      return _i16.WebViewScreen(
        key: args.key,
        paymentResponse: args.paymentResponse,
        cart: args.cart,
      );
    },
  );
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    this.key,
    required this.paymentResponse,
    required this.cart,
  });

  final _i18.Key? key;

  final _i23.ConfirmPaymentResponse paymentResponse;

  final _i22.Cart cart;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, paymentResponse: $paymentResponse, cart: $cart}';
  }
}
