import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/student_list_controller.dart';
import '../models/sekolah_model.dart';
import '../services/api_service.dart';
import '../services/auth_service.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key});

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _cardScale;
  late Animation<Offset> _cardSlide;
  late Animation<double> _titleFade;
  late Animation<double> _tableFade;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _cardScale = Tween<double>(begin: 0.9, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOutBack),
      ),
    );

    _cardSlide = Tween<Offset>(begin: const Offset(0, 0.15), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _animationController,
            curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
          ),
        );

    _titleFade = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.2, 0.6, curve: Curves.easeOut),
      ),
    );

    _tableFade = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.4, 1.0, curve: Curves.easeOut),
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
              Positioned(top: 16, right: 16, child: _buildProfileDropdown()),

              // Main content
              Center(
                child: RefreshIndicator(
                  onRefresh: () => controller.refreshData(),
                  color: const Color(0xFF1565C0),
                  backgroundColor: Colors.white,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                    child: SlideTransition(
                      position: _cardSlide,
                      child: ScaleTransition(
                        scale: _cardScale,
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
                              // Title with fade animation
                              FadeTransition(
                                opacity: _titleFade,
                                child: Text(
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
                              ),

                              const SizedBox(height: 25),

                              // Table with horizontal scroll and fade animation
                              FadeTransition(
                                opacity: _tableFade,
                                child: SingleChildScrollView(
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
                                            borderRadius:
                                                const BorderRadius.only(
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
                                                child:
                                                    CircularProgressIndicator(),
                                              ),
                                            );
                                          }

                                          if (controller
                                              .errorMessage
                                              .isNotEmpty) {
                                            return Padding(
                                              padding: const EdgeInsets.all(
                                                20.0,
                                              ),
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
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
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
                                                        controller
                                                                .pesertaDidik
                                                                .length -
                                                            1;

                                                    return _AnimatedTableRow(
                                                      index: index,
                                                      student: student,
                                                      isLast: isLast,
                                                      controller: controller,
                                                      buildDataCell:
                                                          _buildDataCell,
                                                      buildVerticalDivider:
                                                          _buildVerticalDivider,
                                                      buildActionCell:
                                                          _buildActionCell,
                                                    );
                                                  }),
                                              if (controller.hasMore.value)
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                    16.0,
                                                  ),
                                                  child:
                                                      _AnimatedLoadMoreButton(
                                                        onPressed:
                                                            controller.loadMore,
                                                      ),
                                                ),
                                            ],
                                          );
                                        }),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 25),

                              // Kembali button with animation
                              FadeTransition(
                                opacity: _tableFade,
                                child: _AnimatedBackButton(
                                  onPressed: controller.goBack,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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

  Widget _buildActionCell(dynamic student, StudentListController controller) {
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

    return Obx(() {
      final teacherName = authService.userName.value ?? 'Guru';
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
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 24,
                    ),
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
        // Update Profile
        PopupMenuItem<String>(
          value: 'update_profile',
          child: Row(
            children: [
              const Icon(Icons.edit, color: Color(0xFF1D4B8B), size: 20),
              const SizedBox(width: 12),
              Text(
                'Update Profil',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
        // Delete Account
        PopupMenuItem<String>(
          value: 'delete_account',
          child: Row(
            children: [
              const Icon(Icons.delete_forever, color: Colors.red, size: 20),
              const SizedBox(width: 12),
              Text(
                'Hapus Akun',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        const PopupMenuDivider(),
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
        } else if (value == 'update_profile') {
          _showUpdateProfileDialog();
        } else if (value == 'delete_account') {
          _showDeleteAccountDialog();
        }
      },
    );
    });
  }

  void _showUpdateProfileDialog() {
    final authService = Get.find<AuthService>();
    final apiService = ApiService();
    final namaController = TextEditingController(text: authService.userName.value ?? '');
    final nipController = TextEditingController(text: authService.userNip.value ?? '');
    final emailController = TextEditingController(text: authService.userEmail.value ?? '');
    final passwordController = TextEditingController();
    final noTeleponController = TextEditingController(text: authService.userNoTelepon.value ?? '');
    final sekolahList = <SekolahModel>[].obs;
    final selectedSekolah = Rxn<SekolahModel>();
    final isLoadingSekolah = false.obs;
    final isUpdating = false.obs;
    final obscurePassword = true.obs;

    () async {
      isLoadingSekolah.value = true;
      try {
        sekolahList.value = await apiService.getSekolah();
        final savedSekolahId = authService.getSekolahId();
        if (savedSekolahId != null) {
          final match = sekolahList.where((s) => s.id == savedSekolahId);
          if (match.isNotEmpty) selectedSekolah.value = match.first;
        }
      } catch (_) {}
      isLoadingSekolah.value = false;
    }();

    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Icon(Icons.edit, color: Color(0xFF1D4B8B), size: 28),
                    const SizedBox(width: 12),
                    Text('Update Profil', style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, color: const Color(0xFF1D4B8B))),
                  ],
                ),
                const SizedBox(height: 8),
                Text('Isi field yang ingin diubah saja', style: GoogleFonts.montserrat(fontSize: 12, color: Colors.grey)),
                const SizedBox(height: 20),
                TextField(
                  controller: namaController,
                  decoration: InputDecoration(labelText: 'Nama Lengkap', labelStyle: GoogleFonts.montserrat(), prefixIcon: const Icon(Icons.person), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: Color(0xFF1D4B8B), width: 2))),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: nipController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'NIP', labelStyle: GoogleFonts.montserrat(), prefixIcon: const Icon(Icons.badge), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: Color(0xFF1D4B8B), width: 2))),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: 'Email', labelStyle: GoogleFonts.montserrat(), prefixIcon: const Icon(Icons.email), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: Color(0xFF1D4B8B), width: 2))),
                ),
                const SizedBox(height: 12),
                Obx(
                  () => TextField(
                    controller: passwordController,
                    obscureText: obscurePassword.value,
                    decoration: InputDecoration(labelText: 'Password Baru', labelStyle: GoogleFonts.montserrat(), prefixIcon: const Icon(Icons.lock), suffixIcon: IconButton(icon: Icon(obscurePassword.value ? Icons.visibility_off : Icons.visibility, color: Colors.grey), onPressed: () => obscurePassword.value = !obscurePassword.value), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: Color(0xFF1D4B8B), width: 2))),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: noTeleponController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(labelText: 'No. Telepon', labelStyle: GoogleFonts.montserrat(), prefixIcon: const Icon(Icons.phone), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: Color(0xFF1D4B8B), width: 2))),
                ),
                const SizedBox(height: 12),
                Obx(() {
                  if (isLoadingSekolah.value) {
                    return const Padding(padding: EdgeInsets.symmetric(vertical: 8), child: Center(child: CircularProgressIndicator()));
                  }
                  return DropdownButtonFormField<SekolahModel>(
                    initialValue: selectedSekolah.value,
                    decoration: InputDecoration(labelText: 'Sekolah', labelStyle: GoogleFonts.montserrat(), prefixIcon: const Icon(Icons.school), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: Color(0xFF1D4B8B), width: 2))),
                    isExpanded: true,
                    items: sekolahList.map((s) => DropdownMenuItem(value: s, child: Text(s.nama, style: GoogleFonts.montserrat(fontSize: 14), overflow: TextOverflow.ellipsis))).toList(),
                    onChanged: (v) => selectedSekolah.value = v,
                  );
                }),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Get.back(),
                        style: OutlinedButton.styleFrom(side: const BorderSide(color: Color(0xFF1D4B8B)), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), padding: const EdgeInsets.symmetric(vertical: 14)),
                        child: Text('Batal', style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, color: const Color(0xFF1D4B8B))),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Obx(
                        () => ElevatedButton(
                          onPressed: isUpdating.value
                              ? null
                              : () async {
                                  final nama = namaController.text.trim();
                                  final nip = nipController.text.trim();
                                  final email = emailController.text.trim();
                                  final password = passwordController.text.trim();
                                  final noTelepon = noTeleponController.text.trim();
                                  if (nama.isEmpty && nip.isEmpty && email.isEmpty && password.isEmpty && noTelepon.isEmpty && selectedSekolah.value == null) {
                                    Get.snackbar('Peringatan', 'Isi minimal satu field untuk update', backgroundColor: Colors.orange, colorText: Colors.white, snackPosition: SnackPosition.BOTTOM);
                                    return;
                                  }
                                  isUpdating.value = true;
                                  try {
                                    final token = authService.getToken()!;
                                    await apiService.updateProfileGuru(namaLengkap: nama.isNotEmpty ? nama : null, nip: nip.isNotEmpty ? nip : null, email: email.isNotEmpty ? email : null, password: password.isNotEmpty ? password : null, noTelepon: noTelepon.isNotEmpty ? noTelepon : null, sekolahId: selectedSekolah.value?.id, token: token);
                                    if (nama.isNotEmpty) await authService.saveName(nama);
                                    if (nip.isNotEmpty) await authService.saveNip(nip);
                                    if (email.isNotEmpty) await authService.saveEmail(email);
                                    if (noTelepon.isNotEmpty) await authService.saveNoTelepon(noTelepon);
                                    if (selectedSekolah.value != null) await authService.saveSekolahId(selectedSekolah.value!.id);
                                    Get.back();
                                    Get.snackbar('Berhasil', 'Profil berhasil diperbarui', backgroundColor: Colors.green, colorText: Colors.white, snackPosition: SnackPosition.BOTTOM, icon: const Icon(Icons.check_circle, color: Colors.white));
                                  } catch (e) {
                                    Get.snackbar('Error', 'Gagal update profil: ${e.toString()}', backgroundColor: Colors.red, colorText: Colors.white, snackPosition: SnackPosition.BOTTOM);
                                  } finally {
                                    isUpdating.value = false;
                                  }
                                },
                          style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1D4B8B), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), padding: const EdgeInsets.symmetric(vertical: 14)),
                          child: isUpdating.value
                              ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                              : Text('Simpan', style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, color: Colors.white)),
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

  void _showDeleteAccountDialog() {
    final authService = Get.find<AuthService>();
    final apiService = ApiService();
    final isDeleting = false.obs;

    Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Row(
          children: [
            const Icon(Icons.delete_forever, color: Colors.red, size: 28),
            const SizedBox(width: 12),
            Text('Hapus Akun', style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red)),
          ],
        ),
        content: Text('Apakah Anda yakin ingin menghapus akun?\n\n⚠️ Semua data akan dihapus permanen dan tidak bisa dikembalikan.', style: GoogleFonts.montserrat(fontSize: 14, color: Colors.black87)),
        actions: [
          TextButton(onPressed: () => Get.back(), child: Text('Batal', style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, color: Colors.grey))),
          Obx(
            () => ElevatedButton(
              onPressed: isDeleting.value
                  ? null
                  : () async {
                      isDeleting.value = true;
                      try {
                        final token = authService.getToken()!;
                        await apiService.deleteAccountGuru(token);
                        await authService.logout();
                        Get.offAllNamed('/login-teacher');
                        Get.snackbar('Berhasil', 'Akun berhasil dihapus', backgroundColor: Colors.green, colorText: Colors.white, snackPosition: SnackPosition.BOTTOM, icon: const Icon(Icons.check_circle, color: Colors.white));
                      } catch (e) {
                        Get.snackbar('Error', 'Gagal hapus akun: ${e.toString()}', backgroundColor: Colors.red, colorText: Colors.white, snackPosition: SnackPosition.BOTTOM);
                      } finally {
                        isDeleting.value = false;
                      }
                    },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
              child: isDeleting.value
                  ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                  : Text('Hapus', style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, color: Colors.white)),
            ),
          ),
        ],
      ),
      barrierDismissible: false,
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

