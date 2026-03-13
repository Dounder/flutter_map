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
}
