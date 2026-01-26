import 'package:get/get.dart';
import '../models/kelas_model.dart';
import '../services/api_service.dart';
import '../services/auth_service.dart';
import '../services/connectivity_service.dart';

class SelectClassController extends GetxController {
  final _apiService = ApiService();
  late final AuthService _authService;
  final _connectivityService = ConnectivityService();

  final availableClasses = <KelasModel>[].obs;
  final selectedClass = Rx<KelasModel?>(null);
  final isLoading = false.obs;
  final errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    _authService = Get.find<AuthService>();
    _loadClassesFromApi();
  }

  Future<void> _loadClassesFromApi() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      // Check internet connection
      final hasConnection = await _connectivityService.hasConnection();
      if (!hasConnection) {
        errorMessage.value = 'Tidak ada koneksi internet';
        Get.snackbar(
          'Peringatan',
          'Tidak ada koneksi internet',
          snackPosition: SnackPosition.TOP,
        );
        return;
      }

      // Get sekolahId from AuthService (saved during login)
      final sekolahId = _authService.getSekolahId();

      if (sekolahId == null) {
        errorMessage.value = 'Data sekolah tidak ditemukan';
        Get.snackbar(
          'Error',
          'Data sekolah tidak ditemukan. Silakan login kembali.',
          snackPosition: SnackPosition.TOP,
        );
        Get.offAllNamed('/login-teacher');
        return;
      }

      // Get token
      final token = _authService.token.value;
      if (token == null) {
        errorMessage.value = 'Token tidak ditemukan';
        Get.snackbar(
          'Error',
          'Silakan login kembali',
          snackPosition: SnackPosition.TOP,
        );
        Get.offAllNamed('/login-teacher');
        return;
      }

      // Fetch classes from API
      final classes = await _apiService.getKelasBySekolahIdGuru(
        sekolahId,
        token,
      );
      availableClasses.value = classes;
    } catch (e) {
      errorMessage.value = e.toString();
      Get.snackbar(
        'Error',
        'Gagal memuat data kelas: ${e.toString()}',
        snackPosition: SnackPosition.TOP,
      );
    } finally {
      isLoading.value = false;
    }
  }

  void selectClass(KelasModel kelas) {
    selectedClass.value = kelas;

    // Get teacher info from AuthService
    final teacherName = _authService.getUserName() ?? '';

    // Navigate to student list after selecting class
    Future.delayed(const Duration(milliseconds: 300), () {
      Get.toNamed(
        '/student-list',
        arguments: {'selectedClass': kelas, 'teacherName': teacherName},
      );
    });
  }

  void goBack() {
    // Logout and return to login screen
    _authService.logout();
    Get.offAllNamed('/splash');
  }
}