// Animated table row with staggered animation
class _AnimatedTableRow extends StatelessWidget {
  final int index;
  final dynamic student;
  final bool isLast;
  final StudentListController controller;
  final Widget Function(String) buildDataCell;
  final Widget Function() buildVerticalDivider;
  final Widget Function(dynamic, StudentListController) buildActionCell;

  const _AnimatedTableRow({
    required this.index,
    required this.student,
    required this.isLast,
    required this.controller,
    required this.buildDataCell,
    required this.buildVerticalDivider,
    required this.buildActionCell,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: Duration(milliseconds: 300 + (index * 50)),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(20 * (1 - value), 0),
            child: child,
          ),
        );
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: index.isEven ? Colors.white : Colors.grey.shade50,
              borderRadius: isLast
                  ? const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    )
                  : BorderRadius.zero,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  child: buildDataCell((index + 1).toString()),
                ),
                buildVerticalDivider(),
                SizedBox(width: 140, child: buildDataCell(student.nisn)),
                buildVerticalDivider(),
                SizedBox(width: 180, child: buildDataCell(student.namaLengkap)),
                buildVerticalDivider(),
                SizedBox(
                  width: 100,
                  child: buildActionCell(student, controller),
                ),
              ],
            ),
          ),
          if (!isLast)
            Divider(height: 1, thickness: 1, color: Colors.grey.shade300),
        ],
      ),
    );
  }
}

