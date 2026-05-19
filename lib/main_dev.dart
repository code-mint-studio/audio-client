import 'package:audio_client/app.dart';
import 'package:audio_client/core/firebase/firebase_initializer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(
    fileName: '.env.dev',
  );

  await FirebaseInitializer.initialize();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
