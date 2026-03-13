import 'package:map_test/domain/domain.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

enum MapGraphicType { point, polyline, polygon }

abstract class MapGraphicService {
  Future<void> setupAnnotationManager(MapboxMap map);
  void clear(MapGraphicType type);
  void clearAll();

  Future<void> updateGraphics(List<MapPoint> points);
}
