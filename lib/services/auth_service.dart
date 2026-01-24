import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import '../config/app_config.dart';
import '../models/login_model.dart';
import 'api_service.dart';

class AuthService {
  static const String _tokenKey = 'auth_token';
  static const String _nameKey = 'user_name';

  // Observable token untuk reactivity
  final token = Rxn<String>();
  final userName = Rxn<String>();

  AuthService() {
    // Load saved token on init
    _loadSavedToken();
  }

  Future<void> _loadSavedToken() async {
    // Untuk Flutter Web, gunakan localStorage melalui Get.find
    // Implementasi sederhana menggunakan memory storage
    // Untuk production, gunakan shared_preferences atau flutter_secure_storage
  }

  Future<LoginResponse> login(LoginRequest request) async {
    try {
      final response = await http
          .post(
            Uri.parse('${AppConfig.apiBaseUrl}/peserta-didik/login'),
            headers: {'Content-Type': 'application/json'},
            body: json.encode(request.toJson()),
          )
          .timeout(AppConfig.apiTimeout);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = json.decode(response.body);
        final loginResponse = LoginResponse.fromJson(data);

        // Save token
        await saveToken(loginResponse.token);

        return loginResponse;
      } else {
        final error = json.decode(response.body);
        throw ApiException(
          error['message'] ?? 'Login gagal',
          response.statusCode,
        );
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }

  Future<LoginGuruResponse> loginGuru(LoginGuruRequest request) async {
    try {
      final response = await http
          .post(
            Uri.parse('${AppConfig.apiBaseUrl}/guru/login'),
            headers: {'Content-Type': 'application/json'},
            body: json.encode(request.toJson()),
          )
          .timeout(AppConfig.apiTimeout);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = json.decode(response.body);
        final loginResponse = LoginGuruResponse.fromJson(data);

        // Save token
        await saveToken(loginResponse.token);

        return loginResponse;
      } else {
        final error = json.decode(response.body);
        throw ApiException(
          error['message'] ?? 'Login gagal',
          response.statusCode,
        );
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }

  Future<void> saveToken(String newToken) async {
    token.value = newToken;
    // TODO: Persist to storage
    // await storage.write(key: _tokenKey, value: newToken);
  }

  Future<void> saveName(String name) async {
    userName.value = name;
    // TODO: Persist to storage
    // await storage.write(key: _nameKey, value: name);
  }

  String? getToken() {
    return token.value;
  }

  String? getUserName() {
    return userName.value;
  }

  bool isLoggedIn() {
    return token.value != null && token.value!.isNotEmpty;
  }

  Future<void> logout() async {
    token.value = null;
    userName.value = null;
    // TODO: Clear storage
    // await storage.delete(key: _tokenKey);
    // await storage.delete(key: _nameKey);
  }

  Map<String, String> getAuthHeaders() {
    if (token.value != null && token.value!.isNotEmpty) {
      return {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token.value}',
      };
    }
    return {'Content-Type': 'application/json'};
  }
}
