import 'package:logger/logger.dart';
import 'package:map_test/domain/models/map_info.dart';
import 'package:map_test/domain/models/map_point.dart';
import 'package:map_test/infrastructure/infrastructure.dart';
import 'package:maps_toolkit/maps_toolkit.dart';

/// Implementation of [MapDistanceService] using the `maps_toolkit` package.
class MapDistanceServiceImpl implements MapDistanceService {
  final Logger _logger;

  /// Creates a [MapDistanceServiceImpl] with the provided [logger].
  MapDistanceServiceImpl({required Logger logger}) : _logger = logger;

  @override
  MapInfo calculateInfo(List<MapPoint> points) {
    if (points.isEmpty) {
      _logger.w('Map info requires at least 1 point, returning default info');
      return const MapInfo();
    }

    _logger.d('Calculating map info for ${points.length} points');
    return MapInfo(
      distance: _calculateDistance(points.first, points.last),
      area: _calculateArea(points),
      perimeter: _calculatePerimeter(points),
    );
  }

  /// Calculates the enclosed area of the polygon formed by [points] in square meters.
  ///
  /// Returns 0 if there are fewer than 3 points.
  double _calculateArea(List<MapPoint> points) {
    if (points.length < 3) {
      _logger.w('Area requires at least 3 points');
      return 0;
    }
    // Add the first point to the end to close the polygon
    final coords = [...points, points.first].map((e) => e.toLatLng()).toList();
    return SphericalUtil.computeArea(coords).toDouble();
  }

  /// Calculates the linear distance between two [MapPoint]s [p1] and [p2] in meters.
  double _calculateDistance(MapPoint p1, MapPoint p2) =>
      SphericalUtil.computeDistanceBetween(p1.toLatLng(), p2.toLatLng()).toDouble();

  /// Calculates the total perimeter length of the polygon formed by [points] in meters.
  ///
  /// Returns 0 if there are fewer than 3 points.
  double _calculatePerimeter(List<MapPoint> points) {
    if (points.length < 3) {
      _logger.w('Perimeter requires at least 3 points');
      return 0;
    }
    // Add the first point to the end to close the polygon
    final coords = [...points, points.first].map((e) => e.toLatLng()).toList();
    return SphericalUtil.computeLength(coords).toDouble();
  }
}