// Animated load more button
class _AnimatedLoadMoreButton extends StatefulWidget {
  final VoidCallback onPressed;

  const _AnimatedLoadMoreButton({required this.onPressed});

  @override
  State<_AnimatedLoadMoreButton> createState() =>
      _AnimatedLoadMoreButtonState();
}

class _AnimatedLoadMoreButtonState extends State<_AnimatedLoadMoreButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        widget.onPressed();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedScale(
        scale: _isPressed ? 0.95 : 1.0,
        duration: const Duration(milliseconds: 100),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            color: const Color(0xFF1565C0),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF1565C0).withValues(alpha: 0.4),
                blurRadius: _isPressed ? 5 : 10,
                offset: Offset(0, _isPressed ? 2 : 4),
              ),
            ],
          ),
          child: const Text(
            'Muat Lebih',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

// Animated back button
class _AnimatedBackButton extends StatefulWidget {
  final VoidCallback onPressed;

  const _AnimatedBackButton({required this.onPressed});

  @override
  State<_AnimatedBackButton> createState() => _AnimatedBackButtonState();
}

class _AnimatedBackButtonState extends State<_AnimatedBackButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        widget.onPressed();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedScale(
        scale: _isPressed ? 0.95 : 1.0,
        duration: const Duration(milliseconds: 100),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.3),
                blurRadius: _isPressed ? 5 : 10,
                offset: Offset(0, _isPressed ? 2 : 5),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.arrow_back, color: Colors.white, size: 20),
              const SizedBox(width: 8),
              Text(
                'Kembali',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
