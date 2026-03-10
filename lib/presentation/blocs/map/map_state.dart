part of 'map_cubit.dart';

@freezed
abstract class MapState with _$MapState {
  const factory MapState({@Default(false) bool mapReady}) = _MapState;
}
