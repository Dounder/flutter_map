import 'package:map_test/domain/domain.dart';
import 'package:uuid/uuid.dart';

class Constants {
  /// Shared UUID instance for generating unique identifiers in table definitions
  static const Uuid uuid = Uuid();

  /// Default position to use when the user's location is not available
  static const MapPoint fallbackPosition = MapPoint(id: 'fallback');
  static const double kDefaultZoom = 16;
  static const int kMaxZoom = 20;
  static const int kMinZoom = 15;
}
