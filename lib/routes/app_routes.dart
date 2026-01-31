// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH = '/splash';
  static const LOGIN_STUDENT = '/login-student';
  static const REGISTER_STUDENT = '/register-student';
  static const LOGIN_TEACHER = '/login-teacher';
  static const SELECT_CLASS = '/select-class';
  static const STUDENT_LIST = '/student-list';
  static const STUDENT_DETAIL = '/student-detail';
  static const DASHBOARD_STUDENT = '/dashboard-student';
  static const VIDEO_MATERIAL = '/video-material';
  static const QUIZ = '/quiz';
  static const QUIZ_COMPLETE = '/quiz-complete';
  static const QUIZ_RESULT = '/quiz-result';
}
