import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:placeholder_test/core/utils/bloc_observer.dart';
import 'package:placeholder_test/src/error/presentation/blocs/error_bloc.dart';
import 'package:placeholder_test/src/posts/data/data_sources/interface_data_source/remote_data_source.dart';
import 'package:placeholder_test/src/posts/data/data_sources/remote_data_source_impl.dart';
import 'package:placeholder_test/src/posts/data/repos/post_repo_impl.dart';
import 'package:placeholder_test/src/posts/domain/repos/post_repo.dart';
import 'package:placeholder_test/src/posts/domain/useCases/get_comments.dart';
import 'package:placeholder_test/src/posts/domain/useCases/get_posts.dart';
import 'package:placeholder_test/src/posts/presentation/main_page/blocs/post_bloc.dart';
import 'package:placeholder_test/src/push_notification/blocs/push_bloc.dart';
import 'package:placeholder_test/src/push_notification/data/repos/Interacted_message_repo_impl.dart';
import 'package:placeholder_test/src/push_notification/domain/repos/Interacted_message_repo.dart';
import 'package:placeholder_test/src/push_notification/domain/useCases/getMessageBacground.dart';

final service = GetIt.instance;

Future<void> init() async {
  // External
  service.registerFactory(() => Dio());

  // BLoC
  Bloc.observer = AppBlocObserver();

  service.registerFactory(() => ErrorsBloc());

  service.registerFactory(
    () => PostBloc(
      getPosts: service(),
      getComments: service(),
      errorsBloc: service(),
    ),
  );

  service.registerFactory(() => PushBloc(
        getMassageBackground: service(),
      ));

  // Data source
  service.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl());

  // Repository
  service.registerLazySingleton<PostRepo>(
      () => PostRepoImpl(remoteDataSource: service()));
  service.registerLazySingleton<InteractedMessageRepo>(
      () => InteractedMessageRepoImpl());

  // UseCases
  service.registerLazySingleton(() => GetPosts(repo: service()));
  service.registerLazySingleton(() => GetComments(repo: service()));
  service.registerLazySingleton(
      () => GetMassageBackground(interactedMessageRepo: service()));

  // service.registerLazySingleton<PersonLocalDataSource>(
  //   () => Perences: service()),rsonLocalDataSourceImpl(sharedPrefe
  // );

  // Core
  // service.registerLazySingleton<NetworkInfo>(
  //   () => NetworkInfoImp(service()),
  // );

  // External
  // final sharedPreferences = await SharedPreferences.getInstance();
  // service.registerLazySingleton(() => sharedPreferences);

  // service.registerLazySingleton(() => InternetConnectionChecker());
}
