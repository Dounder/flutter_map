import 'package:flutter_placeholder/infrastructure/infrastructure.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KvStorageServiceImpl implements KvStorageService {
  final Logger _logger;

  Future<SharedPreferences> getInstance() async => await SharedPreferences.getInstance();

  KvStorageServiceImpl({required Logger logger}) : _logger = logger;

  @override
  Future<T?> get<T>(String key) async {
    _logger.d('Getting value for key: $key of type: $T');
    final prefs = await getInstance();

    return switch (T) {
      const (int) => prefs.getInt(key) as T?,
      const (double) => prefs.getDouble(key) as T?,
      const (String) => prefs.getString(key) as T?,
      const (bool) => prefs.getBool(key) as T?,
      const (List<String>) => prefs.getStringList(key) as T?,
      _ => throw Exception('Type $T not supported'),
    };
  }

  @override
  Future<bool> remove(String key) async {
    _logger.d('Removing value for key: $key');
    final prefs = await getInstance();
    return prefs.remove(key);
  }

  @override
  Future<void> set<T>(String key, T value) async {
    _logger.d('Setting value for key: $key of type: $T to value: $value');
    final prefs = await getInstance();

    switch (T) {
      case const (int):
        await prefs.setInt(key, value as int);
        break;
      case const (double):
        await prefs.setDouble(key, value as double);
        break;
      case const (String):
        await prefs.setString(key, value as String);
        break;
      case const (bool):
        await prefs.setBool(key, value as bool);
        break;
      case const (List<String>):
        await prefs.setStringList(key, value as List<String>);
        break;
      default:
        throw Exception('Type $T not supported');
    }
  }
}
