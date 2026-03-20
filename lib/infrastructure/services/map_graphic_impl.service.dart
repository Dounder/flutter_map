import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:map_test/domain/models/map_point.dart';
import 'package:map_test/infrastructure/infrastructure.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

/// Implementation of [MapGraphicService] using Mapbox Annotation Managers.
class MapGraphicServiceImpl implements MapGraphicService {
  final Logger _logger;

  /// Manager for circle annotations (points/markers).
  late final CircleAnnotationManager _circleManager;

  /// Manager for polyline annotations (paths).
  late final PolylineAnnotationManager _polylineManager;

  /// Manager for polygon annotations (areas).
  late final PolygonAnnotationManager _polygonManager;

  /// Map of point IDs to their associated annotation IDs.
  final Map<String, List<String>> _points = {};

  /// The current polyline being rendered on the map.
  PolylineAnnotation? _polyline;

  /// The current polygon being rendered on the map.
  PolygonAnnotation? _polygon;

  /// Creates a [MapGraphicServiceImpl] with the provided [logger].
  MapGraphicServiceImpl({required Logger logger}) : _logger = logger;

  @override
  void clear(MapGraphicType type) {
    switch (type) {
      case MapGraphicType.point:
        _circleManager.deleteAll();
        _points.clear();
        break;
      case MapGraphicType.polyline:
        _polylineManager.deleteAll();
        _polyline = null;
        break;
      case MapGraphicType.polygon:
        _polygonManager.deleteAll();
        _polygon = null;
        break;
    }
  }

  @override
  void clearAll() {
    _circleManager.deleteAll();
    _polylineManager.deleteAll();
    _polygonManager.deleteAll();
  }

  @override
  Future<void> setupAnnotationManager(MapboxMap map, {bool dottedLine = false}) async {
    _circleManager = await map.annotations.createCircleAnnotationManager();
    _polylineManager = await map.annotations.createPolylineAnnotationManager();
    _polygonManager = await map.annotations.createPolygonAnnotationManager();

    if (dottedLine) {
      await _polylineManager.setLineDasharray([1.5, 1.5]);
      await _polylineManager.setLineCap(LineCap.ROUND);
    }

    _logger.d('Annotation manager finish setup');
  }

  @override
  Future<void> updateGraphics(List<MapPoint> points) async {
    if (points.isEmpty) {
      _logger.d('Points are empty, clearing all graphics');
      clearAll();
      return;
    }

    switch (points.length) {
      case 1:
        await _addPoint(points.first);
        clear(MapGraphicType.polyline);
        clear(MapGraphicType.polygon);
        break;
      case 2:
        // Remove the first point graphic because it not necessary
        await _removePoint(points.first);
        await _addPolyline(points);
        clear(MapGraphicType.polygon);
        break;
      case >= 3:
        // Reuse polyline as polygon border (closed loop)
        await _addPolygon(points);
        await _addPolyline([...points, points.first]);
        break;
      default:
        throw Exception('Invalid number of points');
    }
  }

  @override
  Future<void> updateTrace(List<MapPoint> points) async {
    if (points.isEmpty) {
      _logger.d('Points are empty, clearing all graphics');
      clearAll();
      return;
    }

    await _addPoint(points.last);
    await _addPolyline(points);
  }

  /// Renders a [point] on the map as a circular marker.
  ///
  /// Creates multiple annotations for trace points to give them a glowing effect.
  Future<void> _addPoint(MapPoint point) async {
    if (point.type != MapPointType.trace) {
      final simplePoint = await _circleManager.create(point.toPointAnnotationOptions(size: 6));
      _points.putIfAbsent(point.id, () => []);
      _points[point.id]!.add(simplePoint.id);
    }

    final tracePoints = await Future.wait([
      _circleManager.create(point.toPointAnnotationOptions(size: 3)),
      _circleManager.create(point.toPointAnnotationOptions(size: 6, opacity: 0.5)),
    ]);
    _points.putIfAbsent(point.id, () => []);
    _points[point.id]!.addAll(tracePoints.map((e) => e.id));
  }

  /// Removes the graphics associated with a specific [point].
  Future<void> _removePoint(MapPoint point) async {
    final ids = _points[point.id];
    if (ids == null) return;

    // Remove all graphics associated with the point
    await Future.wait(
      ids.map((id) => _circleManager.delete(CircleAnnotation(id: id, geometry: point.toMapboxPoint()))),
    );
    // Remove the point from the internal map
    _points.remove(point.id);
  }

  /// Renders a path on the map based on the provided [points].
  ///
  /// Uses the specified [color] for the line. Updates the existing polyline
  /// if one is already present.
  Future<void> _addPolyline(List<MapPoint> points, {Color color = Colors.white}) async {
    if (points.length < 2) return;

    final linePoints = points.map((e) => e.toMapboxPoint()).toList();

    if (_polyline != null) {
      _polyline!.geometry = LineString.fromPoints(points: linePoints);
      await _polylineManager.update(_polyline!);
      return;
    }

    _polyline = await _polylineManager.create(
      PolylineAnnotationOptions(
        geometry: LineString.fromPoints(points: linePoints),
        lineColor: color.toARGB32(),
        lineWidth: 3,
      ),
    );
  }

  /// Renders an enclosed area on the map based on the provided [points].
  ///
  /// Uses the specified [color] for the fill. Updates the existing polygon
  /// if one is already present.
  Future<void> _addPolygon(List<MapPoint> points, {Color color = Colors.white}) async {
    final polygonPoints = points.map((e) => e.toMapboxPoint()).toList();

    if (_polygon != null) {
      _polygon!.geometry = Polygon.fromPoints(points: [polygonPoints]);
      await _polygonManager.update(_polygon!);
      return;
    }

    _polygon = await _polygonManager.create(
      PolygonAnnotationOptions(
        geometry: Polygon.fromPoints(points: [polygonPoints]),
        fillColor: color.toARGB32(),
        fillOpacity: 0.3,
      ),
    );
  }
}
