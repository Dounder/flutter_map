import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart' as geo;
import 'package:map_test/config/config.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart' as mb;
import 'package:maps_toolkit/maps_toolkit.dart';

part 'map_point.freezed.dart';

enum MapPointType { boundary, trace }

@freezed
abstract class MapPoint with _$MapPoint {
  const MapPoint._();

  const factory MapPoint({
    required String id,
    @Default(39.5) double lat,
    @Default(-98.0) double lng,
    @Default(0) double height,
    @JsonKey(includeFromJson: false, includeToJson: false) @Default(Colors.white) Color color,
    @Default(0) int order,
    DateTime? createdAt,
    @Default(MapPointType.boundary) MapPointType type,
  }) = _MapPoint;

  factory MapPoint.create() => MapPoint(id: uuid.v4());

  factory MapPoint.fromPosition(geo.Position position) => MapPoint(
    id: uuid.v4(),
    lat: position.latitude,
    lng: position.longitude,
    height: position.altitude,
    createdAt: position.timestamp,
  );

  factory MapPoint.fromMapboxPoint(mb.Point point) => MapPoint(
    id: uuid.v4(),
    lat: point.coordinates.lat.toDouble(),
    lng: point.coordinates.lng.toDouble(),
    height: point.coordinates.alt?.toDouble() ?? 0,
    createdAt: DateTime.now(),
  );

  mb.Point toMapboxPoint() => mb.Point(coordinates: mb.Position(lng, lat));

  mb.CircleAnnotationOptions toPointAnnotationOptions({double size = 4, double opacity = 1}) =>
      mb.CircleAnnotationOptions(
        geometry: toMapboxPoint(),
        circleColor: color.withValues(alpha: opacity).toARGB32(),
        circleRadius: size,
      );

  LatLng toLatLng() => LatLng(lat, lng);

  @override
  String toString() =>
      'MapPoint(lat: $lat, lng: $lng, height: $height, color: ${color.toARGB32()}, order: $order, createdAt: $createdAt, type: $type)';
}
