import 'package:get/get.dart';
import '../models/class_model.dart';

class SelectClassController extends GetxController {
  final availableClasses = <KelasModel>[].obs;
  final selectedClass = Rx<KelasModel?>(null);

  @override
  void onInit() {
    super.onInit();
    loadAvailableClasses();
  }

  void loadAvailableClasses() {
    availableClasses.value = KelasModel.getAvailableClasses();
  }

  void selectClass(KelasModel kelas) {
    selectedClass.value = kelas;

    // Get teacher info from arguments
    final args = Get.arguments as Map<String, dynamic>?;
    final teacherName = args?['teacherName'] as String? ?? '';
    final school = args?['school'] as String? ?? '';

    // Navigate to student list after selecting class
    Future.delayed(const Duration(milliseconds: 300), () {
      Get.offNamed(
        '/student-list',
        arguments: {
          'selectedClass': kelas,
          'teacherName': teacherName,
          'school': school,
        },
      );
    });
  }

  void goBack() {
    Get.back();
  }
}
