import 'package:get/get.dart';
import '../screens/splash_screen.dart';
import '../screens/login_student_screen.dart';
import '../screens/register_student_screen.dart';
import '../screens/login_teacher_screen.dart';
import '../screens/select_class_screen.dart';
import '../screens/student_list_screen.dart';
import '../screens/student_detail_screen.dart';
import '../screens/dashboard_student_screen.dart';
import '../screens/video_material_screen.dart';
import '../screens/quiz_screen.dart';
import '../screens/quiz_complete_screen.dart';
import '../screens/quiz_result_screen.dart';
import '../controllers/splash_controller.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut<SplashController>(() => SplashController());
      }),
    ),
    GetPage(name: Routes.LOGIN_STUDENT, page: () => const LoginStudentScreen()),
    GetPage(
      name: Routes.REGISTER_STUDENT,
      page: () => const RegisterStudentScreen(),
    ),
    GetPage(name: Routes.LOGIN_TEACHER, page: () => const LoginTeacherScreen()),
    GetPage(name: Routes.SELECT_CLASS, page: () => const SelectClassScreen()),
    GetPage(name: Routes.STUDENT_LIST, page: () => const StudentListScreen()),
    GetPage(
      name: Routes.STUDENT_DETAIL,
      page: () => const StudentDetailScreen(),
    ),
    GetPage(
      name: Routes.DASHBOARD_STUDENT,
      page: () => const DashboardStudentScreen(),
    ),
    GetPage(
      name: Routes.VIDEO_MATERIAL,
      page: () => const VideoMaterialScreen(),
    ),
    GetPage(name: Routes.QUIZ, page: () => const QuizScreen()),
    GetPage(name: Routes.QUIZ_COMPLETE, page: () => const QuizCompleteScreen()),
    GetPage(name: Routes.QUIZ_RESULT, page: () => const QuizResultScreen()),
  ];
}
