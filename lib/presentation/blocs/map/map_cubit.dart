import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart' as geo;
import 'package:logger/logger.dart';
import 'package:map_test/config/config.dart';
import 'package:map_test/domain/domain.dart';
import 'package:map_test/infrastructure/infrastructure.dart';
import 'package:map_test/presentation/presentation.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart' as mb;
import 'package:stream_transform/stream_transform.dart';

part 'map_cubit.freezed.dart';
part 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  final Logger _logger;
  final GpsCubit _gpsCubit;
  final MapGraphicService _graphicService;
  final MapDistanceService _distanceService;

  late final mb.MapboxMap _map;
  StreamSubscription<geo.Position>? _locationSub;

  MapCubit({
    required Logger logger,
    required GpsCubit gpsCubit,
    required MapGraphicService graphicService,
    required MapDistanceService distanceService,
  }) : _logger = logger,
       _gpsCubit = gpsCubit,
       _graphicService = graphicService,
       _distanceService = distanceService,
       super(const MapState());

  Future<void> onMapCreated(mb.MapboxMap map, {bool dottedLine = false, bool showUserLocation = false}) async {
    _map = map;
    final userPosition = await _gpsCubit.getCurrentLocation();
    final cameraOptions = state.cameraOptions.copyWith(center: userPosition);

    await _graphicService.setupAnnotationManager(map, dottedLine: dottedLine);
    await _map.setCamera(cameraOptions.mapbox);

    emit(state.copyWith(cameraOptions: cameraOptions, mapReady: true));
    if (showUserLocation) _configLocationPuck(_map);
  }

  Future<void> addPoint([MapPoint? point]) async {
    if (!state.mapReady) return;
    _logger.d('Adding point');
    final newPoint = point ?? await _getCameraCenterPoint();
    final newPoints = state.points.addWithOrder(newPoint);
    await _graphicService.updateGraphics(newPoints);
    final info = _distanceService.calculateInfo(newPoints);
    emit(state.copyWith(points: newPoints, info: info));
  }

  Future<void> removeLastPoint() async {
    if (!state.mapReady) return;

    if (state.points.isEmpty) {
      _emitError('No points to remove', warning: true);
      return;
    }

    final newPoints = state.points.excludeLast();
    await _graphicService.updateGraphics(newPoints);
    final info = _distanceService.calculateInfo(newPoints);
    emit(state.copyWith(points: newPoints, info: info));
  }

  void startTracking() {
    emit(state.copyWith(mode: MapMode.trace, isFollowing: true, cameraOptions: state.cameraOptions.copyWith(zoom: 18)));

    _locationSub = _gpsCubit.listenLocationChanges().throttle(const Duration(seconds: 5)).listen((position) async {
      final mapPoint = MapPoint.fromPosition(position).copyWith(type: MapPointType.trace);
      final cameraOptions = state.cameraOptions.copyWith(center: mapPoint);
      final newPoints = state.points.addWithOrder(mapPoint);
      final info = _distanceService.calculateInfo(newPoints);
      emit(state.copyWith(cameraOptions: cameraOptions, points: newPoints, info: info));
      await _graphicService.updateTrace(newPoints);
      if (state.isFollowing) await centerCamera();
    });
  }

  void stopTracking() {
    _locationSub?.cancel();
    _locationSub = null;
  }

  Future<void> centerCamera() async {
    if (!state.mapReady) return;
    final userLocation = await _gpsCubit.getCurrentLocation();
    final cameraOptions = state.cameraOptions.copyWith(center: userLocation, zoom: Constants.kDefaultZoom + 2);
    await _map.flyTo(cameraOptions.mapbox, null);
  }

  void clearMessages() => emit(state.copyWith(errorMessage: null, warnMessage: null));

  void setFollowing(bool following) => emit(state.copyWith(isFollowing: following));

  void toggleFollowing({bool? value}) {
    final newValue = value ?? !state.isFollowing;
    emit(state.copyWith(isFollowing: newValue));
  }

  void _configLocationPuck(mb.MapboxMap map) {
    map.location.updateSettings(
      mb.LocationComponentSettings(enabled: true, pulsingEnabled: true, showAccuracyRing: true),
    );
  }

  Future<MapPoint> _getCameraCenterPoint() async {
    _logger.d('Getting camera center point');
    final cameraState = await _map.getCameraState();
    return MapPoint.fromMapboxPoint(cameraState.center);
  }

  void _emitError(String message, {Object? error, StackTrace? stackTrace, bool warning = false}) {
    _logger.e(message, error: error, stackTrace: stackTrace);
    warning ? emit(state.copyWith(warnMessage: message)) : emit(state.copyWith(errorMessage: message));
  }

  @override
  Future<void> close() {
    stopTracking();
    return super.close();
  }
}
