import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/register_student_controller.dart';
import '../models/sekolah_model.dart';
import '../models/kelas_model.dart';

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
            fit: BoxFit.cover,
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
                          () => controller.isLoadingSekolah.value
                              ? const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 18),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        'Memuat data sekolah...',
                                        style: TextStyle(
                                          color: Color(0xFF9DB4C8),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : DropdownButtonHideUnderline(
                                  child: DropdownButton<SekolahModel>(
                                    isExpanded: true,
                                    hint: const Text(
                                      '-Pilih Sekolah-',
                                      style: TextStyle(
                                        color: Color(0xFF9DB4C8),
                                        fontSize: 14,
                                      ),
                                    ),
                                    value: controller.selectedSekolah.value,
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Color(0xFF1565C0),
                                    ),
                                    items: controller.sekolahList.map((
                                      SekolahModel sekolah,
                                    ) {
                                      return DropdownMenuItem<SekolahModel>(
                                        value: sekolah,
                                        child: Text(
                                          sekolah.nama,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: controller.onSekolahChanged,
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
                          () => controller.isLoadingKelas.value
                              ? const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 18),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        'Memuat data kelas...',
                                        style: TextStyle(
                                          color: Color(0xFF9DB4C8),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : DropdownButtonHideUnderline(
                                  child: DropdownButton<KelasModel>(
                                    isExpanded: true,
                                    hint: const Text(
                                      '-Pilih Kelas-',
                                      style: TextStyle(
                                        color: Color(0xFF9DB4C8),
                                        fontSize: 14,
                                      ),
                                    ),
                                    value: controller.selectedKelas.value,
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Color(0xFF1565C0),
                                    ),
                                    items: controller.kelasList.map((
                                      KelasModel kelas,
                                    ) {
                                      return DropdownMenuItem<KelasModel>(
                                        value: kelas,
                                        child: Text(
                                          'Kelas ${kelas.nama}',
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: controller.onKelasChanged,
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Obx(
                          () => TextButton(
                            onPressed: controller.isRegistering.value
                                ? null
                                : controller.goToLogin,
                            child: Text(
                              'Sudah Terdaftar',
                              style: GoogleFonts.montserrat(
                                color: controller.isRegistering.value
                                    ? const Color(
                                        0xFF1565C0,
                                      ).withValues(alpha: 0.5)
                                    : const Color(0xFF1565C0),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline,
                                decorationColor: controller.isRegistering.value
                                    ? const Color(
                                        0xFF1565C0,
                                      ).withValues(alpha: 0.5)
                                    : const Color(0xFF1565C0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Spacer(),
                      Obx(
                        () => ElevatedButton(
                          onPressed: controller.isRegistering.value
                              ? null
                              : controller.register,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1565C0),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            minimumSize: const Size(double.infinity, 56),
                            elevation: 5,
                            disabledBackgroundColor: const Color(
                              0xFF1565C0,
                            ).withValues(alpha: 0.6),
                          ),
                          child: controller.isRegistering.value
                              ? const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                              Colors.white,
                                            ),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    Text(
                                      'MENDAFTAR...',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              : Text(
                                  'DAFTAR',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
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
