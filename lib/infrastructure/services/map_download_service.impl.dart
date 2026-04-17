import 'dart:async';

import 'package:logger/logger.dart';
import 'package:map_test/config/config.dart';
import 'package:map_test/domain/domain.dart';
import 'package:map_test/infrastructure/infrastructure.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart' as mb;

const String stylePack = mb.MapboxStyles.SATELLITE_STREETS;

class MapDownloadServiceImpl implements MapDownloadService {
  final Logger _logger;
  late final mb.TileStore _tileStore;
  late final mb.OfflineManager _offlineManager;

  MapDownloadServiceImpl({required Logger logger}) : _logger = logger {
    init();
  }

  Future<void> init() async {
    _logger.d('Initializing MapDownloadService');
    _tileStore = await mb.TileStore.createDefault();
    _offlineManager = await mb.OfflineManager.create();
    _tileStore.setDiskQuota(null);
    _logger.d('MapDownloadService initialized');
  }

  @override
  Stream<double> downloadStylePack() {
    _logger.d('Downloading style pack: $stylePack');
    final controller = StreamController<double>();
    final options = mb.StylePackLoadOptions(
      glyphsRasterizationMode: mb.GlyphsRasterizationMode.IDEOGRAPHS_RASTERIZED_LOCALLY,
      metadata: {'style': stylePack},
      acceptExpired: false,
    );

    _offlineManager
        .loadStylePack(stylePack, options, (progress) {
          final pct = progress.completedResourceCount / progress.requiredResourceCount;
          if (!controller.isClosed) controller.add(pct);
        })
        .then((_) {
          controller.add(1);
          controller.close();
        })
        .catchError((error) {
          if (controller.isClosed) return;
          controller.addError(error);
          controller.close();
        });

    return controller.stream;
  }

  @override
  Stream<double> downloadTileRegion({required String regionName, required List<MapPoint> points}) {
    if (points.isEmpty) {
      return Stream.value(0);
    }

    _logger.d('Downloading tile region: $regionName for ${points.length} points');
    final controller = StreamController<double>();
    final geometry = {'type': 'Polygon', 'coordinates': points.toBoundingBox().toCoordinates()};

    final options = mb.TileRegionLoadOptions(
      geometry: geometry,
      descriptorsOptions: [
        mb.TilesetDescriptorOptions(styleURI: stylePack, minZoom: Constants.kMinZoom, maxZoom: Constants.kMaxZoom),
      ],
      acceptExpired: false,
      networkRestriction: mb.NetworkRestriction.NONE,
    );

    _tileStore
        .loadTileRegion(regionName, options, (progress) {
          final pct = progress.completedResourceCount / progress.requiredResourceCount;
          if (!controller.isClosed) controller.add(pct);
        })
        .then((_) {
          controller.add(1);
          controller.close();
        })
        .catchError((error) {
          if (controller.isClosed) return;
          controller.addError(error);
          controller.close();
        });

    return controller.stream;
  }

  @override
  Future<void> setConnected(bool connected) => mb.OfflineSwitch.shared.setMapboxStackConnected(connected);

  @override
  Future<void> cleanUp() async {
    _tileStore.setDiskQuota(0);
    await _offlineManager.removeStylePack(stylePack);
  }
}
