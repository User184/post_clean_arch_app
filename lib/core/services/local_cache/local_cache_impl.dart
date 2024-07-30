import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:placeholder_test/core/services/local_cache/local_cache.dart';

class LocalCacheImpl implements LocalCache {
  final secureStorage = const FlutterSecureStorage();

  // ---------------------------------------------------------------------------
  // Get token from cache
  @override
  Future<String?> getToken({required String key}) async {
    final token = await secureStorage.read(key: key);
    return token;
  }

  // ---------------------------------------------------------------------------
  // Save new token to cache
  @override
  Future<void> putToken({required String key, required String token}) async {
    await secureStorage.write(key: key, value: token);
  }

  // ---------------------------------------------------------------------------
  // Delete token
  @override
  Future<void> deleteToken({required String key}) async {
    await secureStorage.delete(key: key);
  }
}
