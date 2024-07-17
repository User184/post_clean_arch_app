import 'package:placeholder_test/src/posts/domain/entities/comment.dart';
import 'package:placeholder_test/src/posts/domain/entities/post.dart';

/// Implements [PostRepo]
abstract class PostRepoBase {
  const PostRepoBase();
  Stream<List<Post>?> get posts;
  Future<void> fetchPosts();
  Future<List<Comment>?> fetchComments({int? idPost});
}
