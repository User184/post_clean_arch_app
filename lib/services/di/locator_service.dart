import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:placeholder_test/bloc_observer.dart';
import 'package:placeholder_test/src/posts/data/data_sources/interface_data_source/remote_data_source.dart';
import 'package:placeholder_test/src/posts/data/data_sources/remote_data_source.dart';
import 'package:placeholder_test/src/posts/data/repos/post_repo_impl.dart';
import 'package:placeholder_test/src/posts/domain/repos/post_repo_base.dart';
import 'package:placeholder_test/src/posts/domain/usecases/get_comments.dart';
import 'package:placeholder_test/src/posts/domain/usecases/get_posts.dart';
import 'package:placeholder_test/src/posts/presentation/main_page/blocs/post_bloc.dart';

final service = GetIt.instance;

Future<void> init() async {
  // External
  service.registerFactory(() => Dio());

  // BLoC
  Bloc.observer = AppBlocObserver();

  service.registerFactory(
    () => PostBloc(getPosts: service(), getComments: service()),
  );

  // Data source
  service.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl());

  // Repository
  service.registerLazySingleton<PostRepoBase>(
      () => PostRepoImpl(remoteDataSource: service()));

  // UseCases
  service.registerLazySingleton(() => GetPosts(repo: service()));
  service.registerLazySingleton(() => GetComments(repo: service()));

  // service.registerLazySingleton<PersonLocalDataSource>(
  //   () => PersonLocalDataSourceImpl(sharedPreferences: service()),
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
