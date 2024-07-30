import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //TODO: убрать
  //SqfliteDataSourceImpl.fetchPosts();
  await di.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // NotificationSettings settings = await messaging.requestPermission(
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
                    _navigator.push(
                      MaterialPageRoute(
                        builder: (context) => DetailPostScreen(
                          post: Post(
                            id: 1,
                            userId: 1,
                            title: state.message?.title,
                            body: state.message?.body,
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
            '/detail': (context) => const DetailPostScreen(),
          },
        ),
      ),
    );
  }
}
