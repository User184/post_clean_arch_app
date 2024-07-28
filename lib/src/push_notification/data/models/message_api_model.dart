import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:placeholder_test/src/push_notification/domain/entities/message.dart';

part 'message_api_model.g.dart';

@JsonSerializable()
class MessageApiModel extends Message {
  const MessageApiModel({
    super.route,
    super.title,
    super.body,
  });

  factory MessageApiModel.fromJson(Map<String, dynamic> json) =>
      _$MessageApiModelFromJson(json);

  @override
  String toString() {
    return 'Message{route: $route, title: $title, body: $body}';
  }
}
