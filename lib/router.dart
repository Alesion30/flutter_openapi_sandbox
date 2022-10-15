import 'package:flutter_openapi_sandbox/ui/pages/user.dart';
import 'package:flutter_openapi_sandbox/ui/pages/users.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final routerProvider = Provider((ref) {
  return GoRouter(
    initialLocation: '/users',
    routes: [
      GoRoute(
        path: '/users',
        builder: (context, state) => const UsersPage(),
      ),
      GoRoute(
        path: '/users/:id',
        builder: (context, state) {
          final id = state.params['id']!;
          return UserPage(id);
        },
      ),
    ],
  );
});
