part of 'map_cubit.dart';

enum MapMode { boundary, trace }

@freezed
abstract class MapState with _$MapState {
  const MapState._();

  const factory MapState({
    @Default(false) bool mapReady,
    @Default(MapMode.boundary) MapMode mode,
    @Default([]) List<MapPoint> points,
    @Default(15.0) double zoom,
    @Default(null) CameraOptions? cameraOptions,

    @Default(null) String? errorMessage,
    @Default(null) String? warnMessage,
  }) = _MapState;

  bool get hasError => errorMessage != null;
  bool get hasWarn => warnMessage != null;
}
