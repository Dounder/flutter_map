import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:uuid/uuid.dart';

/// Shared UUID instance for generating unique identifiers in table definitions
const uuid = Uuid();

class Envs {
  static String mapBoxApi = dotenv.env['MAPBOX_API_KEY'] ?? '';
}
