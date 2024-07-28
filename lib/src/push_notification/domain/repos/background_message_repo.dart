// ignore_for_file: file_names

import 'dart:async';

import 'package:placeholder_test/src/push_notification/domain/entities/message.dart';

abstract class BackgroundMessageRepo {
  BackgroundMessageRepo();

  Future<void> setupInteractedMessage();

  Message? get initialMessage;

  late final _massageStreamController = StreamController<Message>();

  Stream<Message> get backgroundMassage =>
      _massageStreamController.stream.asBroadcastStream();

  void addToStream(Message message) {
    return _massageStreamController.add(message);
  }
}
