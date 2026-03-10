import 'package:flutter/material.dart';
import 'package:flutter_placeholder/domain/domain.dart';
import 'package:flutter_placeholder/presentation/presentation.dart';

final List<HomeRoute> homeRoutes = [
  const HomeRoute(
    title: 'Map',
    icon: Icons.map_rounded,
    subtitle: 'Go to MapScreen',
    routeName: MapScreen.name,
  ),
];
