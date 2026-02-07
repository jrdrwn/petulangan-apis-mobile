import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/dashboard_student_controller.dart';
import '../models/sekolah_model.dart';
import '../models/kelas_model.dart';
import '../services/auth_service.dart';

class DashboardStudentScreen extends StatelessWidget {
  const DashboardStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardStudentController());
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // Blue overlay background with rounded top
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(184, 73, 217, 236),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(screenWidth * 0.6),
                      topRight: Radius.circular(screenWidth * 0.6),
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/texture_bg.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.15, // transparan agar tidak terlalu mencolok
                    ),
                  ),
                ),
              ),
              // Logout button
              Positioned(
                top: 10,
                left: 10,
                child: IconButton(
                  icon: const Icon(Icons.logout, color: Colors.white, size: 25),
                  onPressed: controller.logout,
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xFFCD3551),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(8),
                    shadowColor: Colors.black.withValues(alpha: 0.2),
                    elevation: 5,
                  ),
                ),
              ),
              // Profile dropdown button
              Positioned(
                top: 10,
                right: 10,
                child: _buildProfileDropdown(controller),
              ),
              // Main content
              Column(
                children: [
                  const SizedBox(height: 60),
                  // Logo
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Call to action text
                  Text(
                    'Ayo mulai petualanganmu!',
                    style: GoogleFonts.montserrat(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(1, 1),
                          blurRadius: 3,
                          color: Colors.black26,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  // Scrollable content with chapters
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () => controller.fetchBabTopik(),
                      color: const Color(0xFF1565C0),
                      backgroundColor: Colors.white,
                      child: Obx(
                        () => controller.isLoadingBab.value
                            ? const Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      'Memuat materi...',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : LayoutBuilder(
                                builder: (context, constraints) {
                                  final containerWidth = constraints.maxWidth;
                                  final containerHeight = constraints.maxHeight;

                                  return SingleChildScrollView(
                                    physics:
                                        const AlwaysScrollableScrollPhysics(),
                                    child: SizedBox(
                                      width: containerWidth,
                                      height: containerHeight,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/maps.png',
                                            ),
                                            fit: BoxFit.cover,
                                            alignment: Alignment.topCenter,
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: containerWidth * 0.01,
                                              top: containerHeight * 0.01,
                                              child: Image(
                                                image: AssetImage(
                                                  'assets/images/idashboard.png',
                                                ),
                                                width: containerWidth * 0.5,
                                              ),
                                            ),
                                            // Chapter buttons with responsive positioning
                                            Positioned(
                                              right: containerWidth * 0.20,
                                              top: containerHeight * 0.24,
                                              child: _ChapterButton(
                                                label: 'BAB VI',
                                                controller: controller,
                                                screenWidth: containerWidth,
                                                onPressed: () {
                                                  controller.showChapterDialog(
                                                    'BAB VI',
                                                    context,
                                                  );
                                                },
                                              ),
                                            ),
                                            Positioned(
                                              left: containerWidth * 0.20,
                                              top: containerHeight * 0.38,
                                              child: _ChapterButton(
                                                label: 'BAB V',
                                                controller: controller,
                                                screenWidth: containerWidth,
                                                onPressed: () {
                                                  controller.showChapterDialog(
                                                    'BAB V',
                                                    context,
                                                  );
                                                },
                                              ),
                                            ),
                                            Positioned(
                                              right: containerWidth * 0.03,
                                              top: containerHeight * 0.47,
                                              child: _ChapterButton(
                                                label: 'BAB VIII',
                                                controller: controller,
                                                screenWidth: containerWidth,
                                                onPressed: () {
                                                  controller.showChapterDialog(
                                                    'BAB VIII',
                                                    context,
                                                  );
                                                },
                                              ),
                                            ),
                                            Positioned(
                                              left: containerWidth * 0.16,
                                              top: containerHeight * 0.70,
                                              child: _ChapterButton(
                                                label: 'BAB VII',
                                                controller: controller,
                                                screenWidth: containerWidth,
                                                onPressed: () {
                                                  controller.showChapterDialog(
                                                    'BAB VII',
                                                    context,
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileDropdown(DashboardStudentController controller) {
    return PopupMenuButton<String>(
      offset: const Offset(0, 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.white,
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF1565C0),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 14,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 18, color: Color(0xFF1565C0)),
            ),
            const SizedBox(width: 8),
            Obx(
              () => Text(
                controller.studentName.value.split(' ').first,
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 4),
            const Icon(Icons.arrow_drop_down, color: Colors.white),
          ],
        ),
      ),
      itemBuilder: (context) => [
        // Profile header
        PopupMenuItem<String>(
          enabled: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  controller.studentName.value,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Peserta Didik',
                style: GoogleFonts.montserrat(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
        const PopupMenuDivider(),
        // Progress section
        PopupMenuItem<String>(
          enabled: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Progress Belajar',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              Obx(
                () => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: controller.progressPercentage,
                        minHeight: 12,
                        backgroundColor: Colors.grey.shade300,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          controller.progressPercentage >= 1.0
                              ? Colors.green
                              : const Color(0xFF1565C0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          controller.progressText,
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        Text(
                          '${(controller.progressPercentage * 100).toInt()}%',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: controller.progressPercentage >= 1.0
                                ? Colors.green
                                : const Color(0xFF1565C0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const PopupMenuDivider(),
        // Download report
        PopupMenuItem<String>(
          value: 'download',
          child: Obx(
            () => Row(
              children: [
                controller.isDownloadingReport.value
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.download, color: Color(0xFF1565C0)),
                const SizedBox(width: 12),
                Text(
                  controller.isDownloadingReport.value
                      ? 'Mengunduh...'
                      : 'Download Laporan',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ),
        const PopupMenuDivider(),
        // Update profile
        PopupMenuItem<String>(
          value: 'update_profile',
          child: Row(
            children: [
              const Icon(Icons.edit, color: Color(0xFF1565C0)),
              const SizedBox(width: 12),
              Text(
                'Update Profil',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
        // Reset progress
        PopupMenuItem<String>(
          value: 'reset_progress',
          child: Row(
            children: [
              const Icon(Icons.refresh, color: Colors.orange),
              const SizedBox(width: 12),
              Text(
                'Reset Progress',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
        // Delete account
        PopupMenuItem<String>(
          value: 'delete_account',
          child: Row(
            children: [
              const Icon(Icons.delete_forever, color: Colors.red),
              const SizedBox(width: 12),
              Text(
                'Hapus Akun',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ],
      onSelected: (value) {
        if (value == 'download') {
          controller.downloadLaporan();
        } else if (value == 'update_profile') {
          _showUpdateProfileDialog(controller);
        } else if (value == 'reset_progress') {
          _showResetProgressDialog(controller);
        } else if (value == 'delete_account') {
          _showDeleteAccountDialog(controller);
        }
      },
    );
  }

  void _showUpdateProfileDialog(DashboardStudentController controller) {
    final authService = Get.find<AuthService>();
    // Pre-fill with saved data
    controller.profileNamaController.text = controller.studentName.value;
    controller.profileNisnController.text = authService.userNisn.value ?? '';
    controller.selectedSekolah.value = null;
    controller.selectedKelas.value = null;
    controller.kelasList.clear();

    // Fetch sekolah list and auto-select sekolah+kelas by kelasId
    controller.fetchSekolah();

    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header
                Row(
                  children: [
                    const Icon(Icons.edit, color: Color(0xFF1565C0), size: 28),
                    const SizedBox(width: 12),
                    Text(
                      'Update Profil',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1565C0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Nama field
                TextField(
                  controller: controller.profileNamaController,
                  decoration: InputDecoration(
                    labelText: 'Nama Lengkap',
                    labelStyle: GoogleFonts.montserrat(),
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color(0xFF1565C0),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // NISN field
                TextField(
                  controller: controller.profileNisnController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'NISN',
                    labelStyle: GoogleFonts.montserrat(),
                    prefixIcon: const Icon(Icons.badge),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color(0xFF1565C0),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Sekolah dropdown
                Obx(() {
                  if (controller.isLoadingSekolah.value) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  return DropdownButtonFormField<SekolahModel>(
                    initialValue: controller.selectedSekolah.value,
                    decoration: InputDecoration(
                      labelText: 'Sekolah',
                      labelStyle: GoogleFonts.montserrat(),
                      prefixIcon: const Icon(Icons.school),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xFF1565C0),
                          width: 2,
                        ),
                      ),
                    ),
                    isExpanded: true,
                    items: controller.sekolahList
                        .map(
                          (sekolah) => DropdownMenuItem<SekolahModel>(
                            value: sekolah,
                            child: Text(
                              sekolah.nama,
                              style: GoogleFonts.montserrat(fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      controller.selectedSekolah.value = value;
                      if (value != null) {
                        controller.fetchKelasBySekolahId(value.id);
                      }
                    },
                  );
                }),
                const SizedBox(height: 16),

                // Kelas dropdown
                Obx(() {
                  if (controller.isLoadingKelas.value) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  return DropdownButtonFormField<KelasModel>(
                    initialValue: controller.selectedKelas.value,
                    decoration: InputDecoration(
                      labelText: 'Kelas',
                      labelStyle: GoogleFonts.montserrat(),
                      prefixIcon: const Icon(Icons.class_),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xFF1565C0),
                          width: 2,
                        ),
                      ),
                    ),
                    isExpanded: true,
                    items: controller.kelasList
                        .map(
                          (kelas) => DropdownMenuItem<KelasModel>(
                            value: kelas,
                            child: Text(
                              kelas.nama,
                              style: GoogleFonts.montserrat(fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      controller.selectedKelas.value = value;
                    },
                  );
                }),
                const SizedBox(height: 24),

                // Buttons
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Get.back(),
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFF1565C0)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        child: Text(
                          'Batal',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF1565C0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Obx(
                        () => ElevatedButton(
                          onPressed: controller.isUpdatingProfile.value
                              ? null
                              : () => controller.updateProfile(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1565C0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: controller.isUpdatingProfile.value
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: Colors.white,
                                  ),
                                )
                              : Text(
                                  'Simpan',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  void _showResetProgressDialog(DashboardStudentController controller) {
    Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Row(
          children: [
            const Icon(Icons.warning_amber_rounded,
                color: Colors.orange, size: 28),
            const SizedBox(width: 12),
            Text(
              'Reset Progress',
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: Text(
          'Apakah kamu yakin ingin mereset semua progress belajar?\n\nSemua data progress akan dihapus dan tidak bisa dikembalikan.',
          style: GoogleFonts.montserrat(fontSize: 14, color: Colors.black87),
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text(
              'Batal',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ),
          Obx(
            () => ElevatedButton(
              onPressed: controller.isResettingProgress.value
                  ? null
                  : () => controller.resetProgress(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: controller.isResettingProgress.value
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : Text(
                      'Reset',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

  void _showDeleteAccountDialog(DashboardStudentController controller) {
    Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Row(
          children: [
            const Icon(Icons.delete_forever, color: Colors.red, size: 28),
            const SizedBox(width: 12),
            Text(
              'Hapus Akun',
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ],
        ),
        content: Text(
          'Apakah kamu yakin ingin menghapus akun?\n\n⚠️ Semua data termasuk progress belajar akan dihapus permanen dan tidak bisa dikembalikan.',
          style: GoogleFonts.montserrat(fontSize: 14, color: Colors.black87),
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text(
              'Batal',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ),
          Obx(
            () => ElevatedButton(
              onPressed: controller.isDeletingAccount.value
                  ? null
                  : () => controller.deleteAccount(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: controller.isDeletingAccount.value
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : Text(
                      'Hapus',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }
}

class _ChapterButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final DashboardStudentController controller;
  final double screenWidth;

  const _ChapterButton({
    required this.label,
    required this.onPressed,
    required this.controller,
    required this.screenWidth,
  });

  @override
  State<_ChapterButton> createState() => _ChapterButtonState();
}

class _ChapterButtonState extends State<_ChapterButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _bounceController;
  late Animation<double> _bounceAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _bounceController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _bounceAnimation = Tween<double>(begin: 0, end: 8).animate(
      CurvedAnimation(parent: _bounceController, curve: Curves.easeInOut),
    );
    _bounceController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _bounceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasUnlocked = widget.controller.hasUnlockedMaterial(widget.label);

    // Responsive sizing with min-max constraints
    final iconSize = (widget.screenWidth * 0.16).clamp(50.0, 80.0);
    final fontSize = (widget.screenWidth * 0.038).clamp(12.0, 16.0);

    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      onTap: widget.onPressed,
      child: AnimatedBuilder(
        animation: _bounceAnimation,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, -_bounceAnimation.value),
            child: AnimatedScale(
              scale: _isPressed ? 0.9 : 1.0,
              duration: const Duration(milliseconds: 100),
              child: child,
            ),
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Book icon with glow effect when unlocked
            Container(
              width: iconSize,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: hasUnlocked
                    ? [
                        BoxShadow(
                          color: Colors.amber.withValues(alpha: 0.5),
                          blurRadius: 15,
                          spreadRadius: 2,
                        ),
                      ]
                    : null,
              ),
              child: Image.asset(
                hasUnlocked
                    ? 'assets/images/open_book.png'
                    : 'assets/images/close_book.png',
                fit: BoxFit.contain,
              ),
            ),
            // Chapter label with animation
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: GoogleFonts.montserrat(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: hasUnlocked ? Colors.amber.shade100 : Colors.white,
                shadows: [
                  Shadow(
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                    color: Colors.black26,
                  ),
                ],
              ),
              child: Text(widget.label),
            ),
          ],
        ),
      ),
    );
  }
}
