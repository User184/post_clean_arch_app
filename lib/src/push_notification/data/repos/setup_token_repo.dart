import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:placeholder_test/core/services/local_cache/local_cache.dart';
import 'package:placeholder_test/core/services/local_cache/local_cache_impl.dart';
import 'package:placeholder_test/main.dart';

class SetupTokenRepo {
  Future<void> setupToken() async {
    // Get the token each time the application loads
    String? token = await FirebaseMessaging.instance.getToken();
    log.i('object22: token: $token');

    final LocalCache localCache = LocalCacheImpl();
    final localToken = await localCache.getToken(key: 'tokenFCM');

    log.i('object22: localToken: $localToken');

    // Refresh token
    if (token != null && localToken?.compareTo(token) != 0) {
      await saveTokenToLocalCache(token);

      // TODO: send request with new token to server
    }

    // Any time the token refreshes, store this in the database too.
    // FirebaseMessaging.instance.onTokenRefresh.listen(saveTokenToLocalCache);
  }

  // Save the initial token to the local cache
  Future<void> saveTokenToLocalCache(String token) async {
    final LocalCache localCache = LocalCacheImpl();
    log.i('object22: saveTokenToLocalCache: token: $token');
    await localCache.putToken(key: 'tokenFCM', token: token);
  }
}
