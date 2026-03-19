import 'package:flutter/material.dart';
import 'package:map_test/domain/domain.dart';
import 'package:map_test/presentation/presentation.dart';

final List<HomeRoute> homeRoutes = [
  const HomeRoute(title: 'Map', icon: Icons.map_rounded, subtitle: 'Go to MapScreen', routeName: MapScreen.name),
  const HomeRoute(
    title: 'Trace',
    icon: Icons.show_chart_rounded,
    subtitle: 'Go to TraceScreen',
    routeName: TraceScreen.name,
  ),
];
