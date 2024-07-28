import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:placeholder_test/src/push_notification/data/models/message_api_model.dart';
import 'package:placeholder_test/src/push_notification/domain/repos/foreground_message_repo.dart';

class ForegroundMessageRepoImpl extends ForegroundMessageRepo {
  ForegroundMessageRepoImpl();

  RemoteMessage? _initialMessage;

  RemoteMessage? get foregroundMessage => _initialMessage;

  @override
  Future<void> initForegroundMassage() async {
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      description:
          'This channel is used for important notifications.', // description
      importance: Importance.max,
    );

    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      _initialMessage = message;

      // If `onMessage` is triggered with a notification, construct our own
      // local notification to show to users using the created channel.

      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channelDescription: channel.description,
                icon: 'ic_launcher',
              ),
            ));
      }
    });

    // Callback [onDidReceiveNotificationResponse] when interacting with a
    // push notification from a foreground state.

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('ic_launcher');

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse:
          (NotificationResponse notificationResponse) {
        final remoteMassage = _initialMessage;

        if (remoteMassage != null) {
          final message = toSerialization(remoteMassage);
          addToStream(message);
        }
      },
    );
  }

  MessageApiModel toSerialization(RemoteMessage remoteMassage) {
    MessageApiModel message = MessageApiModel.fromJson(remoteMassage.data);
    return message;
  }
}
