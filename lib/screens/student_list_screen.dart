import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/student_list_controller.dart';

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

              // Logo at top right
              Positioned(
                top: 16,
                right: 16,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.15),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.orange.shade300,
                          child: const Icon(
                            Icons.school,
                            color: Colors.white,
                            size: 35,
                          ),
                        );
                      },
                    ),
                  ),
                ),
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
                        Obx(() {
                          return SingleChildScrollView(
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

                                  // Table Rows
                                  ...controller.students.asMap().entries.map((
                                    entry,
                                  ) {
                                    final index = entry.key;
                                    final student = entry.value;
                                    final isLast =
                                        index == controller.students.length - 1;

                                    return Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: index.isEven
                                                ? Colors.white
                                                : Colors.grey.shade50,
                                            borderRadius: isLast
                                                ? const BorderRadius.only(
                                                    bottomLeft: Radius.circular(
                                                      12,
                                                    ),
                                                    bottomRight:
                                                        Radius.circular(12),
                                                  )
                                                : BorderRadius.zero,
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 50,
                                                child: _buildDataCell(
                                                  (index + 1).toString(),
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
                                                  student.name,
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
                                  }).toList(),
                                ],
                              ),
                            ),
                          );
                        }),

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
}
