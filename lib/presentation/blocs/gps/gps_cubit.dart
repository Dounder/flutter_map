import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_placeholder/domain/domain.dart';
import 'package:flutter_placeholder/infrastructure/infrastructure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';

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

  void setHasGpsPermission(bool hasPermission) {
    _logger.d('GPS permission status updated: ${hasPermission ? 'granted' : 'denied'}');
    emit(state.copyWith(hasGpsPermission: hasPermission));
  }

  @override
  Future<void> close() {
    _gpsStatusSub.cancel();
    return super.close();
  }
}
