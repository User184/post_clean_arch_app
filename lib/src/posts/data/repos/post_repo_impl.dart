import 'package:placeholder_test/src/posts/data/data_sources/interface_data_source/remote_data_source.dart';
import 'package:placeholder_test/src/posts/domain/entities/comment.dart';
import 'package:placeholder_test/src/posts/domain/entities/post.dart';
import 'package:placeholder_test/src/posts/domain/repos/post_repo.dart';

class PostRepoImpl implements PostRepo {
  final RemoteDataSource remoteDataSource;

  PostRepoImpl({required this.remoteDataSource});

  @override
  Future<void> fetchPosts() async {
    return await remoteDataSource.fetchPosts();
  }

  @override
  Stream<List<Post>?> get posts => remoteDataSource.posts;

  @override
  Future<List<Comment>?> fetchComments({int? idPost}) async {
    return await remoteDataSource.fetchComments(idPost: idPost);
  }
}
