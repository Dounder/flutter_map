import 'package:map_test/domain/domain.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

/// Defines the types of graphics that can be rendered on the map.
enum MapGraphicType {
  /// A circular marker representing a specific point.
  point,

  /// A series of connected lines representing a path or route.
  polyline,

  /// A closed shape representing an area or territory.
  polygon,
}

/// Service responsible for managing visual annotations (graphics) on the map.
abstract class MapGraphicService {
  /// Sets up the annotation managers for the provided [map].
  ///
  /// If [dottedLine] is true, sets a dashed pattern for polylines.
  Future<void> setupAnnotationManager(MapboxMap map, {bool dottedLine = false});

  /// Removes all graphics of the specified [type] from the map.
  void clear(MapGraphicType type);

  /// Removes all graphics of all types from the map.
  void clearAll();

  /// Updates the map graphics based on the provided list of [points].
  ///
  /// Automatically handles transitions between point, polyline, and polygon
  /// depending on the number of points in the list.
  Future<void> updateGraphics(List<MapPoint> points);

  /// Updates the trace (live tracking) graphics on the map.
  Future<void> updateTrace(List<MapPoint> points);
}
