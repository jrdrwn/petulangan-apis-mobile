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

  // Update profile peserta didik
  Future<void> updateProfilePesertaDidik({
    String? namaLengkap,
    String? nisn,
    int? kelasId,
    required String token,
  }) async {
    try {
      final body = <String, dynamic>{};
      if (namaLengkap != null && namaLengkap.isNotEmpty) {
        body['nama_lengkap'] = namaLengkap;
      }
      if (nisn != null && nisn.isNotEmpty) {
        body['nisn'] = nisn;
      }
      if (kelasId != null) {
        body['kelas_id'] = kelasId;
      }

      final response = await http
          .put(
            Uri.parse('$baseUrl/peserta-didik/profile'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
            body: json.encode(body),
          )
          .timeout(timeout);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      } else if (response.statusCode == 401) {
        throw ApiException(
          'Unauthorized - Token tidak valid',
          response.statusCode,
        );
      } else {
        final error = json.decode(response.body);
        throw ApiException(
          error['message'] ?? 'Gagal update profil',
          response.statusCode,
        );
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }

  // Reset progress peserta didik
  Future<void> resetProgressPesertaDidik(String token) async {
    try {
      final response = await http
          .delete(
            Uri.parse('$baseUrl/peserta-didik/reset'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
          )
          .timeout(timeout);

      if (response.statusCode == 200 || response.statusCode == 204) {
        return;
      } else if (response.statusCode == 401) {
        throw ApiException(
          'Unauthorized - Token tidak valid',
          response.statusCode,
        );
      } else {
        final error = json.decode(response.body);
        throw ApiException(
          error['message'] ?? 'Gagal reset progress',
          response.statusCode,
        );
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }

  // Delete account peserta didik
  Future<void> deleteAccountPesertaDidik(String token) async {
    try {
      final response = await http
          .delete(
            Uri.parse('$baseUrl/peserta-didik/profile'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
          )
          .timeout(timeout);

      if (response.statusCode == 200 || response.statusCode == 204) {
        return;
      } else if (response.statusCode == 401) {
        throw ApiException(
          'Unauthorized - Token tidak valid',
          response.statusCode,
        );
      } else {
        final error = json.decode(response.body);
        throw ApiException(
          error['message'] ?? 'Gagal hapus akun',
          response.statusCode,
        );
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }

  // Register guru
  Future<void> registerGuru({
    required String namaLengkap,
    required String nip,
    required String password,
    required int sekolahId,
  }) async {
    try {
      final response = await http
          .post(
            Uri.parse('$baseUrl/guru/register'),
            headers: {'Content-Type': 'application/json'},
            body: json.encode({
              'nama_lengkap': namaLengkap,
              'nip': nip,
              'password': password,
              'sekolah_id': sekolahId,
            }),
          )
          .timeout(timeout);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      } else {
        final error = json.decode(response.body);
        throw ApiException(
          error['message'] ?? 'Gagal mendaftar guru',
          response.statusCode,
        );
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }

  // Update profile guru
  Future<void> updateProfileGuru({
    String? namaLengkap,
    String? email,
    String? nip,
    String? password,
    String? noTelepon,
    int? sekolahId,
    required String token,
  }) async {
    try {
      final body = <String, dynamic>{};
      if (namaLengkap != null && namaLengkap.isNotEmpty) {
        body['nama_lengkap'] = namaLengkap;
      }
      if (email != null) {
        body['email'] = email.isNotEmpty ? email : null;
      }
      if (nip != null && nip.isNotEmpty) {
        body['nip'] = nip;
      }
      if (password != null && password.isNotEmpty) {
        body['password'] = password;
      }
      if (noTelepon != null) {
        body['no_telepon'] = noTelepon.isNotEmpty ? noTelepon : null;
      }
      if (sekolahId != null) {
        body['sekolah_id'] = sekolahId;
      }

      final response = await http
          .put(
            Uri.parse('$baseUrl/guru/profile'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
            body: json.encode(body),
          )
          .timeout(timeout);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      } else if (response.statusCode == 401) {
        throw ApiException(
          'Unauthorized - Token tidak valid',
          response.statusCode,
        );
      } else {
        final error = json.decode(response.body);
        throw ApiException(
          error['message'] ?? 'Gagal update profil guru',
          response.statusCode,
        );
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }

  // Delete account guru
  Future<void> deleteAccountGuru(String token) async {
    try {
      final response = await http
          .delete(
            Uri.parse('$baseUrl/guru/profile'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
          )
          .timeout(timeout);

      if (response.statusCode == 200 || response.statusCode == 204) {
        return;
      } else if (response.statusCode == 401) {
        throw ApiException(
          'Unauthorized - Token tidak valid',
          response.statusCode,
        );
      } else {
        final error = json.decode(response.body);
        throw ApiException(
          error['message'] ?? 'Gagal hapus akun guru',
          response.statusCode,
        );
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Terjadi kesalahan: ${e.toString()}');
    }
  }
}
