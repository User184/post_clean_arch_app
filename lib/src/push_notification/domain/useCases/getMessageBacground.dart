// ignore_for_file: file_names

import 'dart:async';

import 'package:placeholder_test/src/push_notification/domain/entities/message.dart';
import 'package:placeholder_test/src/push_notification/domain/repos/background_message_repo.dart';

/// Application is opened from a terminated or background state
class GetMassageBackground {
  final BackgroundMessageRepo _interactedMessageRepo;

  GetMassageBackground({required BackgroundMessageRepo interactedMessageRepo})
      : _interactedMessageRepo = interactedMessageRepo;

  Future<void> initMessage() async {
    await _interactedMessageRepo.setupInteractedMessage();
  }

  Message? get terminatedStateMessage => _interactedMessageRepo.initialMessage;

  StreamSubscription<Message> subscriptionRemoteMessage(
      Function(Message message) handleMessage) {
    return _interactedMessageRepo.backgroundMassage.listen(handleMessage);
  }
}
