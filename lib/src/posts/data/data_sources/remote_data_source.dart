import 'package:dio/dio.dart';
import 'package:placeholder_test/main.dart';
import 'package:placeholder_test/services/log_network.dart';
import 'package:placeholder_test/src/posts/data/models/comment_api_models/comment_api_model.dart';
import 'package:placeholder_test/src/posts/data/models/posts_api_models/post_api_model.dart';
import 'package:placeholder_test/services/locator_service.dart';

abstract class RemoteDataSource {
  Future<List<PostApiModel>?> fetchPosts();
  Future<List<CommentApiModel>?> fetchComments({int? idPost});
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final dio = service.get<Dio>();

  @override
  Future<List<PostApiModel>?> fetchPosts() async {
    /// Activated logger
    LogNetwork(dio: dio);

    try {
      final response =
          await dio.get('https://jsonplaceholder.typicode.com/posts');
      final listData = response.data;
      final listposts = <PostApiModel>[];

      if (listData is List) {
        listposts.addAll(
          listData.map(
            (book) => PostApiModel.fromJson(book as Map<String, dynamic>),
          ),
        );
      }
      return listposts;
    } on DioException catch (e) {
      log.e('LOG fetchPosts network error: ${e.response?.statusCode}');
    } catch (e) {
      log.e('LOG fetchPosts error: $e');
      rethrow;
    }
    return null;
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
    } catch (e) {
      log.e('LOG fetchComments error: $e');
      rethrow;
    }
    return null;
  }
}
