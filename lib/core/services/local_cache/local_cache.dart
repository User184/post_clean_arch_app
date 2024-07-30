abstract class LocalCache {
  // Methods
  // -----------------------
  // Read tokens from cache
  Future<String?> getToken({required String key});

  // -----------------------
  // Put token to cache
  Future<void> putToken({required String key, required String token});

  // -----------------------
  // Delete token from cache
  Future<void> deleteToken({required String key});
}
