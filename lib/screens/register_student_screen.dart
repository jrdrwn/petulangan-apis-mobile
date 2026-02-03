import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/register_student_controller.dart';
import '../models/sekolah_model.dart';
import '../models/kelas_model.dart';

class RegisterStudentScreen extends StatefulWidget {
  const RegisterStudentScreen({super.key});

  @override
  State<RegisterStudentScreen> createState() => _RegisterStudentScreenState();
}

class _RegisterStudentScreenState extends State<RegisterStudentScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _logoAnimation;
  late Animation<double> _titleAnimation;
  late Animation<Offset> _titleSlide;
  late Animation<double> _formAnimation;
  late Animation<Offset> _formSlide;
  late Animation<double> _buttonAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _logoAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.4, curve: Curves.elasticOut),
      ),
    );

    _titleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.2, 0.5, curve: Curves.easeOut),
      ),
    );

    _titleSlide = Tween<Offset>(
      begin: const Offset(0, -0.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.2, 0.5, curve: Curves.easeOut),
      ),
    );

    _formAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.3, 0.7, curve: Curves.easeOut),
      ),
    );

    _formSlide = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.3, 0.7, curve: Curves.easeOut),
      ),
    );

    _buttonAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.6, 1.0, curve: Curves.easeOut),
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
                      // Animated Logo
                      ScaleTransition(
                        scale: _logoAnimation,
                        child: Container(
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
                      ),
                      const SizedBox(height: 30),
                      // Animated Title
                      SlideTransition(
                        position: _titleSlide,
                        child: FadeTransition(
                          opacity: _titleAnimation,
                          child: Text(
                            'REGISTER PESERTA DIDIK',
                            style: GoogleFonts.montserrat(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF1565C0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Animated Form Fields
                      SlideTransition(
                        position: _formSlide,
                        child: FadeTransition(
                          opacity: _formAnimation,
                          child: Column(
                            children: [
                              // Nama Lengkap TextField
                              _AnimatedTextField(
                                controller: controller.namaController,
                                hintText: 'Nama Lengkap',
                                prefixIcon: Icons.person_outline,
                                delay: 0,
                              ),
                              const SizedBox(height: 12),
                              // NISN TextField
                              _AnimatedTextField(
                                controller: controller.nisnController,
                                hintText: 'NISN (Nomor Induk Siswa Nasional)',
                                prefixIcon: Icons.badge_outlined,
                                keyboardType: TextInputType.number,
                                delay: 50,
                              ),
                              const SizedBox(height: 12),
                              // Konfirmasi NISN TextField
                              _AnimatedTextField(
                                controller: controller.konfirmasiNisnController,
                                hintText: 'Konfirmasi NISN',
                                prefixIcon: Icons.verified_outlined,
                                keyboardType: TextInputType.number,
                                delay: 100,
                              ),
                              const SizedBox(height: 12),
                              // Dropdown Pilih Sekolah
                              _buildAnimatedDropdown(
                                delay: 150,
                                child: Container(
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
                                                Icon(Icons.school_outlined, color: Color(0xFF9DB4C8)),
                                                SizedBox(width: 15),
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
                                        : Row(
                                            children: [
                                              const Icon(Icons.school_outlined, color: Color(0xFF1565C0)),
                                              const SizedBox(width: 10),
                                              Expanded(
                                                child: DropdownButtonHideUnderline(
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
                                            ],
                                          ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              // Dropdown Pilih Kelas
                              _buildAnimatedDropdown(
                                delay: 200,
                                child: Container(
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
                                                Icon(Icons.class_outlined, color: Color(0xFF9DB4C8)),
                                                SizedBox(width: 15),
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
                                        : Row(
                                            children: [
                                              const Icon(Icons.class_outlined, color: Color(0xFF1565C0)),
                                              const SizedBox(width: 10),
                                              Expanded(
                                                child: DropdownButtonHideUnderline(
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
                                            ],
                                          ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      // Animated Link
                      FadeTransition(
                        opacity: _formAnimation,
                        child: Align(
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
                      ),
                      const SizedBox(height: 20),
                      const Spacer(),
                      // Animated Button
                      FadeTransition(
                        opacity: _buttonAnimation,
                        child: Obx(
                          () => _AnimatedRegisterButton(
                            onPressed: controller.isRegistering.value
                                ? null
                                : controller.register,
                            isLoading: controller.isRegistering.value,
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

  Widget _buildAnimatedDropdown({required int delay, required Widget child}) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: Duration(milliseconds: 400 + delay),
      curve: Curves.easeOut,
      builder: (context, value, _) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
    );
  }
}

// Animated text field widget
class _AnimatedTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final TextInputType? keyboardType;
  final int delay;

  const _AnimatedTextField({
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    this.keyboardType,
    required this.delay,
  });

  @override
  State<_AnimatedTextField> createState() => _AnimatedTextFieldState();
}

class _AnimatedTextFieldState extends State<_AnimatedTextField> {
  bool _isFocused = false;

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
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: Focus(
        onFocusChange: (focused) => setState(() => _isFocused = focused),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: _isFocused
                    ? const Color(0xFF1565C0).withValues(alpha: 0.3)
                    : Colors.black.withValues(alpha: 0.1),
                blurRadius: _isFocused ? 15 : 10,
                offset: const Offset(0, 5),
              ),
            ],
            border: _isFocused
                ? Border.all(color: const Color(0xFF1565C0), width: 2)
                : null,
          ),
          child: TextField(
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                color: Color(0xFF9DB4C8),
                fontSize: 14,
              ),
              border: InputBorder.none,
              prefixIcon: Icon(
                widget.prefixIcon,
                color: _isFocused ? const Color(0xFF1565C0) : const Color(0xFF9DB4C8),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Animated register button
class _AnimatedRegisterButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final bool isLoading;

  const _AnimatedRegisterButton({
    required this.onPressed,
    required this.isLoading,
  });

  @override
  State<_AnimatedRegisterButton> createState() => _AnimatedRegisterButtonState();
}

class _AnimatedRegisterButtonState extends State<_AnimatedRegisterButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: widget.onPressed != null ? (_) => setState(() => _isPressed = true) : null,
      onTapUp: widget.onPressed != null ? (_) {
        setState(() => _isPressed = false);
        widget.onPressed!();
      } : null,
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedScale(
        scale: _isPressed ? 0.95 : 1.0,
        duration: const Duration(milliseconds: 100),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: double.infinity,
          height: 56,
          decoration: BoxDecoration(
            color: widget.isLoading
                ? const Color(0xFF1565C0).withValues(alpha: 0.6)
                : const Color(0xFF1565C0),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF1565C0).withValues(alpha: 0.4),
                blurRadius: _isPressed ? 5 : 10,
                offset: Offset(0, _isPressed ? 2 : 5),
              ),
            ],
          ),
          child: Center(
            child: widget.isLoading
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(
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
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.app_registration, color: Colors.white),
                      const SizedBox(width: 10),
                      Text(
                        'DAFTAR',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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
