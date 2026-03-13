import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:map_test/domain/domain.dart';
import 'package:map_test/infrastructure/infrastructure.dart';
import 'package:map_test/presentation/presentation.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart' hide LocationSettings, Position;

part 'map_cubit.freezed.dart';
part 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  final Logger _logger;
  final GpsCubit _gpsCubit;
  final MapGraphicService _graphicService;

  late final MapboxMap _map;

  MapCubit({required Logger logger, required GpsCubit gpsCubit, required MapGraphicService graphicService})
    : _logger = logger,
      _gpsCubit = gpsCubit,
      _graphicService = graphicService,
      super(const MapState());

  Future<void> onMapCreated(MapboxMap map) async {
    _map = map;
    final userPosition = await _gpsCubit.getCurrentLocation();
    final cameraOptions = CameraOptions(center: userPosition.toMapboxPoint(), zoom: state.zoom);
    await _graphicService.setupAnnotationManager(map);
    await _map.setCamera(cameraOptions);
    emit(state.copyWith(zoom: state.zoom, cameraOptions: cameraOptions, mapReady: true));
  }

  Future<void> addPoint([MapPoint? point]) async {
    _logger.d('Adding point');
    final newPoint = point ?? await _getCameraCenterPoint();
    final newPoints = state.points.addWithOrder(newPoint);
    await _graphicService.addPoint(newPoint);
    emit(state.copyWith(points: newPoints));
  }

  Future<void> removeLastPoint() async {
    if (state.points.isEmpty) {
      _emitError('No points to remove', warning: true);
      return;
    }

    final lastPoint = state.points.last;
    await _graphicService.removePoint(lastPoint);
    emit(state.copyWith(points: state.points.excludeLast()));
  }

  void switchMode(MapMode mode) {
    if (state.mode == mode) return;
    _graphicService.clearAll();
    emit(MapState(mode: mode));
  }

  Future<void> centerCamera() async {
    if (!state.mapReady || state.cameraOptions == null) return;
    await _map.flyTo(state.cameraOptions!, null);
  }

  void clearMessages() => emit(state.copyWith(errorMessage: null, warnMessage: null));

  Future<MapPoint> _getCameraCenterPoint() async {
    _logger.d('Getting camera center point');
    final cameraState = await _map.getCameraState();
    return MapPoint.fromMapboxPoint(cameraState.center);
  }

  void _emitError(String message, {Object? error, StackTrace? stackTrace, bool warning = false}) {
    _logger.e(message, error: error, stackTrace: stackTrace);
    warning ? emit(state.copyWith(warnMessage: message)) : emit(state.copyWith(errorMessage: message));
  }
}
