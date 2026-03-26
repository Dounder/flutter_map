import 'package:map_test/domain/domain.dart';

extension MapPointListExtension on List<MapPoint> {
  List<MapPoint> addWithOrder(MapPoint newPoint) {
    final newOrder = length + 1;
    final newPoints = newPoint.copyWith(order: newOrder);
    return [...this, newPoints];
  }

  List<MapPoint> excludeLast() {
    final newPoints = [...this];
    newPoints.removeLast();
    return newPoints;
  }

  MapBoundingBox toBoundingBox({double offset = 0.05}) {
    final minLat = map((e) => e.lat).reduce((a, b) => a < b ? a : b);
    final minLng = map((e) => e.lng).reduce((a, b) => a < b ? a : b);
    final maxLat = map((e) => e.lat).reduce((a, b) => a > b ? a : b);
    final maxLng = map((e) => e.lng).reduce((a, b) => a > b ? a : b);
    return MapBoundingBox(
      minLat: minLat - offset,
      minLng: minLng - offset,
      maxLat: maxLat + offset,
      maxLng: maxLng + offset,
    );
  }
}
