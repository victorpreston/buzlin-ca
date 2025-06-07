import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:demand/presentation/app_widget.dart';
import 'domain/di/dependency_manager.dart';
import 'infrastructure/local_storage/local_storage.dart';
// import 'infrastructure/service/currency_service.dart'; // Add this import
// import 'package:demand/infrastructure/service/currency_service.dart';
// import 'package:demand/infrastructure/service/currency_service.dart';
// import 'package:demand/infrastructure/service/currency_service.dart';

class DownloadClass {
  static void callback(String id, int status, int progress) {}
}

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Add debug print to see what's happening
  debugPrint("Starting app initialization");

  // Load environment variables first
  try {
    await dotenv.load(fileName: ".env/production.env");
    debugPrint("Loaded environment variables from .env/production.env");
    debugPrint("BASE_URL: ${dotenv.env['BASE_URL']}");
  } catch (e) {
    debugPrint("Error loading environment variables: $e");
  }

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await FlutterDownloader.initialize();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: SystemUiOverlay.values);

  FlutterDownloader.registerCallback(DownloadClass.callback);

  await LocalStorage.init();

  // Initialize CurrencyService after LocalStorage
  // await CurrencyService.init();
  // debugPrint("Currency service initialized");

  setUpDependencies();
  runApp(const AppWidget());
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}