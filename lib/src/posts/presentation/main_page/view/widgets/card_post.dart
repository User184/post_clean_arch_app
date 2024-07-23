import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:placeholder_test/constans/app_colors.dart';
import 'package:placeholder_test/src/posts/domain/entities/post.dart';
import 'package:placeholder_test/src/posts/presentation/main_page/view/widgets/image_post.dart';

@immutable
class CardPost extends StatelessWidget {
  final Post? post;
  final void Function() onTap;
  const CardPost({
    super.key,
    required this.post,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: AppColors.cellBackground,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              // const ImagePost(
              //   imageUrl: 'https://via.placeholder.com/600/56acb2',
              // ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Text(
                    post?.body ?? '',
                    style: const TextStyle(color: AppColors.greyColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty('description', 'CardPost StatelessWidget'),
          ),
      );
}
