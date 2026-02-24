
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'new_router/go_route.dart';

part 'app_router_provider.g.dart';

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) {
  return AppRouter(ref);
}
