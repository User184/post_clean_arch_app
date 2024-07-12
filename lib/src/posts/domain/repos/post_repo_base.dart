import 'package:placeholder_test/src/posts/domain/entities/comment.dart';
import 'package:placeholder_test/src/posts/domain/entities/post.dart';

/// Implements [PostRepo]
abstract class PostRepoBase {
  const PostRepoBase();
  Future<List<Post>?> fetchPosts();
  Future<List<Comment>?> fetchComments({int? idPost});
}
