import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_test/core/core.dart';

part 'map_info.freezed.dart';

/// Represents metric geographical information calculated from map points.
@freezed
abstract class MapInfo with _$MapInfo {
  const MapInfo._();

  /// Creates a new [MapInfo] instance.
  const factory MapInfo({
    /// The linear distance between the first and last map point in meters (m).
    @Default(0) double distance,

    /// The enclosed area of the polygon formed by the map points in square meters (m²).
    @Default(0) double area,

    /// The total perimeter length of the polygon formed by the map points in meters (m).
    @Default(0) double perimeter,
  }) = _MapInfo;

  /// Returns the [area] in hectares (ha).
  double get areaInHectares => area / 10000;

  /// Returns the [distance] formatted to be legible by humans with suffixes (e.g., '1.2k m', '1.5m m').
  String get distanceLegible => '${NumberFormat.legible(distance)} m';

  /// Returns the [area] in hectares (ha) formatted to be legible by humans with suffix (e.g., '1.2k ha').
  String get areaLegible => '${NumberFormat.legible(areaInHectares)} ha';

  /// Returns the [perimeter] formatted to be legible by humans with suffixes (e.g., '1.2k m', '1.5m m').
  String get perimeterLegible => '${NumberFormat.legible(perimeter)} m';

  /// Returns the [distance] string formatted with commas as thousands separators (e.g., '1,200 m', '1,000,000.5 m').
  String get distanceWithCommas => '${NumberFormat.withCommas(distance)} m';

  /// Returns the [area] in hectares (ha) string formatted with commas as thousands separators (e.g., '1.2 ha').
  String get areaWithCommas => '${NumberFormat.withCommas(areaInHectares)} ha';

  /// Returns the [perimeter] string formatted with commas as thousands separators (e.g., '1,200 m', '1,000,000.5 m').
  String get perimeterWithCommas => '${NumberFormat.withCommas(perimeter)} m';
}
