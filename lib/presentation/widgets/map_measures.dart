import 'package:flutter/material.dart';
import 'package:map_test/domain/models/models.dart';

class MapMeasures extends StatelessWidget {
  final MapInfo info;

  const MapMeasures({super.key, required this.info});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    spacing: 16,
    children: [
      Expanded(
        child: _buildMetricCard(context, icon: Icons.filter_center_focus, label: 'Área:', value: info.areaLegible),
      ),
      Expanded(
        child: _buildMetricCard(
          context,
          icon: Icons.settings_overscan,
          label: 'Perímetro:',
          value: info.perimeterLegible,
        ),
      ),
    ],
  );

  Widget _buildMetricCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: colors.surfaceBright, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Icon(icon, color: colors.onSurfaceVariant),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: TextStyle(fontSize: 12, color: colors.onSurfaceVariant)),
              Text(
                value,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: colors.onSurface),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
