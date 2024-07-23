// ignore_for_file: file_names

import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:placeholder_test/src/push_notification/domain/repos/Interacted_message_repo.dart';

/// Application is opened from a terminated or background state
class GetMassageBackground {
  final InteractedMessageRepo _interactedMessageRepo;

  GetMassageBackground({required InteractedMessageRepo interactedMessageRepo})
      : _interactedMessageRepo = interactedMessageRepo;

  Future<void> initMessage() async {
    await _interactedMessageRepo.setupInteractedMessage();

    if (initialMessage != null) {
      _handleMessage(initialMessage!);
    }
  }

  void _handleMessage(RemoteMessage message) {
    print('object22: _handleMessage : $message');
  }

  RemoteMessage? get initialMessage => _interactedMessageRepo.initialMessage;
  // StreamSubscription<RemoteMessage>? get onMessageOpened =>
  //     _interactedMessageRepo.onMessageOpenedApp?.listen(_handleMessage);

  Stream<RemoteMessage> get onMessageOpenedApp =>
      _interactedMessageRepo.onMessageOpenedApp;

  // @override
  // // TODO: implement initialMessage
  // RemoteMessage? get initialMessage => throw UnimplementedError();

  // @override
  // // TODO: implement onMessageOpened
  // StreamSubscription<RemoteMessage> get onMessageOpened =>
  //     throw UnimplementedError();

  // @override
  // Stream<RemoteMessage>? onMessageOpenedApp;

  // @override
  // Future<void> setupInteractedMessage() {
  //   // TODO: implement setupInteractedMessage
  //   throw UnimplementedError();
  // }
}
