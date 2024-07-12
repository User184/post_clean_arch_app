import 'package:placeholder_test/src/posts/domain/entities/post.dart';
import 'package:placeholder_test/src/posts/domain/repos/post_repo_base.dart';

class GetPosts {
  final PostRepoBase repo;

  GetPosts({required this.repo});

  Future<List<Post>?> fetchPosts() async {
    return await repo.fetchPosts();
  }
}
