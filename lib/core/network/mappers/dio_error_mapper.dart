import 'package:audio_client/core/network/exceptions/api_exception.dart';
import 'package:dio/dio.dart';

class DioErrorMapper {
  static ApiException map(
    DioException error,
  ) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ApiException(
          'Connection timeout',
        );

      case DioExceptionType.sendTimeout:
        return ApiException(
          'Send timeout',
        );

      case DioExceptionType.receiveTimeout:
        return ApiException(
          'Receive timeout',
        );

      case DioExceptionType.badCertificate:
        return ApiException(
          'Bad certificate',
        );

      case DioExceptionType.badResponse:
        return ApiException(
          'Server error',
        );

      case DioExceptionType.cancel:
        return ApiException(
          'Request cancelled',
        );

      case DioExceptionType.connectionError:
        return ApiException(
          'Connection error',
        );

      case DioExceptionType.unknown:
        return ApiException(
          'Unknown error',
        );
    }
  }
}
