import 'package:placeholder_test/src/posts/data/data_sources/interface_data_source/remote_data_source.dart';
import 'package:placeholder_test/src/posts/domain/entities/comment.dart';
import 'package:placeholder_test/src/posts/domain/entities/post.dart';
import 'package:placeholder_test/src/posts/domain/repos/post_repo_base.dart';

class PostRepoImpl implements PostRepoBase {
  final RemoteDataSource? remoteDataSource;

  PostRepoImpl({this.remoteDataSource});

  @override
  Future<List<Post>?> fetchPosts() async {
    return await remoteDataSource?.fetchPosts();
  }

  @override
  Future<List<Comment>?> fetchComments({int? idPost}) async {
    return await remoteDataSource?.fetchComments(idPost: idPost);
  }
}
