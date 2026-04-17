import 'package:map_test/domain/domain.dart';

abstract class MapDownloadService {
  Stream<double> downloadStylePack();
  Stream<double> downloadTileRegion({required String regionName, required List<MapPoint> points});
  Future<void> setConnected(bool connected);
  Future<void> cleanUp();
}
