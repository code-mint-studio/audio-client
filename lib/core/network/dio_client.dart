import 'package:audio_client/core/config/app_config.dart';
import 'package:audio_client/core/device/device_info_service.dart';
import 'package:audio_client/core/network/interceptors/auth_interceptor.dart';
import 'package:audio_client/core/network/interceptors/device_interceptor.dart';
import 'package:audio_client/core/network/interceptors/logger_interceptor.dart';
import 'package:dio/dio.dart';

class DioClient {
  DioClient() {
    dio = Dio(
      BaseOptions(
        baseUrl: AppConfig.baseUrl,
        connectTimeout: const Duration(
          seconds: 30,
        ),
        receiveTimeout: const Duration(
          seconds: 30,
        ),
        sendTimeout: const Duration(
          seconds: 30,
        ),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    dio.interceptors.addAll([
      AuthInterceptor(),
      DeviceInterceptor(
        DeviceInfoService(),
      ),
      LoggerInterceptor(),
    ]);
  }

  late final Dio dio;
}
