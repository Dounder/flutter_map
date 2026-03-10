import 'package:flutter_dotenv/flutter_dotenv.dart';

class Envs {
  static String mapBoxApi = dotenv.env['MAPBOX_API_KEY'] ?? '';
}
