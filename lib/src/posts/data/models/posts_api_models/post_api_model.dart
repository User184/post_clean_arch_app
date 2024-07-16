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

  PostApiModel copyWith({
    final int? userId,
    final int? id,
    final String? title,
    final String? body,
  }) {
    return PostApiModel(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  @override
  String toString() {
    return 'Post{userId: $userId, id: $id, title: $title, body: $body}';
  }
}
