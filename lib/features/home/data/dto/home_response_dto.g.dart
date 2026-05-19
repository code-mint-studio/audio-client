// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeResponseDto _$HomeResponseDtoFromJson(Map<String, dynamic> json) =>
    _HomeResponseDto(
      stories: (json['arrStory'] as List<dynamic>)
          .map((e) => StoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeResponseDtoToJson(_HomeResponseDto instance) =>
    <String, dynamic>{
      'arrStory': instance.stories,
    };
