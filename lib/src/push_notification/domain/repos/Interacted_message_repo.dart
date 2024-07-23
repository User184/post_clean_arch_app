// ignore_for_file: file_names

import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';

abstract class InteractedMessageRepo {
  InteractedMessageRepo();

  Future<void> setupInteractedMessage();

  RemoteMessage? get initialMessage;

  Stream<RemoteMessage> get onMessageOpenedApp;
}
