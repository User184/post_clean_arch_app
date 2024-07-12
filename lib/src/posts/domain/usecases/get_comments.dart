import 'package:placeholder_test/src/posts/domain/entities/comment.dart';
import 'package:placeholder_test/src/posts/domain/repos/post_repo_base.dart';

class GetComments {
  final PostRepoBase repo;

  GetComments({required this.repo});

  Future<List<Comment>?> fetchComments({int? idPost}) async {
    return await repo.fetchComments(idPost: idPost);
  }
}
