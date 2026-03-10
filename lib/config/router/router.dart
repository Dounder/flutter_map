import 'package:flutter_placeholder/presentation/presentation.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: _buildRoutes());

// Group routes by feature for better organization
List<RouteBase> _buildRoutes() => [
  // Core routes
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/map',
    name: MapScreen.name,
    builder: (context, state) => const MapScreen(),
  ),
];
