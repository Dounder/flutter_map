import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_placeholder/config/config.dart';
import 'package:flutter_placeholder/presentation/presentation.dart';
import 'package:go_router/go_router.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  static const name = 'map_screen';

  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: BlocProvider(
      create: (context) => locator<MapCubit>(),
      child: const _View(),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    floatingActionButton: FloatingActionButton(
      onPressed: () => context.pop(),
      child: const Icon(Icons.arrow_back_ios_outlined),
    ),
  );
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) => MapWidget(
    styleUri: MapboxStyles.SATELLITE_STREETS,
    cameraOptions: CameraOptions(
      center: Point(coordinates: Position(-90.5588447, 14.6101772)),
      zoom: 15,
    ),
  );
}
