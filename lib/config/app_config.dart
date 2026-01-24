class AppConfig {
  // API Configuration
  static const String apiBaseUrl = 'http://localhost:3000';

  // Timeout Configuration
  static const Duration apiTimeout = Duration(seconds: 30);

  // App Information
  static const String appName = 'Flutter Application';
  static const String appVersion = '1.0.0';

  // Environment
  static const bool isProduction = false;
  static const bool enableLogging = true;
}
