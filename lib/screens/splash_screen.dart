import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import '../controllers/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _quoteController;
  late AnimationController _buttonController;
  late Animation<double> _logoScale;
  late Animation<double> _quoteFade;
  late Animation<Offset> _quoteSlide;
  late Animation<double> _buttonScale;

  final controller = Get.find<SplashController>();

  static final List<String> _quotes = [
    '"Ayo jelajahi dunia, mulai dari semut sampai bintang! Di IPAS seru, kita belajar sambil berpetualang!"',
    '"Setiap pertanyaan adalah pintu menuju pengetahuan baru. Yuk, berani bertanya!"',
    '"Alam adalah guru terbaik. Mari kita belajar dari keajaiban di sekitar kita!"',
    '"Ilmu pengetahuan dimulai dari rasa ingin tahu. Jangan pernah berhenti bertanya!"',
    '"Belajar itu seperti petualangan, semakin jauh melangkah, semakin banyak yang ditemukan!"',
    '"Dari hal kecil hingga besar, semua punya cerita menarik untuk dipelajari!"',
    '"Jadilah penjelajah ilmu! Setiap hari adalah kesempatan untuk menemukan hal baru."',
    '"Sains ada di mana-mana! Di rumah, di sekolah, bahkan di taman bermain."',
    '"Belajar sambil bermain, itulah cara terbaik menjadi pintar dan bahagia!"',
    '"Dunia penuh misteri menunggu untuk dipecahkan. Siap jadi detektif sains?"',
  ];

  late final String _selectedQuote;

  @override
  void initState() {
    super.initState();
    _selectedQuote = _quotes[Random().nextInt(_quotes.length)];

    // Logo animation - bounce in
    _logoController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
    _logoScale = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _logoController, curve: Curves.elasticOut),
    );

    // Quote animation - fade and slide in
    _quoteController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _quoteFade = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _quoteController, curve: Curves.easeIn),
    );
    _quoteSlide = Tween<Offset>(begin: const Offset(0, 0.3), end: Offset.zero).animate(
      CurvedAnimation(parent: _quoteController, curve: Curves.easeOut),
    );

    // Button animation - pulse
    _buttonController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _buttonScale = Tween<double>(begin: 1.0, end: 1.08).animate(
      CurvedAnimation(parent: _buttonController, curve: Curves.easeInOut),
    );

    // Start animations in sequence
    _logoController.forward().then((_) {
      _quoteController.forward().then((_) {
        _buttonController.repeat(reverse: true);
      });
    });
  }

  @override
  void dispose() {
    _logoController.dispose();
    _quoteController.dispose();
    _buttonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 4),
              // Animated Logo
              ScaleTransition(
                scale: _logoScale,
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
              const SizedBox(height: 50),
              // Animated Quote
              SlideTransition(
                position: _quoteSlide,
                child: FadeTransition(
                  opacity: _quoteFade,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      _selectedQuote,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1565C0),
                        height: 1.5,
                        shadows: [
                          Shadow(
                            color: Colors.black.withValues(alpha: 0.15),
                            offset: const Offset(1, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const Spacer(flex: 2),
              // Animated Button with pulse effect
              ScaleTransition(
                scale: _buttonScale,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: ElevatedButton(
                    onPressed: controller.onButtonPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFF1D4B8B),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 32,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 29, 139, 84),
                          width: 2,
                        ),
                      ),
                      elevation: 5,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'YUK MULAI',
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Icon(Icons.arrow_forward_rounded, size: 24),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Spacer(flex: 8),
            ],
          ),
        ),
      ),
    );
  }
}
