import 'package:go_router/go_router.dart';
import 'package:map_test/presentation/presentation.dart';

final appRouter = GoRouter(initialLocation: '/', routes: _buildRoutes());

// Group routes by feature for better organization
List<RouteBase> _buildRoutes() => [
  // Core routes
  GoRoute(path: '/', name: HomeScreen.name, builder: (context, state) => const HomeScreen()),
  GoRoute(path: '/map', name: MapScreen.name, builder: (context, state) => const MapScreen()),
  GoRoute(path: '/trace', name: TraceScreen.name, builder: (context, state) => const TraceScreen()),
  GoRoute(
    path: '/draggable-sheet-map',
    name: DraggableSheetMapScreen.name,
    builder: (context, state) => const DraggableSheetMapScreen(),
  ),
];

final bottomSheetMapInnerRouter = GoRouter(
  initialLocation: '/screen-1',
  routes: [
    GoRoute(path: '/screen-1', name: NestedOneScreen.name, builder: (context, state) => const NestedOneScreen()),
    GoRoute(path: '/screen-2', name: NestedTwoScreen.name, builder: (context, state) => const NestedTwoScreen()),
  ],
);
