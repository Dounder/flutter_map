import 'package:map_test/domain/domain.dart';
import 'package:uuid/uuid.dart';

/// Shared UUID instance for generating unique identifiers in table definitions
const uuid = Uuid();

/// Default position to use when the user's location is not available
const fallbackPosition = MapPoint(id: 'fallback');
