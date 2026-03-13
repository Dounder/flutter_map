import 'package:logger/logger.dart';
import 'package:map_test/domain/models/map_point.dart';
import 'package:map_test/infrastructure/infrastructure.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class MapGraphicServiceImpl implements MapGraphicService {
  final Logger _logger;
  late final CircleAnnotationManager _circleAnnotationManager;
  late final PolylineAnnotationManager _polylineAnnotationManager;
  late final PolygonAnnotationManager _polygonAnnotationManager;

  final Map<String, List<String>> _pointAnnotations = {};

  MapGraphicServiceImpl({required Logger logger}) : _logger = logger;

  @override
  Future<void> setupAnnotationManager(MapboxMap map) async {
    _circleAnnotationManager = await map.annotations.createCircleAnnotationManager();
    _polylineAnnotationManager = await map.annotations.createPolylineAnnotationManager();
    _polygonAnnotationManager = await map.annotations.createPolygonAnnotationManager();
    _logger.d('Annotation manager finish setup');
  }

  @override
  Future<void> addPoint(MapPoint point) async {
    if (point.type != MapPointType.trace) {
      final simplePoint = await _circleAnnotationManager.create(point.toPointAnnotationOptions(size: 6));
      _pointAnnotations.putIfAbsent(point.id, () => []);
      _pointAnnotations[point.id]!.add(simplePoint.id);
    }

    final tracePoints = await Future.wait([
      _circleAnnotationManager.create(point.toPointAnnotationOptions(size: 3)),
      _circleAnnotationManager.create(point.toPointAnnotationOptions(size: 6, opacity: 0.5)),
    ]);
    _pointAnnotations.putIfAbsent(point.id, () => []);
    _pointAnnotations[point.id]!.addAll(tracePoints.map((e) => e.id));
  }

  @override
  Future<void> removePoint(MapPoint point) async {
    final ids = _pointAnnotations[point.id];
    if (ids == null) return;
    await Future.wait(
      ids.map((id) => _circleAnnotationManager.delete(CircleAnnotation(id: id, geometry: point.toMapboxPoint()))),
    );
    _pointAnnotations.remove(point.id);
  }

  @override
  void clear(MapGraphicType type) {
    switch (type) {
      case MapGraphicType.point:
        _circleAnnotationManager.deleteAll();
        break;
      case MapGraphicType.polyline:
        _polylineAnnotationManager.deleteAll();
        break;
      case MapGraphicType.polygon:
        _polygonAnnotationManager.deleteAll();
        break;
    }
  }

  @override
  void clearAll() {
    _circleAnnotationManager.deleteAll();
    _polylineAnnotationManager.deleteAll();
    _polygonAnnotationManager.deleteAll();
  }
}
