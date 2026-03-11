part of 'gps_cubit.dart';

@freezed
abstract class GpsState with _$GpsState {
  const factory GpsState({
    @Default(true) bool loading,
    @Default(false) bool gpsEnabled,
    @Default(false) bool hasGpsPermission,
  }) = _GpsState;
}
