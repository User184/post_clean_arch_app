import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:placeholder_test/src/posts/domain/entities/post.dart';

part 'post_api_model.g.dart';

@JsonSerializable()
class PostApiModel extends Post {
  const PostApiModel({
    super.userId,
    super.id,
    super.title,
    super.body,
  });

  factory PostApiModel.fromJson(Map<String, dynamic> json) =>
      _$PostApiModelFromJson(json);
}
