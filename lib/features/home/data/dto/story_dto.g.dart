// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoryDto _$StoryDtoFromJson(Map<String, dynamic> json) => _StoryDto(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['desc'] as String,
      image: json['image'] as String,
      totalChapters: (json['total_chap'] as num).toInt(),
    );

Map<String, dynamic> _$StoryDtoToJson(_StoryDto instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'desc': instance.description,
      'image': instance.image,
      'total_chap': instance.totalChapters,
    };
