// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiModel _$PostApiModelFromJson(Map<String, dynamic> json) => PostApiModel(
      userId: (json['userId'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$PostApiModelToJson(PostApiModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
