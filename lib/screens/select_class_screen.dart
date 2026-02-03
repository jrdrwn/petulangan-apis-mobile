import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/select_class_controller.dart';
import '../models/kelas_model.dart';
import '../services/auth_service.dart';

class SelectClassScreen extends StatelessWidget {
  const SelectClassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SelectClassController());

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg2.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // Back button
              Positioned(
                top: 16,
                left: 16,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFCD3551),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: controller.goBack,
                    tooltip: 'Kembali',
                  ),
                ),
              ),

              // Profile dropdown at top right
              Positioned(
                top: 16,
                right: 16,
                child: _buildProfileDropdown(),
              ),

              // Main content centered
              Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.15),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 50,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Title
                        Text(
                          'PILIH KELAS',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            color: const Color(0xFF1D4B8B),
                            letterSpacing: 1.2,
                          ),
                        ),

                        const SizedBox(height: 50),

                        // Class buttons with loading/error states
                        Obx(() {
                          if (controller.isLoading.value) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                          if (controller.errorMessage.isNotEmpty) {
                            return Column(
                              children: [
                                Text(
                                  'Error: ${controller.errorMessage.value}',
                                  style: const TextStyle(color: Colors.red),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: controller.goBack,
                                  child: const Text('Kembali'),
                                ),
                              ],
                            );
                          }

                          if (controller.availableClasses.isEmpty) {
                            return const Text(
                              'Tidak ada kelas tersedia',
                              style: TextStyle(color: Colors.grey),
                            );
                          }

                          return Column(
                            children: controller.availableClasses.map((kelas) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: _buildClassButton(kelas, controller),
                              );
                            }).toList(),
                          );
                        }),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileDropdown() {
    final authService = Get.find<AuthService>();
    final teacherName = authService.getUserName() ?? 'Guru';

    return PopupMenuButton<String>(
      offset: const Offset(0, 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: const Color(0xFF1D4B8B),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.person, color: Colors.white, size: 22),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  teacherName,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1D4B8B),
                  ),
                ),
                Text(
                  'Guru',
                  style: GoogleFonts.montserrat(
                    fontSize: 10,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 4),
            Icon(Icons.arrow_drop_down, color: Colors.grey.shade600),
          ],
        ),
      ),
      itemBuilder: (context) => [
        PopupMenuItem<String>(
          value: 'profile',
          enabled: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xFF1D4B8B),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.person, color: Colors.white, size: 24),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        teacherName,
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1D4B8B),
                        ),
                      ),
                      Text(
                        'Guru',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(height: 20),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'logout',
          child: Row(
            children: [
              Icon(Icons.logout, color: Colors.red.shade600, size: 20),
              const SizedBox(width: 12),
              Text(
                'Keluar',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.red.shade600,
                ),
              ),
            ],
          ),
        ),
      ],
      onSelected: (value) {
        if (value == 'logout') {
          _showLogoutDialog();
        }
      },
    );
  }

  void _showLogoutDialog() {
    Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(
          'Konfirmasi Keluar',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
        ),
        content: Text(
          'Apakah Anda yakin ingin keluar?',
          style: GoogleFonts.montserrat(),
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text(
              'Batal',
              style: GoogleFonts.montserrat(color: Colors.grey),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
              final authService = Get.find<AuthService>();
              authService.logout();
              Get.offAllNamed('/splash');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: Text('Keluar', style: GoogleFonts.montserrat()),
          ),
        ],
      ),
    );
  }

  Widget _buildClassButton(KelasModel kelas, SelectClassController controller) {
    return Material(
      elevation: 6,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => controller.selectClass(kelas),
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 30),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF1565C0), Color(0xFF1D4B8B)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            kelas.nama,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
