// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:placeholder_test/main.dart';
import 'package:placeholder_test/src/push_notification/data/models/message_api_model.dart';
import 'package:placeholder_test/src/push_notification/domain/repos/background_message_repo.dart';

class BackgroundMessageRepoImpl extends BackgroundMessageRepo {
  MessageApiModel? _initialMessage;

  @override
  MessageApiModel? get initialMessage => _initialMessage;

  @override
  Future<void> setupInteractedMessage() async {
    // Handling messages whilst your application is in the background.
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    // If the application is opened from a terminated state
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      _initialMessage = toSerialization(initialMessage);
    }

    // When the application is opened from a background state
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage remoteMessage) {
      RemoteMessage _remoteMessage = remoteMessage;
      final message = toSerialization(_remoteMessage);
      addToStream(message);
    });
  }

  MessageApiModel toSerialization(RemoteMessage remoteMassage) {
    MessageApiModel message = MessageApiModel.fromJson(remoteMassage.data);
    return message;
  }
}

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  log.i(
      'InteractedMessageRepoImpl: firebaseMessagingBackgroundHandler, message: ${message.data}');
}
