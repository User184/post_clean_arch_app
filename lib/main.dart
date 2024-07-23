import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:logger/logger.dart';
import 'package:placeholder_test/constans/app_colors.dart';
import 'package:placeholder_test/firebase_options.dart';
import 'package:placeholder_test/src/error/presentation/blocs/error_bloc.dart';
import 'package:placeholder_test/src/posts/domain/entities/post.dart';
import 'package:placeholder_test/src/posts/presentation/detail_post_screen/view/detail_post_screen.dart';
import 'package:placeholder_test/src/posts/presentation/main_page/blocs/post_bloc.dart';
import 'package:placeholder_test/core/services/di/locator_service.dart' as di;
import 'package:placeholder_test/core/services/di/locator_service.dart';
import 'package:placeholder_test/src/push_notification/blocs/push_bloc.dart';
import 'src/posts/presentation/main_page/view/posts_screen.dart';

Logger log = Logger(printer: PrettyPrinter());

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // If you're going to use other Firebase services in the background, such as Firestore,
//   // make sure you call `initializeApp` before using other Firebase services.
//   await Firebase.initializeApp();

//   print("Handling a background message: ${message.messageId}");
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //TODO: убрать
  //SqfliteDataSourceImpl.fetchPosts();
  await di.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging messaging = FirebaseMessaging.instance;
  final token =
      await messaging.getToken().then((m) => print('object22: token: ${m}'));
  //FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

//   NotificationSettings settings = await messaging.requestPermission(
//   alert: true,
//   announcement: false,
//   badge: true,
//   carPlay: false,
//   criticalAlert: false,
//   provisional: false,
//   sound: true,
// );

// if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//   print('User granted permission');
// } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
//   print('User granted provisional permission');
// } else {
//   print('User declined or has not accepted permission');
// }

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
            ),
          ));
    }
  });

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => service<ErrorsBloc>()),
        BlocProvider(create: (BuildContext context) => service<PostBloc>()),
        BlocProvider(create: (BuildContext context) => service<PushBloc>()),
      ],
      child: BlocListener<ErrorsBloc, ErrorsState>(
        listenWhen: (prev, curr) => prev.modal != curr.modal,
        listener: (context, state) {
          final msg = state.modal;
          if (msg != null) {
            // ErrorInfoWidget.showToast(msg);
          }
        },
        child: MaterialApp(
          navigatorKey: _navigatorKey,
          theme: ThemeData.dark().copyWith(
            primaryColor: AppColors.mainBackground,
            scaffoldBackgroundColor: AppColors.mainBackground,
          ),
          builder: (context, child) {
            return BlocListener<PushBloc, PushState>(
              listener: (context, state) {
                switch (state.status) {
                  case Activity.unknown:
                    _navigator.push(
                      MaterialPageRoute(
                        builder: (context) => const PostsScreen(),
                      ),
                    );
                    break;

                  case Activity.detail:
                    print('object22: t: ${state}');
                    _navigator.push(
                      MaterialPageRoute(
                        builder: (context) => const DetailPostScreen(
                          post: Post(
                            id: 1,
                            userId: 1,
                            title: 'Test',
                            body: 'Test discription',
                          ),
                        ),
                      ),
                    );
                    break;
                }
              },
              child: child,
            );
          },
          onGenerateRoute: (_) => PostsScreen.route(),
          routes: {
            '/': (context) => const PostsScreen(),
            '/detailMyBook': (context) => const DetailPostScreen(),
          },
        ),
      ),
    );
  }
}
