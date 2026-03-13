abstract class KvStorageService {
  Future<T?> get<T>(String key);
  Future<void> set<T>(String key, T value);
  Future<bool> remove(String key);
}
