import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/routing/app_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router_provider.g.dart';

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) {
  return AppRouter();
}
