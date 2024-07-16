import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:placeholder_test/constans/app_colors.dart';
import 'package:placeholder_test/src/error/presentation/blocs/error_bloc.dart';
import 'package:placeholder_test/src/posts/data/data_sources/sqflite_data_source_impl.dart';
import 'package:placeholder_test/src/posts/presentation/detail_post_screen/view/detail_post_screen.dart';
import 'package:placeholder_test/src/posts/presentation/main_page/blocs/post_bloc.dart';
import 'package:placeholder_test/core/services/di/locator_service.dart' as di;
import 'package:placeholder_test/core/services/di/locator_service.dart';
import 'src/posts/presentation/main_page/view/posts_screen.dart';

Logger log = Logger(printer: PrettyPrinter());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //TODO: убрать
  //SqfliteDataSourceImpl.fetchPosts();
  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => service<ErrorsBloc>()),
        BlocProvider(create: (BuildContext context) => service<PostBloc>()),
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
          theme: ThemeData.dark().copyWith(
            primaryColor: AppColors.mainBackground,
            scaffoldBackgroundColor: AppColors.mainBackground,
          ),
          home: const PostsScreen(),
          routes: {
            '/detailMyBook': (context) => const DetailPostScreen(),
          },
        ),
      ),
    );
  }
}
