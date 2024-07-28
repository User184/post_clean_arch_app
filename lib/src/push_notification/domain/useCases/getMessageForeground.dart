import 'dart:async';

import 'package:placeholder_test/src/push_notification/domain/entities/message.dart';
import 'package:placeholder_test/src/push_notification/domain/repos/foreground_message_repo.dart';

class GetmessageForeground {
  final ForegroundMessageRepo foregroundMessageRepo;
  GetmessageForeground({required this.foregroundMessageRepo});

  Future<void> initForegroundMassage() async {
    await foregroundMessageRepo.initForegroundMassage();
  }

  // Stream<Message> get foregroundMassageStream =>
  //     foregroundMessageRepo.foregroundMassage;

  StreamSubscription<Message> subscriptionRemoteMessage(
      Function(Message message) handleMessage) {
    return foregroundMessageRepo.foregroundMassage.listen(handleMessage);
  }
}
