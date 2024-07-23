import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:placeholder_test/src/push_notification/domain/repos/Interacted_message_repo.dart';

class InteractedMessageRepoImpl implements InteractedMessageRepo {
  RemoteMessage? _initialMessage;
  //Stream<RemoteMessage> _onMessageOpenedApp;

  @override
  RemoteMessage? get initialMessage => _initialMessage;

  @override
  Stream<RemoteMessage> get onMessageOpenedApp =>
      FirebaseMessaging.onMessageOpenedApp;

  @override
  Future<void> setupInteractedMessage() async {
    _initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    //_onMessageOpenedApp = FirebaseMessaging.onMessageOpenedApp;
    print('object22: setupInteractedMessage : $_initialMessage');
  }

  // Future<void> initMessage() async {
  //   // Get any messages which caused the application to open from
  //   // a terminated state.

  //   // If the message also contains a data property with a "type" of "chat",
  //   // navigate to a chat screen
  //   // if (initialMessage != null) {
  //   //   _handleMessage(initialMessage!);
  //   // }

  //   // Also handle any interaction when the app is in the background via a
  //   // Stream listener
  //   // FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  // }

  // void _handleMessage(RemoteMessage message) {
  //   print('object22: _handleMessage : $message');
  // }

  // @override
  // Stream<RemoteMessage> get onMessageOpenedApp =>
  //     FirebaseMessaging.onMessageOpenedApp;

  // @override
  // StreamSubscription<RemoteMessage> get onMessageOpened =>
  //     FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
}
