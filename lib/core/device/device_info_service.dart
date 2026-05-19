import 'dart:io';
import 'dart:ui';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:uuid/uuid.dart';

class DeviceInfoService {
  DeviceInfoService();

  final _deviceInfo = DeviceInfoPlugin();

  final _storage = const FlutterSecureStorage();

  Map<String, String>? _cachedHeaders;

  static const _deviceIdKey = 'device_uuid';

  Future<Map<String, String>> getHeaders() async {
    if (_cachedHeaders != null) {
      return _cachedHeaders!;
    }

    final packageInfo = await PackageInfo.fromPlatform();

    final deviceId = await _getOrCreateDeviceId();

    final headers = <String, String>{
      'x-device-id': deviceId,
      'x-platform': Platform.operatingSystem,
      'x-sdk-version': Platform.operatingSystemVersion,
      'x-app-version': packageInfo.version,
      'x-build-number': packageInfo.buildNumber,
      'x-package-name': packageInfo.packageName,
      'x-locale': PlatformDispatcher.instance.locale.toString(),
    };

    if (Platform.isAndroid) {
      final androidInfo = await _deviceInfo.androidInfo;

      headers['x-device-model'] = androidInfo.model;

      headers['x-device-brand'] = androidInfo.brand;
    }

    _cachedHeaders = headers;

    return headers;
  }

  Future<String> _getOrCreateDeviceId() async {
    final savedId = await _storage.read(
      key: _deviceIdKey,
    );

    if (savedId != null) {
      return savedId;
    }

    final newId = const Uuid().v4();

    await _storage.write(
      key: _deviceIdKey,
      value: newId,
    );

    return newId;
  }
}
