import 'package:get/get.dart';
import '../models/student_progress_model.dart';

class StudentDetailController extends GetxController {
  final studentDetail = Rx<StudentDetailModel?>(null);
  final expandedChapters = <String>{}.obs;

  @override
  void onInit() {
    super.onInit();
    loadStudentDetail();
  }

  void loadStudentDetail() {
    final args = Get.arguments as Map<String, dynamic>?;
    if (args != null) {
      final nisn = args['nisn'] as String;
      final name = args['name'] as String;

      // Load student detail with progress
      studentDetail.value = StudentDetailModel.getSampleDetail(nisn, name);
    }
  }

  void toggleChapter(String chapterId) {
    if (expandedChapters.contains(chapterId)) {
      expandedChapters.remove(chapterId);
    } else {
      expandedChapters.add(chapterId);
    }
  }

  bool isChapterExpanded(String chapterId) {
    return expandedChapters.contains(chapterId);
  }

  void goBack() {
    Get.back();
  }
}
