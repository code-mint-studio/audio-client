import 'package:audio_client/core/network/dio_client.dart';
import 'package:audio_client/core/network/mappers/dio_error_mapper.dart';
import 'package:audio_client/features/home/data/dto/home_response_dto.dart';
import 'package:dio/dio.dart';

class HomeRemoteDatasource {
  HomeRemoteDatasource(
    this._dioClient,
  );

  final DioClient _dioClient;

  Future<HomeResponseDto> getStories() async {
    try {
      final response = await _dioClient.dio.get<Map<String, dynamic>>(
        '/home',
      );

      return HomeResponseDto.fromJson(
        response.data!,
      );
    } on DioException catch (e) {
      throw DioErrorMapper.map(
        e,
      );
    }
  }
}
