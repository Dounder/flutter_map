import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_test/config/config.dart';
import 'package:map_test/domain/domain.dart';
import 'package:map_test/infrastructure/infrastructure.dart';
import 'package:map_test/presentation/presentation.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class CustomMap extends StatelessWidget {
  final bool showCrosshair;
  final EdgeInsets padding;
  final bool startTracking;
  final bool dottedLine;

  const CustomMap({
    super.key,
    this.showCrosshair = false,
    this.padding = EdgeInsets.zero,
    this.startTracking = false,
    this.dottedLine = false,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final gps = context.watch<GpsCubit>();
    final isLoading = gps.state.loading;

    if (isLoading) return const MapLoader();

    if (!gps.state.gpsEnabled) return _buildMessage(colors: colors, text: 'GPS is disabled', icon: Icons.gps_off);

    if (!gps.state.hasGpsPermission) {
      return _buildMessage(
        colors: colors,
        text: 'GPS permission is required',
        icon: Icons.location_off,
        cta: () async {
          final res = await locator<PermissionService>().requestPermission(
            context: context,
            type: PermissionType.location,
          );
          gps.setHasGpsPermission(res);
        },
      );
    }

    return _buildMap(context);
  }

  Widget _buildMap(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final mapCubit = context.watch<MapCubit>();
      // If padding was provided update the camera options
      final cameraOptions = mapCubit.state.cameraOptions.copyWith(padding: padding);

      return SizedBox(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        child: Stack(
          children: [
            Listener(
              onPointerMove: (event) => mapCubit.setFollowing(false),
              child: MapWidget(
                onMapCreated: (map) async {
                  await mapCubit.onMapCreated(map, dottedLine: dottedLine);
                  if (startTracking) mapCubit.startTracking();
                },
                styleUri: MapboxStyles.SATELLITE_STREETS,
                cameraOptions: cameraOptions.mapbox,
              ),
            ),

            if (showCrosshair && mapCubit.state.mapReady) const MapCrosshair(),
            _buildPlaceholder(mapCubit.state.mapReady),
          ],
        ),
      );
    },
  );

  Widget _buildMessage({
    required ColorScheme colors,
    required String text,
    required IconData icon,
    VoidCallback? cta,
  }) => Center(
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          Icon(icon, size: 64, color: colors.onSurface),
          Text(text, style: TextStyle(fontSize: 18, color: colors.onSurface)),
          if (cta != null) ElevatedButton(onPressed: cta, child: const Text('Enable')),
        ],
      ),
    ),
  );

  Widget _buildPlaceholder(bool mapReady) => IgnorePointer(
    child: FadeOut(
      animate: mapReady,
      delay: const Duration(milliseconds: 250),
      duration: const Duration(milliseconds: 500),
      child: const MapLoader(),
    ),
  );
}
