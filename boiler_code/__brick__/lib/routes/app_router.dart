import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/routes/app_route_paths.dart';
import 'package:{{name.snakeCase()}}/routes/app_routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutePaths.home,
    routes: appRoutes,
  );
}
