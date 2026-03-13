import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_test/domain/models/map_point.dart';

part 'map_polygon.freezed.dart';

@freezed
abstract class MapPolygon with _$MapPolygon {
  const factory MapPolygon({
    required String id,
    required List<MapPoint> points,
    @Default(Colors.white) Color fillColor,
    @Default(Colors.white) Color outlineColor,
    @Default(false) bool outlineDotted,
  }) = _MapPolygon;

  const MapPolygon._();
}
