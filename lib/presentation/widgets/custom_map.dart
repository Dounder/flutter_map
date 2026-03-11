import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_placeholder/config/config.dart';
import 'package:flutter_placeholder/domain/domain.dart';
import 'package:flutter_placeholder/infrastructure/infrastructure.dart';
import 'package:flutter_placeholder/presentation/presentation.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class CustomMap extends StatelessWidget {
  const CustomMap({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    // final map = context.watch<MapCubit>();
    final gps = context.watch<GpsCubit>();
    final isLoading = gps.state.loading /* || map.state.loading */;

    if (isLoading) return const Center(child: CircularProgressIndicator());

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

    return _buildMap();
  }

  Widget _buildMap() => MapWidget(
    styleUri: MapboxStyles.SATELLITE_STREETS,
    cameraOptions: CameraOptions(center: Point(coordinates: Position(-90.5588447, 14.6101772)), zoom: 15),
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
}
