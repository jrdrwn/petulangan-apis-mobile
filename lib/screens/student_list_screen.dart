import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/student_list_controller.dart';
import '../services/auth_service.dart';

class StudentListScreen extends StatelessWidget {
  const StudentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StudentListController());

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

              // Main content
              Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 600),
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
                      horizontal: 20,
                      vertical: 30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Title
                        Text(
                          'DAFTAR PESERTA\nDIDIK',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: const Color(0xFF1D4B8B),
                            letterSpacing: 0.5,
                            height: 1.3,
                          ),
                        ),

                        const SizedBox(height: 25),

                        // Table with horizontal scroll
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade300,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                // Table Header
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 50,
                                        child: _buildHeaderCell('NO'),
                                      ),
                                      _buildVerticalDivider(),
                                      SizedBox(
                                        width: 140,
                                        child: _buildHeaderCell('NISN'),
                                      ),
                                      _buildVerticalDivider(),
                                      SizedBox(
                                        width: 180,
                                        child: _buildHeaderCell('NAMA'),
                                      ),
                                      _buildVerticalDivider(),
                                      SizedBox(
                                        width: 100,
                                        child: _buildHeaderCell('AKSI'),
                                      ),
                                    ],
                                  ),
                                ),

                                // Table Rows with loading/error states
                                Obx(() {
                                  if (controller.isLoading.value) {
                                    return const Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  }

                                  if (controller.errorMessage.isNotEmpty) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text(
                                        'Error: ${controller.errorMessage.value}',
                                        style: const TextStyle(
                                          color: Colors.red,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    );
                                  }

                                  if (controller.pesertaDidik.isEmpty) {
                                    return const Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Center(
                                        child: Text(
                                          'Tidak ada peserta didik',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    );
                                  }

                                  return Column(
                                    children: [
                                      ...controller.pesertaDidik
                                          .asMap()
                                          .entries
                                          .map((entry) {
                                            final index = entry.key;
                                            final student = entry.value;
                                            final isLast =
                                                index ==
                                                controller.pesertaDidik.length -
                                                    1;

                                            return Column(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: index.isEven
                                                        ? Colors.white
                                                        : Colors.grey.shade50,
                                                    borderRadius: isLast
                                                        ? const BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                  12,
                                                                ),
                                                            bottomRight:
                                                                Radius.circular(
                                                                  12,
                                                                ),
                                                          )
                                                        : BorderRadius.zero,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 50,
                                                        child: _buildDataCell(
                                                          (index + 1)
                                                              .toString(),
                                                        ),
                                                      ),
                                                      _buildVerticalDivider(),
                                                      SizedBox(
                                                        width: 140,
                                                        child: _buildDataCell(
                                                          student.nisn,
                                                        ),
                                                      ),
                                                      _buildVerticalDivider(),
                                                      SizedBox(
                                                        width: 180,
                                                        child: _buildDataCell(
                                                          student.namaLengkap,
                                                        ),
                                                      ),
                                                      _buildVerticalDivider(),
                                                      SizedBox(
                                                        width: 100,
                                                        child: _buildActionCell(
                                                          student,
                                                          controller,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                if (!isLast)
                                                  Divider(
                                                    height: 1,
                                                    thickness: 1,
                                                    color: Colors.grey.shade300,
                                                  ),
                                              ],
                                            );
                                          })
                                          .toList(),
                                      if (controller.hasMore.value)
                                        Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: ElevatedButton(
                                            onPressed: controller.loadMore,
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: const Color(
                                                0xFF1565C0,
                                              ),
                                              foregroundColor: Colors.white,
                                            ),
                                            child: const Text('Muat Lebih'),
                                          ),
                                        ),
                                    ],
                                  );
                                }),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        // Kembali button
                        ElevatedButton(
                          onPressed: controller.goBack,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            elevation: 5,
                          ),
                          child: Text(
                            'Kembali',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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

  Widget _buildHeaderCell(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF1D4B8B),
        ),
      ),
    );
  }

  Widget _buildDataCell(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
      child: Text(
        text,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.montserrat(fontSize: 13, color: Colors.black87),
      ),
    );
  }

  Widget _buildActionCell(student, StudentListController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Info button
          InkWell(
            onTap: () => controller.showStudentInfo(student),
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade400, width: 1.5),
              ),
              child: Icon(
                Icons.info_outline,
                size: 18,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          const SizedBox(width: 8),
          // Print button
          InkWell(
            onTap: () => controller.printStudentData(student),
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade400, width: 1.5),
              ),
              child: Icon(
                Icons.print_outlined,
                size: 18,
                color: Colors.grey.shade700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVerticalDivider() {
    return Container(width: 1.5, height: 45, color: Colors.grey.shade300);
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
              decoration: const BoxDecoration(
                color: Color(0xFF1D4B8B),
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
}
