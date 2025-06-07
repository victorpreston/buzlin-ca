// lib/app_constants.dart
import 'package:demand/infrastructure/service/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class AppConstants {
  AppConstants._();

  static const bool isDemo = false;
  static const bool autoTrn = true;
  static const bool shopBadge = true;
  static const bool enableGame = true;
  static const SignUpType signUpType = SignUpType.email;

  /// api urls
  // Replace String.fromEnvironment with dotenv.env
  static String get baseUrl => dotenv.env['BASE_URL'] ?? 'https://api.buzlin.ca/';
  static String get webUrl => dotenv.env['WEB_URL'] ?? 'https://buzlin.ca/';
  static String get adminPageUrl => dotenv.env['ADMIN_URL'] ?? 'https://a.buzlin.ca/';
  static String get googleApiKey => dotenv.env['GOOGLE_MAPS_API_KEY'] ?? 'AIzaSyAPh6pqfLxj5rOL1IIY4yB2aayrL5UrRfg';
  static String get firebaseWebKey => dotenv.env['FIREBASE_API_KEY'] ?? 'AIzaSyCHvjKHsqNTcSHQ6FYnuogFTFqvv21-1WY';
  static String get urlPrefix => dotenv.env['URL_PREFIX'] ?? 'https://buzlin.page.link';
  static String get routingBaseUrl => dotenv.env['ROUTING_API'] ?? 'https://api.openrouteservice.org/';
  static String get routingKey => dotenv.env['ROUTING_KEY'] ?? '5b3ce3597851110001cf624892f508d1746742a28c72af74d4e60f2b';

  static const String androidPackageName = 'ca.buzlin.ca';
  static const String iosPackageName = 'ca.buzlin.ca';

  // PayFast
  static String get passphrase => dotenv.env['PAYFAST_PASSPHRASE'] ?? 'PASSPHRASE';
  static String get merchantId => dotenv.env['PAYFAST_MERCHANT_ID'] ?? 'MERCHANT_ID';
  static String get merchantKey => dotenv.env['PAYFAST_MERCHANT_KEY'] ?? '';

  /// auth phone fields
  static const bool isNumberLengthAlwaysSame = false;
  static const String countryCodeISO = 'PHP';
  static const bool showFlag = true;
  static const bool showArrowIcon = true;

  static const double radius = 12;
  static const double radiusMax = 14;

  /// location
  static const double demoLatitude = 41.304223;
  static const double demoLongitude = 69.2348277;
  static const double pinLoadingMin = 0.116666667;
  static const double pinLoadingMax = 0.611111111;

  ///refresh duration
  static const Duration timeRefresh = Duration(seconds: 30);

  ///image
  static const String darkBgChat = "assets/images/darkBg.jpeg";
  static const String lightBgChat = "assets/images/lightBg.jpeg";
}