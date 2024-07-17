import 'dart:async';

import 'package:placeholder_test/src/posts/data/models/comment_api_models/comment_api_model.dart';
import 'package:placeholder_test/src/posts/data/models/posts_api_models/post_api_model.dart';
import 'package:rxdart/subjects.dart';

abstract class RemoteDataSource {
  Future<void> fetchPosts();

  late final _postStreamController =
      BehaviorSubject<List<PostApiModel>?>.seeded(const []);

  Stream<List<PostApiModel>?> get posts =>
      _postStreamController.stream.asBroadcastStream();

  void addToStream(List<PostApiModel>? items) =>
      _postStreamController.sink.add(items);

  Future<List<CommentApiModel>?> fetchComments({int? idPost});
}
