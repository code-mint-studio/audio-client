import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class LoggerInterceptor extends Interceptor {
  final _logger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
  );

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    _logger.onRequest(
      options,
      handler,
    );

    super.onRequest(
      options,
      handler,
    );
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    _logger.onResponse(
      response,
      handler,
    );

    super.onResponse(
      response,
      handler,
    );
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    _logger.onError(
      err,
      handler,
    );

    super.onError(
      err,
      handler,
    );
  }
}
