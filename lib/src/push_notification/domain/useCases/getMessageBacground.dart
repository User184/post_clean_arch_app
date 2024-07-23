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
  }

  RemoteMessage? get initialMessage => _interactedMessageRepo.initialMessage;

  Stream<RemoteMessage> get onMessageOpenedApp =>
      _interactedMessageRepo.onMessageOpenedApp;
}
