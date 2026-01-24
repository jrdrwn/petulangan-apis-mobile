import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/app_config.dart';
import '../models/sekolah_model.dart';
import '../models/kelas_model.dart';
import '../models/peserta_didik_model.dart';
import '../models/bab_model.dart';
import '../models/quiz_model.dart';
import '../models/peserta_didik_guru_model.dart';
import '../models/nilai_peserta_didik_model.dart';

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

  // Get bab and topik with authorization
  Future<List<BabModel>> getBabTopik(String token) async {
    try {
      final response = await http
          .get(
            Uri.parse('$baseUrl/bab/topik'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
          )
          .timeout(timeout);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => BabModel.fromJson(json)).toList();
      } else if (response.statusCode == 401) {
        throw ApiException(
          'Unauthorized - Token tidak valid',
          response.statusCode,
        );
      } else {
        throw ApiException('Gagal mengambil data bab', response.statusCode);
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }

  // Get quiz questions by topik_id with authorization
  Future<List<QuizModel>> getQuiz(int topikId, String token) async {
    try {
      final response = await http
          .get(
            Uri.parse('$baseUrl/quiz/$topikId'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
          )
          .timeout(timeout);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => QuizModel.fromJson(json)).toList();
      } else if (response.statusCode == 401) {
        throw ApiException(
          'Unauthorized - Token tidak valid',
          response.statusCode,
        );
      } else {
        throw ApiException('Gagal mengambil data quiz', response.statusCode);
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }

  // Submit quiz answers
  Future<QuizSubmitResponse> submitQuiz(
    int topikId,
    QuizSubmitRequest request,
    String token,
  ) async {
    try {
      final response = await http
          .post(
            Uri.parse('$baseUrl/quiz/$topikId/submit'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
            body: json.encode(request.toJson()),
          )
          .timeout(timeout);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = json.decode(response.body);
        return QuizSubmitResponse.fromJson(data);
      } else if (response.statusCode == 401) {
        throw ApiException(
          'Unauthorized - Token tidak valid',
          response.statusCode,
        );
      } else {
        final error = json.decode(response.body);
        throw ApiException(
          error['message'] ?? 'Gagal submit quiz',
          response.statusCode,
        );
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }

  // Get kelas by sekolah_id for teacher with auth
  Future<List<KelasModel>> getKelasBySekolahIdGuru(
    int sekolahId,
    String token,
  ) async {
    try {
      final response = await http
          .get(
            Uri.parse('$baseUrl/$sekolahId/kelas'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
          )
          .timeout(timeout);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => KelasModel.fromJson(json)).toList();
      } else if (response.statusCode == 401) {
        throw ApiException(
          'Unauthorized - Token tidak valid',
          response.statusCode,
        );
      } else {
        throw ApiException('Gagal mengambil data kelas', response.statusCode);
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }

  // Get peserta didik by kelas_id for teacher
  Future<List<PesertaDidikGuruModel>> getPesertaDidikByKelasId(
    int kelasId,
    String token, {
    int? limit,
    int? offset,
  }) async {
    try {
      // Build query parameters
      final queryParams = <String, String>{};
      if (limit != null) queryParams['limit'] = limit.toString();
      if (offset != null) queryParams['offset'] = offset.toString();

      final uri = Uri.parse(
        '$baseUrl/guru/peserta-didik/kelas/$kelasId',
      ).replace(queryParameters: queryParams);

      final response = await http
          .get(
            uri,
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
          )
          .timeout(timeout);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data
            .map((json) => PesertaDidikGuruModel.fromJson(json))
            .toList();
      } else if (response.statusCode == 401) {
        throw ApiException(
          'Unauthorized - Token tidak valid',
          response.statusCode,
        );
      } else {
        throw ApiException(
          'Gagal mengambil data peserta didik',
          response.statusCode,
        );
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }

  // Get nilai peserta didik by id_peserta_didik for teacher
  Future<List<BabNilaiModel>> getNilaiPesertaDidik(
    int pesertaDidikId,
    String token,
  ) async {
    try {
      final response = await http
          .get(
            Uri.parse('$baseUrl/guru/peserta-didik/$pesertaDidikId/nilai'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
          )
          .timeout(timeout);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => BabNilaiModel.fromJson(json)).toList();
      } else if (response.statusCode == 401) {
        throw ApiException(
          'Unauthorized - Token tidak valid',
          response.statusCode,
        );
      } else {
        throw ApiException(
          'Gagal mengambil data nilai peserta didik',
          response.statusCode,
        );
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }
}
