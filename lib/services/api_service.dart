import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/app_config.dart';
import '../models/sekolah_model.dart';
import '../models/kelas_model.dart';
import '../models/peserta_didik_model.dart';

class ApiException implements Exception {
  final String message;
  final int? statusCode;

  ApiException(this.message, [this.statusCode]);

  @override
  String toString() => message;
}

class ApiService {
  static String get baseUrl => AppConfig.apiBaseUrl;
  static Duration get timeout => AppConfig.apiTimeout;

  // Get all sekolah
  Future<List<SekolahModel>> getSekolah() async {
    try {
      final response = await http
          .get(Uri.parse('$baseUrl/sekolah'))
          .timeout(timeout);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => SekolahModel.fromJson(json)).toList();
      } else {
        throw ApiException('Gagal mengambil data sekolah', response.statusCode);
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }

  // Get kelas by sekolah_id
  Future<List<KelasModel>> getKelasBySekolahId(int sekolahId) async {
    try {
      final response = await http
          .get(Uri.parse('$baseUrl/$sekolahId/kelas'))
          .timeout(timeout);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => KelasModel.fromJson(json)).toList();
      } else {
        throw ApiException('Gagal mengambil data kelas', response.statusCode);
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }

  // Register peserta didik
  Future<PesertaDidikModel> registerPesertaDidik(
    RegisterPesertaDidikRequest request,
  ) async {
    try {
      final response = await http
          .post(
            Uri.parse('$baseUrl/peserta-didik/register'),
            headers: {'Content-Type': 'application/json'},
            body: json.encode(request.toJson()),
          )
          .timeout(timeout);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = json.decode(response.body);
        return PesertaDidikModel.fromJson(data);
      } else {
        final error = json.decode(response.body);
        throw ApiException(
          error['message'] ?? 'Gagal mendaftar peserta didik',
          response.statusCode,
        );
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }
}
