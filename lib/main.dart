import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'routes/app_pages.dart';
import 'services/auth_service.dart';

void main() {
  // Initialize AuthService as a permanent singleton
  Get.put(AuthService(), permanent: true);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Petualangan IPAS',
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(Brightness.light),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

ThemeData _buildTheme(Brightness brightness) {
  final baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.montserratTextTheme(baseTheme.textTheme),
  );
}
