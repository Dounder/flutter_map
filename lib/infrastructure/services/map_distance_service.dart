import 'package:map_test/domain/domain.dart';

/// Service responsible for calculating geographical metrics from map points.
abstract class MapDistanceService {
  /// Calculates comprehensive map information (distance, area, perimeter) from a list of [points].
  ///
  /// The [points] are expected to be in order. For area and perimeter calculations,
  /// at least 3 points are required to form a polygon.
  MapInfo calculateInfo(List<MapPoint> points);
}
