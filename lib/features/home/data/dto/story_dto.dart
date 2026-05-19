// Required for freezed/json_serializable generated code.
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_dto.freezed.dart';
part 'story_dto.g.dart';

@freezed
abstract class StoryDto with _$StoryDto {
  const factory StoryDto({
    required String id,
    required String title,
    @JsonKey(name: 'desc') required String description,
    required String image,
    @JsonKey(name: 'total_chap') required int totalChapters,
  }) = _StoryDto;

  factory StoryDto.fromJson(Map<String, dynamic> json) =>
      _$StoryDtoFromJson(json);
}
