import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:placeholder_test/src/push_notification/domain/repos/Interacted_message_repo.dart';

class InteractedMessageRepoImpl implements InteractedMessageRepo {
  RemoteMessage? _initialMessage;

  @override
  RemoteMessage? get initialMessage => _initialMessage;

  // When the application is opened from a background state
  @override
  Stream<RemoteMessage> get onMessageOpenedApp =>
      FirebaseMessaging.onMessageOpenedApp;

  // If the application is opened from a terminated state
  @override
  Future<void> setupInteractedMessage() async {
    _initialMessage = await FirebaseMessaging.instance.getInitialMessage();
  }
}
