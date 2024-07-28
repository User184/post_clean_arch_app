import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:placeholder_test/constans/app_colors.dart';
import 'package:placeholder_test/src/posts/domain/entities/post.dart';
import 'package:placeholder_test/src/posts/presentation/main_page/blocs/post_bloc.dart';
import 'package:placeholder_test/src/posts/presentation/main_page/view/widgets/image_post.dart';

@immutable
class DetailPostScreen extends StatelessWidget {
  final Post? post;

  const DetailPostScreen({
    super.key,
    this.post,
  });

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const DetailPostScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
      ),
      body: SafeArea(
        child: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Column(
                      children: [
                        // const ImagePost(
                        //   imageUrl: 'https://via.placeholder.com/600/56acb2',
                        //   padding: EdgeInsets.symmetric(vertical: 28),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36)
                              .copyWith(bottom: 26),
                          child: Text(
                            post?.title ?? '',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          '   ${post?.body ?? ''}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36)
                              .copyWith(bottom: 26, top: 26),
                          child: const Text(
                            'Comments',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        if (state.comments != null)
                          ...List.generate(
                            state.comments!.length,
                            (index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 6),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppColors.cellBackground,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          state.comments?[index].email ?? '',
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          state.comments?[index].body ?? '',
                                          style: const TextStyle(
                                              color: AppColors.greyColor),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                      ],
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 26)),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty('description', 'DetailPostScreen StatelessWidget'),
          ),
      );
}
