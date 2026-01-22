import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/student_model.dart';
import '../models/class_model.dart';

class StudentListController extends GetxController {
  final students = <StudentModel>[].obs;
  final selectedClass = Rx<KelasModel?>(null);
  final teacherName = ''.obs;
  final school = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadArguments();
    loadStudents();
  }

  void loadArguments() {
    final args = Get.arguments as Map<String, dynamic>?;
    if (args != null) {
      selectedClass.value = args['selectedClass'] as KelasModel?;
      teacherName.value = args['teacherName'] as String? ?? '';
      school.value = args['school'] as String? ?? '';
    }
  }

  void loadStudents() {
    if (selectedClass.value != null) {
      students.value = StudentModel.getSampleStudents(selectedClass.value!.id);
    }
  }

  void showStudentInfo(StudentModel student) {
    Get.toNamed(
      '/student-detail',
      arguments: {'nisn': student.nisn, 'name': student.name},
    );
  }

  void printStudentData(StudentModel student) {
    // TODO: Implement print functionality
    Get.snackbar(
      'Print',
      'Mencetak data ${student.name}...',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: const Color(0xFF1565C0),
      colorText: Colors.white,
    );
  }

  void goBack() {
    Get.back();
  }
}
