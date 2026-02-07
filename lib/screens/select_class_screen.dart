import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/select_class_controller.dart';
import '../models/kelas_model.dart';
import '../models/sekolah_model.dart';
import '../services/api_service.dart';
import '../services/auth_service.dart';

class SelectClassScreen extends StatefulWidget {
  const SelectClassScreen({super.key});

  @override
  State<SelectClassScreen> createState() => _SelectClassScreenState();
}

class _SelectClassScreenState extends State<SelectClassScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _cardScale;
  late Animation<Offset> _cardSlide;
  late Animation<double> _titleFade;
  late Animation<double> _buttonsFade;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _cardScale = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOutBack),
      ),
    );

    _cardSlide = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(
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

    _buttonsFade = Tween<double>(begin: 0.0, end: 1.0).animate(
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
                  child: SlideTransition(
                    position: _cardSlide,
                    child: ScaleTransition(
                      scale: _cardScale,
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
                            // Title with fade animation
                            FadeTransition(
                              opacity: _titleFade,
                              child: Text(
                                'PILIH KELAS',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900,
                                  color: const Color(0xFF1D4B8B),
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ),

                            const SizedBox(height: 50),

                            // Class buttons with loading/error states
                            FadeTransition(
                              opacity: _buttonsFade,
                              child: Obx(() {
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
                                  children: controller.availableClasses.asMap().entries.map((entry) {
                                    final index = entry.key;
                                    final kelas = entry.value;
                                    return Padding(
                                      padding: const EdgeInsets.only(bottom: 20),
                                      child: _AnimatedClassButton(
                                        kelas: kelas,
                                        controller: controller,
                                        delay: index * 100,
                                      ),
                                    );
                                  }).toList(),
                                );
                              }),
                            ),
                          ],
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

    // Fetch sekolah and auto-select current
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
                    Text(
                      'Update Profil',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1D4B8B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Isi field yang ingin diubah saja',
                  style: GoogleFonts.montserrat(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: namaController,
                  decoration: InputDecoration(
                    labelText: 'Nama Lengkap',
                    labelStyle: GoogleFonts.montserrat(),
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xFF1D4B8B), width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: nipController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'NIP',
                    labelStyle: GoogleFonts.montserrat(),
                    prefixIcon: const Icon(Icons.badge),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xFF1D4B8B), width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: GoogleFonts.montserrat(),
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xFF1D4B8B), width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Obx(
                  () => TextField(
                    controller: passwordController,
                    obscureText: obscurePassword.value,
                    decoration: InputDecoration(
                      labelText: 'Password Baru',
                      labelStyle: GoogleFonts.montserrat(),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscurePassword.value ? Icons.visibility_off : Icons.visibility,
                          color: Colors.grey,
                        ),
                        onPressed: () => obscurePassword.value = !obscurePassword.value,
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFF1D4B8B), width: 2),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: noTeleponController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'No. Telepon',
                    labelStyle: GoogleFonts.montserrat(),
                    prefixIcon: const Icon(Icons.phone),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xFF1D4B8B), width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Obx(() {
                  if (isLoadingSekolah.value) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  return DropdownButtonFormField<SekolahModel>(
                    initialValue: selectedSekolah.value,
                    decoration: InputDecoration(
                      labelText: 'Sekolah',
                      labelStyle: GoogleFonts.montserrat(),
                      prefixIcon: const Icon(Icons.school),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFF1D4B8B), width: 2),
                      ),
                    ),
                    isExpanded: true,
                    items: sekolahList
                        .map((s) => DropdownMenuItem(value: s, child: Text(s.nama, style: GoogleFonts.montserrat(fontSize: 14), overflow: TextOverflow.ellipsis)))
                        .toList(),
                    onChanged: (v) => selectedSekolah.value = v,
                  );
                }),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Get.back(),
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFF1D4B8B)),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
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
                                    await apiService.updateProfileGuru(
                                      namaLengkap: nama.isNotEmpty ? nama : null,
                                      nip: nip.isNotEmpty ? nip : null,
                                      email: email.isNotEmpty ? email : null,
                                      password: password.isNotEmpty ? password : null,
                                      noTelepon: noTelepon.isNotEmpty ? noTelepon : null,
                                      sekolahId: selectedSekolah.value?.id,
                                      token: token,
                                    );
                                    if (nama.isNotEmpty) {
                                      await authService.saveName(nama);
                                    }
                                    if (nip.isNotEmpty) {
                                      await authService.saveNip(nip);
                                    }
                                    if (email.isNotEmpty) {
                                      await authService.saveEmail(email);
                                    }
                                    if (noTelepon.isNotEmpty) {
                                      await authService.saveNoTelepon(noTelepon);
                                    }
                                    if (selectedSekolah.value != null) {
                                      await authService.saveSekolahId(selectedSekolah.value!.id);
                                    }
                                    Get.back();
                                    Get.snackbar('Berhasil', 'Profil berhasil diperbarui', backgroundColor: Colors.green, colorText: Colors.white, snackPosition: SnackPosition.BOTTOM, icon: const Icon(Icons.check_circle, color: Colors.white));
                                  } catch (e) {
                                    Get.snackbar('Error', 'Gagal update profil: ${e.toString()}', backgroundColor: Colors.red, colorText: Colors.white, snackPosition: SnackPosition.BOTTOM);
                                  } finally {
                                    isUpdating.value = false;
                                  }
                                },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1D4B8B),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
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
          'Apakah Anda yakin ingin menghapus akun?\n\n⚠️ Semua data akan dihapus permanen dan tidak bisa dikembalikan.',
          style: GoogleFonts.montserrat(fontSize: 14, color: Colors.black87),
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text('Batal', style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, color: Colors.grey)),
          ),
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
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
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

// Animated class button with tap effect and staggered animation
class _AnimatedClassButton extends StatefulWidget {
  final KelasModel kelas;
  final SelectClassController controller;
  final int delay;

  const _AnimatedClassButton({
    required this.kelas,
    required this.controller,
    required this.delay,
  });

  @override
  State<_AnimatedClassButton> createState() => _AnimatedClassButtonState();
}

class _AnimatedClassButtonState extends State<_AnimatedClassButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: Duration(milliseconds: 400 + widget.delay),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 30 * (1 - value)),
            child: child,
          ),
        );
      },
      child: GestureDetector(
        onTapDown: (_) => setState(() => _isPressed = true),
        onTapUp: (_) {
          setState(() => _isPressed = false);
          widget.controller.selectClass(widget.kelas);
        },
        onTapCancel: () => setState(() => _isPressed = false),
        child: AnimatedScale(
          scale: _isPressed ? 0.95 : 1.0,
          duration: const Duration(milliseconds: 100),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 30),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF1565C0), Color(0xFF1D4B8B)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF1565C0).withValues(alpha: _isPressed ? 0.2 : 0.4),
                  blurRadius: _isPressed ? 5 : 15,
                  offset: Offset(0, _isPressed ? 2 : 6),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.class_, color: Colors.white, size: 24),
                const SizedBox(width: 12),
                Text(
                  widget.kelas.nama,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
