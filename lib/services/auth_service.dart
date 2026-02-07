import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../config/app_config.dart';
import '../models/login_model.dart';
import 'api_service.dart';

class AuthService {
  static const String _tokenKey = 'auth_token';
  static const String _nameKey = 'user_name';
  static const String _userRoleKey = 'user_role';
  static const String _sekolahIdKey = 'sekolah_id';
  static const String _nipKey = 'user_nip';
  static const String _emailKey = 'user_email';
  static const String _noTeleponKey = 'user_no_telepon';
  static const String _nisnKey = 'user_nisn';
  static const String _kelasIdKey = 'user_kelas_id';

  // Observable token untuk reactivity
  final token = Rxn<String>();
  final userName = Rxn<String>();
  final userRole = Rxn<String>(); // 'student' atau 'teacher'
  final sekolahId = Rxn<int>();
  final userNip = Rxn<String>();
  final userEmail = Rxn<String>();
  final userNoTelepon = Rxn<String>();
  final userNisn = Rxn<String>();
  final userKelasId = Rxn<int>();

  AuthService() {
    // Load saved token on init
    _loadSavedData();
  }

  Future<void> _loadSavedData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      token.value = prefs.getString(_tokenKey);
      userName.value = prefs.getString(_nameKey);
      userRole.value = prefs.getString(_userRoleKey);
      final savedSekolahId = prefs.getInt(_sekolahIdKey);
      if (savedSekolahId != null) {
        sekolahId.value = savedSekolahId;
      }
      userNip.value = prefs.getString(_nipKey);
      userEmail.value = prefs.getString(_emailKey);
      userNoTelepon.value = prefs.getString(_noTeleponKey);
      userNisn.value = prefs.getString(_nisnKey);
      final savedKelasId = prefs.getInt(_kelasIdKey);
      if (savedKelasId != null) {
        userKelasId.value = savedKelasId;
      }
    } catch (e) {
      // Ignore errors during load
    }
  }

  // Method to ensure data is loaded
  Future<void> ensureInitialized() async {
    await _loadSavedData();
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

        // Save token, name, role, nisn, and kelasId
        await saveToken(loginResponse.token);
        await saveName(loginResponse.pesertaDidik.namaLengkap);
        await saveUserRole('student');
        await saveNisn(loginResponse.pesertaDidik.nisn);
        await saveKelasId(loginResponse.pesertaDidik.kelasId);

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

        // Save token, name, role, sekolah_id, and guru data
        await saveToken(loginResponse.token);
        await saveName(loginResponse.guru.namaLengkap);
        await saveUserRole('teacher');
        await saveSekolahId(loginResponse.guru.sekolahId);
        await saveNip(loginResponse.guru.nip);
        if (loginResponse.guru.email != null) {
          await saveEmail(loginResponse.guru.email!);
        }
        if (loginResponse.guru.noTelepon != null) {
          await saveNoTelepon(loginResponse.guru.noTelepon!);
        }

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
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, newToken);
  }

  Future<void> saveName(String name) async {
    userName.value = name;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_nameKey, name);
  }

  Future<void> saveUserRole(String role) async {
    userRole.value = role;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userRoleKey, role);
  }

  Future<void> saveSekolahId(int id) async {
    sekolahId.value = id;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_sekolahIdKey, id);
  }

  Future<void> saveNip(String nip) async {
    userNip.value = nip;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_nipKey, nip);
  }

  Future<void> saveEmail(String email) async {
    userEmail.value = email;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_emailKey, email);
  }

  Future<void> saveNoTelepon(String noTelepon) async {
    userNoTelepon.value = noTelepon;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_noTeleponKey, noTelepon);
  }

  Future<void> saveNisn(String nisn) async {
    userNisn.value = nisn;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_nisnKey, nisn);
  }

  Future<void> saveKelasId(int id) async {
    userKelasId.value = id;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_kelasIdKey, id);
  }

  String? getToken() {
    return token.value;
  }

  String? getUserName() {
    return userName.value;
  }

  String? getUserRole() {
    return userRole.value;
  }

  int? getSekolahId() {
    return sekolahId.value;
  }

  bool isLoggedIn() {
    return token.value != null && token.value!.isNotEmpty;
  }

  Future<void> logout() async {
    token.value = null;
    userName.value = null;
    userRole.value = null;
    sekolahId.value = null;
    userNip.value = null;
    userEmail.value = null;
    userNoTelepon.value = null;
    userNisn.value = null;
    userKelasId.value = null;
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tokenKey);
    await prefs.remove(_nameKey);
    await prefs.remove(_userRoleKey);
    await prefs.remove(_sekolahIdKey);
    await prefs.remove(_nipKey);
    await prefs.remove(_emailKey);
    await prefs.remove(_noTeleponKey);
    await prefs.remove(_nisnKey);
    await prefs.remove(_kelasIdKey);
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
