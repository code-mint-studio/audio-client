// Required for freezed/json_serializable generated code.
// ignore_for_file: invalid_annotation_target

import 'package:audio_client/features/home/data/dto/story_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_response_dto.freezed.dart';
part 'home_response_dto.g.dart';

@freezed
abstract class HomeResponseDto with _$HomeResponseDto {
  const factory HomeResponseDto({
    @JsonKey(name: 'arrStory') required List<StoryDto> stories,
  }) = _HomeResponseDto;

  factory HomeResponseDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$HomeResponseDtoFromJson(json);
}
