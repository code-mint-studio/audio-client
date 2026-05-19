import 'package:audio_client/core/device/device_info_service.dart';
import 'package:dio/dio.dart';

class DeviceInterceptor extends Interceptor {
  DeviceInterceptor(
    this._deviceInfoService,
  );

  final DeviceInfoService _deviceInfoService;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final headers = await _deviceInfoService.getHeaders();

    options.headers.addAll(
      headers,
    );

    super.onRequest(
      options,
      handler,
    );
  }
}
