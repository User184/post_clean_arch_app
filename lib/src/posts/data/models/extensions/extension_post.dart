import 'package:placeholder_test/src/posts/data/models/posts_api_models/post_api_model.dart';
import 'package:placeholder_test/src/posts/domain/entities/post.dart';

extension PostMapper on PostApiModel {
  Post toModel() {
    return Post(
      id: id?.toInt(),
      userId: userId?.toInt(),
      body: body.toString(),
      title: title.toString(),
    );
  }
}

/// Convert to a record to local db
extension ToMapPost on PostApiModel {
  Map<String, Object?> toMap() {
    return {
      'id': id,
      'userId': userId,
      'body': body,
      'title': title,
    };
  }
}
