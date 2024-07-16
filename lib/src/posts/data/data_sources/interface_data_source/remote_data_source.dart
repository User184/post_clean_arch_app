import 'package:placeholder_test/src/posts/data/models/comment_api_models/comment_api_model.dart';
import 'package:placeholder_test/src/posts/data/models/posts_api_models/post_api_model.dart';

abstract class RemoteDataSource {
  Future<List<PostApiModel>?> fetchPosts();
  Future<List<CommentApiModel>?> fetchComments({int? idPost});
}
