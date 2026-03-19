import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';
import 'package:map_test/domain/domain.dart';
import 'package:map_test/infrastructure/infrastructure.dart';

part 'gps_cubit.freezed.dart';
part 'gps_state.dart';

class GpsCubit extends Cubit<GpsState> {
  final Logger _logger;
  final PermissionService _permissionService;

  late StreamSubscription<ServiceStatus> _gpsStatusSub;

  GpsCubit({required Logger logger, required PermissionService permissionService})
    : _logger = logger,
      _permissionService = permissionService,
      super(const GpsState()) {
    logger.d('GpsCubit initialized');
    _init();
  }

  void setHasGpsPermission(bool hasPermission) {
    _logger.d('GPS permission status updated: ${hasPermission ? 'granted' : 'denied'}');
    emit(state.copyWith(hasGpsPermission: hasPermission));
  }

  Future<MapPoint> getCurrentLocation() async {
    if (!state.gpsEnabled || !state.hasGpsPermission) {
      _logger.w('GPS is not enabled or permission is not granted');
      return MapPoint.create();
    }

    final position = await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(accuracy: LocationAccuracy.high, timeLimit: Duration(seconds: 10)),
    );

    return MapPoint.fromPosition(position);
  }

  Stream<Position> listenLocationChanges() =>
      Geolocator.getPositionStream(locationSettings: const LocationSettings(accuracy: LocationAccuracy.high));

  Future<void> _init() async {
    final gpsEnabled = await _gpsStatus();
    final hasPermission = await _permissionService.checkPermissionStatus(PermissionType.location);
    emit(state.copyWith(loading: false, gpsEnabled: gpsEnabled, hasGpsPermission: hasPermission));
  }

  Future<bool> _gpsStatus() async {
    final isEnable = await Geolocator.isLocationServiceEnabled();
    _logger.d('Initial GPS status: ${isEnable ? 'enabled' : 'disabled'}');

    _gpsStatusSub = Geolocator.getServiceStatusStream().listen((event) {
      final gpsEnabled = event == ServiceStatus.enabled;
      _logger.d('GPS status changed: ${gpsEnabled ? 'enabled' : 'disabled'}');
      emit(state.copyWith(gpsEnabled: gpsEnabled));
    });

    return isEnable;
  }

  @override
  Future<void> close() {
    _gpsStatusSub.cancel();
    return super.close();
  }
}
