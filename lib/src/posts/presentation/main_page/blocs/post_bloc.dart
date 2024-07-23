// ignore_for_file: unused_field

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:placeholder_test/src/error/network_error.dart';

import 'package:placeholder_test/main.dart';
import 'package:placeholder_test/src/error/presentation/blocs/error_bloc.dart';
import 'package:placeholder_test/src/posts/domain/entities/comment.dart';
import 'package:placeholder_test/src/posts/domain/entities/post.dart';
import 'package:placeholder_test/src/posts/domain/useCases/get_comments.dart';
import 'package:placeholder_test/src/posts/domain/useCases/get_posts.dart';

part 'post_bloc.freezed.dart';

@freezed
class PostsEvent with _$PostsEvent {
  const PostsEvent._();
  const factory PostsEvent.load() = _Load;
  const factory PostsEvent.loadComments({int? idPost}) = _Comments;
}

@freezed
class PostState with _$PostState {
  const PostState._();

  const factory PostState.valueObject({
    List<Post>? posts,
    List<Comment>? comments,
  }) = _State;
}

class PostBloc extends Bloc<PostsEvent, PostState> {
  final GetPosts getPosts;
  final GetComments getComments;
  final ErrorsBloc errorsBloc;
  late final StreamSubscription _subscription;

  PostBloc({
    required this.getPosts,
    required this.getComments,
    required this.errorsBloc,
  }) : super(const PostState.valueObject()) {
    //_subscribe();
    on<_Load>(_onLoadPosts);
    on<_Comments>(_onLoadComments);
    add(const PostsEvent.load());
  }

  Future<void> _onLoadPosts(_Load event, Emitter<PostState> emit) async {
    // try {
    //   final listPosts = await getPosts.fetchPosts();
    //   emit(state.copyWith(posts: listPosts));
    // } on NetworkErrors catch (e) {
    //   errorsBloc.add(ErrorsEvent.error(error: e));
    // } catch (e) {
    //   log.e('LOG PostBloc_onLoadPosts error: $e');
    //   rethrow;
    // }
    await getPosts.fetchPosts();
    final posts = getPosts.posts;

    await emit.forEach(
      posts,
      onData: (List<Post>? posts) {
        return state.copyWith(posts: posts);
      },
      // onError: (e, ee) {
      //   print('object22: error: $e');
      //   return state;
      // },
    );
  }

  Future<void> _onLoadComments(_Comments event, Emitter<PostState> emit) async {
    final idPost = event.idPost;
    try {
      if (idPost != null) {
        final listComments = await getComments.fetchComments(idPost: idPost);
        emit(state.copyWith(comments: listComments));
      }
    } on NetworkErrors catch (e) {
      errorsBloc.add(ErrorsEvent.error(error: e));
    } catch (e) {
      log.e('LOG PostBloc_onLoadComments error: $e');
      rethrow;
    }
  }

  void _subscribe() {
    _subscription = getPosts.posts.listen(
      (items) {
        print('object22: posts: ${getPosts.posts}');
      },
      onError: (error) => print('object22: error: ${getPosts.posts}'),
    );
  }
}
