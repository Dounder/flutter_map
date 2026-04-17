import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:map_test/core/extensions/extensions.dart';
import 'package:map_test/domain/domain.dart';
import 'package:map_test/infrastructure/services/map_download_service.dart';

part 'download_manager_cubit.freezed.dart';
part 'download_manager_state.dart';

class DownloadManagerCubit extends Cubit<DownloadManagerState> {
  final Logger _logger;
  final MapDownloadService _mapDownloadService;

  StreamSubscription<double>? _stylePackSub;
  StreamSubscription<double>? _tileRegionSub;

  @override
  void emit(DownloadManagerState state) {
    if (isClosed) return;
    super.emit(state);
  }

  DownloadManagerCubit({required Logger logger, required MapDownloadService mapDownloadService})
    : _logger = logger,
      _mapDownloadService = mapDownloadService,
      super(const DownloadManagerState());

  Future<void> startDownload({
    required BuildContext context,
    required List<MapPoint> points,
    required String regionName,
  }) async {
    if (points.isEmpty) {
      context.showWarning('Cannot download map if there are no polygon created');
      _logger.d('No points to download');
      return;
    }

    if (state.status == DownloadStatus.downloading) {
      context.showWarning('Download already in progress');
      _logger.d('Download already in progress');
      return;
    }

    context.showInfo('Starting download');
    _logger.d('Starting download, region: $regionName, points: ${points.length}');

    try {
      emit(state.copyWith(status: DownloadStatus.downloading));

      final stylePackDone = Completer<void>();
      final tileRegionDone = Completer<void>();

      _stylePackSub = _mapDownloadService.downloadStylePack().listen(
        (progress) => emit(state.copyWith(stylePackProgress: progress)),
        onDone: () {
          if (!stylePackDone.isCompleted) stylePackDone.complete();
        },
        onError: (e) {
          if (!stylePackDone.isCompleted) stylePackDone.completeError(e);
        },
        cancelOnError: true,
      );

      _tileRegionSub = _mapDownloadService
          .downloadTileRegion(regionName: regionName, points: points)
          .listen(
            (progress) => emit(state.copyWith(tileRegionProgress: progress)),
            onDone: () {
              if (!tileRegionDone.isCompleted) tileRegionDone.complete();
            },
            onError: (e) {
              if (!tileRegionDone.isCompleted) tileRegionDone.completeError(e);
            },
            cancelOnError: true,
          );

      await Future.wait([stylePackDone.future, tileRegionDone.future]);
      await _mapDownloadService.setConnected(false);
      emit(state.copyWith(status: DownloadStatus.downloaded));
      _logger.d('Download completed');
      if (context.mounted) context.showSuccess('Download completed');
    } catch (e) {
      _logger.e('Download failed', error: e);
      emit(state.copyWith(status: DownloadStatus.error, error: e.toString()));
      if (context.mounted) context.showError('Download failed');
    }
  }

  Future<void> reset() async {
    await _stylePackSub?.cancel();
    await _tileRegionSub?.cancel();
    await _mapDownloadService.setConnected(true);
    await _mapDownloadService.cleanUp();
    emit(const DownloadManagerState());
  }

  @override
  Future<void> close() async {
    await reset();
    return super.close();
  }
}
