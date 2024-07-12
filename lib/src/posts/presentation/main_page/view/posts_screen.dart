import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:placeholder_test/src/posts/presentation/detail_post_screen/view/detail_post_screen.dart';
import 'package:placeholder_test/src/posts/presentation/main_page/view/widgets/card_post.dart';
import '../blocs/post_bloc.dart';

@immutable
class PostsScreen extends StatefulWidget {
  const PostsScreen({
    super.key,
  });

  /// To find PostsScreenState in context
  static PostsScreenState? of(BuildContext context) =>
      context.findAncestorStateOfType<PostsScreenState>();

  @override
  State<PostsScreen> createState() => PostsScreenState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'PostsScreen StatefulWidget',
            ),
          ),
      );
}

class PostsScreenState extends State<PostsScreen> {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'PostsScreenState State<PostsScreen>',
            ),
          ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return CardPost(
                  post: state.posts?[index],
                  onTap: () {
                    context.read<PostBloc>().add(PostsEvent.loadComments(
                        idPost: state.posts?[index].id));
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailPostScreen(
                          post: state.posts?[index],
                        ),
                      ),
                    );
                  },
                );
              },
              itemCount: state.posts?.length,
            );
          },
        ),
      ),
    );
  }
}
