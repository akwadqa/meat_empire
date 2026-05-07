import 'dart:async';
import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/routing/app_router_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'deep_link_services.g.dart';

@Riverpod(keepAlive: true)
DeepLinkService deepLinkService(Ref ref) {
  return DeepLinkService(ref);
}

class DeepLinkService {
  final Ref _ref;
  DeepLinkService(this._ref);
  // static final DeepLinkService _instance = DeepLinkService._internal();
  // factory DeepLinkService() => _instance;
  // DeepLinkService._internal();

  final _appLinks = AppLinks();
  StreamSubscription<Uri>? _linkSubscription;

  //? Init :
  Future<void> initDeepLinks() async {
    debugPrint('Initializing Deep Link Service...');
    //? 1. معالجة الرابط الذي فتح التطبيق وهو مغلق تماماً (Cold Start)
    try {
      final initialUri = await _appLinks.getInitialLink();
      if (initialUri != null) {
        _handleNavigation(initialUri);
      }
    } catch (e) {
      debugPrint("Error fetching initial link: $e");
    }

    //? 2. الاستماع للروابط الجديدة والتطبيق في الخلفية (Background/Foreground)
    _linkSubscription = _appLinks.uriLinkStream.listen(
      (uri) {
        _handleNavigation(uri);
      },
      onError: (err) {
        debugPrint("Error on link stream: $err");
      },
    );
  }

  //? دالة تحليل الرابط وتوجيه المستخدم
  // void _handleNavigation(Uri uri) {
  //   debugPrint('تم استقبال رابط جديد: $uri');
  //   debugPrint('المسار (Path): ${uri.path}');
  //   debugPrint('المتغيرات (Query Params): ${uri.queryParameters}');

  //   //? مثال لتوجيه المستخدم بناءً على المسار
  //   //? ملاحظة: يفضل استخدام GlobalKey للملاحة أو استخدام GoRouter
  //   if (uri.path.contains('/product')) {
  //     final productId = uri.queryParameters['id'];
  //     debugPrint('push to product: $productId');
  //     // Navigator.pushNamed(context, '/product', arguments: productId);
  //   }
  // }

  void _handleNavigation(Uri uri) {
    String normalizedPath = normalizeIncomingUri(uri);

    debugPrint('المسار الموحد الموجه للتطبيق: $normalizedPath');

    if (normalizedPath.startsWith('/product')) {
      final uriObj = Uri.parse(normalizedPath);
      final productId = uriObj.queryParameters['id'];
      debugPrint('push to product: $productId');
      _ref
          .read(appRouterProvider)
          .goRouter
          .pushReplacement('/product', extra: productId);
    }
  }

  String normalizeIncomingUri(Uri u) {
    if (u.scheme == 'http' || u.scheme == 'https') {
      return Uri(
        path: u.path.isEmpty ? '/' : u.path,
        // نمرر معاملات البحث (Query Parameters) إن وجدت (مثلاً ?id=5)
        queryParameters: u.queryParameters.isEmpty ? null : u.queryParameters,
      ).toString();
    }

    if (u.scheme == 'meat-empire') {
      final path = u.host.isEmpty ? u.path : '/${u.host}${u.path}';

      return Uri(
        path: path.startsWith('/') ? path : '/$path',
        queryParameters: u.queryParameters.isEmpty ? null : u.queryParameters,
      ).toString();
    }

    return u.toString();
  }

  void dispose() {
    _linkSubscription?.cancel();
  }
}
