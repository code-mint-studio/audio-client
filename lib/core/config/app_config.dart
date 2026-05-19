import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static String get baseUrl {
    return dotenv.env['BASE_URL'] ?? '';
  }

  static String get appName {
    return dotenv.env['APP_NAME'] ?? '';
  }

  static bool get enableLog {
    return dotenv.env['ENABLE_LOG'] == 'true';
  }

  static bool get enableCrashlytics {
    return dotenv.env['ENABLE_CRASHLYTICS'] == 'true';
  }
}
