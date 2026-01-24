import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/register_student_controller.dart';

class RegisterStudentScreen extends StatelessWidget {
  const RegisterStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterStudentController());

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight:
                    MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    MediaQuery.of(context).padding.bottom,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      const SizedBox(height: 80),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Image(
                            width: 225,
                            height: 225,
                            image: AssetImage('assets/images/logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'REGISTER PESERTA DIDIK',
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1565C0),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Nama Lengkap TextField
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: TextField(
                          controller: controller.namaController,
                          decoration: const InputDecoration(
                            hintText: 'Nama Lengkap',
                            hintStyle: TextStyle(
                              color: Color(0xFF9DB4C8),
                              fontSize: 14,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      // NISN TextField
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: TextField(
                          controller: controller.nisnController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'NISN (Nomor Induk Siswa Nasional)',
                            hintStyle: TextStyle(
                              color: Color(0xFF9DB4C8),
                              fontSize: 14,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      // Konfirmasi NISN TextField
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: TextField(
                          controller: controller.konfirmasiNisnController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'Konfirmasi NISN',
                            hintStyle: TextStyle(
                              color: Color(0xFF9DB4C8),
                              fontSize: 14,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      // Dropdown Pilih Sekolah
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Obx(
                          () => DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              hint: const Text(
                                '-Pilih Sekolah-',
                                style: TextStyle(
                                  color: Color(0xFF9DB4C8),
                                  fontSize: 14,
                                ),
                              ),
                              value: controller.selectedSchool.value,
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xFF1565C0),
                              ),
                              items: controller.schools.map((String school) {
                                return DropdownMenuItem<String>(
                                  value: school,
                                  child: Text(school),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                controller.selectedSchool.value = newValue;
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      // Dropdown Pilih Kelas
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Obx(
                          () => DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              hint: const Text(
                                '-Pilih Kelas-',
                                style: TextStyle(
                                  color: Color(0xFF9DB4C8),
                                  fontSize: 14,
                                ),
                              ),
                              value: controller.selectedClass.value,
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xFF1565C0),
                              ),
                              items: controller.classes.map((String kelas) {
                                return DropdownMenuItem<String>(
                                  value: kelas,
                                  child: Text(kelas),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                controller.selectedClass.value = newValue;
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: controller.goToLogin,
                          child: Text(
                            'Sudah Terdaftar',
                            style: GoogleFonts.montserrat(
                              color: Color(0xFF1565C0),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xFF1565C0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: controller.register,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1565C0),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          minimumSize: const Size(double.infinity, 56),
                          elevation: 5,
                        ),
                        child: Text(
                          'DAFTAR',
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
