import 'package:firebase_messaging/firebase_messaging.dart';

class SubmitTopicRepo {
  //TODO: добавить логику с запросами на подписку/отписку на сервер

  Future<void> subscribeToTopic(String topic) async {
    await FirebaseMessaging.instance.subscribeToTopic(topic);
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    await FirebaseMessaging.instance.unsubscribeFromTopic(topic);
  }
}
