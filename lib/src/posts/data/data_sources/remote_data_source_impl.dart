import 'package:dio/dio.dart';
import 'package:placeholder_test/src/error/network_error.dart';
import 'package:placeholder_test/main.dart';
import 'package:placeholder_test/core/services/network/log_network.dart';
import 'package:placeholder_test/src/posts/data/data_sources/interface_data_source/remote_data_source.dart';
import 'package:placeholder_test/src/posts/data/models/comment_api_models/comment_api_model.dart';
import 'package:placeholder_test/src/posts/data/models/posts_api_models/post_api_model.dart';
import 'package:placeholder_test/core/services/di/locator_service.dart';

class RemoteDataSourceImpl extends RemoteDataSource {
  final dio = service.get<Dio>();

  @override
  Future<void> fetchPosts() async {
    /// Activated logger
    // LogNetwork(dio: dio);

    final listposts = <PostApiModel>[];

    try {
      final response =
          await dio.get('https://jsonplaceholder.typicode.com/posts');
      final listData = response.data;

      if (listData is List) {
        listposts.addAll(
          listData.map(
            (book) => PostApiModel.fromJson(book as Map<String, dynamic>),
          ),
        );
      }
      // implement metod from [RemoteDataSource]
      addToStream(listposts);
    } on DioException catch (e) {
      log.e('LOG fetchPosts network error: ${e.response?.statusCode}');
      throw NetErrorsFactory.produce(e);
    } catch (e) {
      log.e('LOG fetchPosts error: $e');
      rethrow;
    }
  }

  @override
  Future<List<CommentApiModel>?> fetchComments({int? idPost}) async {
    try {
      final response = await dio
          .get('https://jsonplaceholder.typicode.com/posts/$idPost/comments');
      final listData = response.data;
      final listComments = <CommentApiModel>[];

      if (listData is List) {
        listComments.addAll(
          listData.map(
            (book) => CommentApiModel.fromJson(book as Map<String, dynamic>),
          ),
        );
      }

      return listComments;
    } on DioException catch (e) {
      log.e('LOG fetchComments network error: ${e.response?.statusCode}');
      throw NetErrorsFactory.produce(e);
    } catch (e) {
      log.e('LOG fetchComments error: $e');
      rethrow;
    }
  }
}
