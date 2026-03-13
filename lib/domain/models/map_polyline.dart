import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_test/domain/models/map_point.dart';

part 'map_polyline.freezed.dart';

@freezed
abstract class MapPolyline with _$MapPolyline {
  const factory MapPolyline({
    @Default('') String id,
    @Default([]) List<MapPoint> points,
    @Default(false) bool dotted,
    @Default(Colors.white) Color color,
    @Default(3.0) double width,
  }) = _MapPolyline;

  const MapPolyline._();
}
