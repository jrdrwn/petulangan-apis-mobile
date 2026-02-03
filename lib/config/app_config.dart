class AppConfig {
  // API Configuration
  static const String apiBaseUrl = 'https://petualangan-apis-be.vercel.app';
  // static const String apiBaseUrl = 'http://localhost:3000';

  // Timeout Configuration
  static const Duration apiTimeout = Duration(seconds: 30);

  // App Information
  static const String appName = 'Petualangan IPAS';
  static const String appVersion = '1.0.0';

  // Environment
  static const bool isProduction = true;
  static const bool enableLogging = false;
}
