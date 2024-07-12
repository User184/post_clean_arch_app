import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:placeholder_test/src/posts/domain/entities/comment.dart';

part 'comment_api_model.g.dart';

@JsonSerializable()
class CommentApiModel extends Comment {
  const CommentApiModel({
    super.postId,
    super.id,
    super.name,
    super.email,
    super.body,
  });

  factory CommentApiModel.fromJson(Map<String, dynamic> json) =>
      _$CommentApiModelFromJson(json);
}
