import 'package:get/get.dart';
import '../services/auth_service.dart';
import '../routes/app_pages.dart';

class SplashController extends GetxController {
  final AuthService _authService = Get.find<AuthService>();
  final isNavigating = false.obs;

  @override
  void onInit() {
    super.onInit();
    _checkAutoLogin();
  }

  Future<void> _checkAutoLogin() async {
    // Ensure AuthService data is loaded
    await _authService.ensureInitialized();

    // Wait for splash screen visibility (3 seconds)
    await Future.delayed(const Duration(seconds: 3));

    // Prevent navigation if already navigating
    if (isNavigating.value) return;
    isNavigating.value = true;

    // Check if user is logged in
    if (_authService.isLoggedIn()) {
      final userRole = _authService.getUserRole();

      if (userRole == 'student') {
        // Navigate to student dashboard
        Get.offAllNamed(Routes.DASHBOARD_STUDENT);
      } else if (userRole == 'teacher') {
        // Navigate to teacher class selection
        Get.offAllNamed(Routes.SELECT_CLASS);
      } else {
        // If role is not recognized, go to student login
        Get.offAllNamed(Routes.LOGIN_STUDENT);
      }
    } else {
      // Not logged in, go to student login
      Get.offAllNamed(Routes.LOGIN_STUDENT);
    }
  }

  Future<void> onButtonPressed() async {
    // Prevent navigation if already navigating
    if (isNavigating.value) return;
    isNavigating.value = true;

    // Ensure AuthService data is loaded
    await _authService.ensureInitialized();

    // Check if user is logged in
    if (_authService.isLoggedIn()) {
      final userRole = _authService.getUserRole();

      if (userRole == 'student') {
        // Navigate to student dashboard
        Get.offAllNamed(Routes.DASHBOARD_STUDENT);
      } else if (userRole == 'teacher') {
        // Navigate to teacher class selection
        Get.offAllNamed(Routes.SELECT_CLASS);
      } else {
        // If role is not recognized, go to student login
        Get.offAllNamed(Routes.LOGIN_STUDENT);
      }
    } else {
      // Not logged in, go to student login
      Get.offAllNamed(Routes.LOGIN_STUDENT);
    }
  }
}
