import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_bounding_box.freezed.dart';

@freezed
abstract class MapBoundingBox with _$MapBoundingBox {
  const MapBoundingBox._();

  const factory MapBoundingBox({
    required double minLat,
    required double minLng,
    required double maxLat,
    required double maxLng,
  }) = _MapBoundingBox;

  List<List<List<double>>> toCoordinates() => [
    [
      [minLng, minLat],
      [maxLng, minLat],
      [maxLng, maxLat],
      [minLng, maxLat],
      [minLng, minLat],
    ],
  ];
}
