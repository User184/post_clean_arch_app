import 'dart:async';

import 'package:placeholder_test/src/push_notification/domain/entities/message.dart';

abstract class ForegroundMessageRepo {
  ForegroundMessageRepo();
  Future<void> initForegroundMassage();

  late final _massageStreamController = StreamController<Message>();

  Stream<Message> get foregroundMassage =>
      _massageStreamController.stream.asBroadcastStream();

  void addToStream(Message message) {
    return _massageStreamController.add(message);
  }
}
