import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/quiz_model.dart';

class QuizCompleteScreen extends StatefulWidget {
  const QuizCompleteScreen({super.key});

  @override
  State<QuizCompleteScreen> createState() => _QuizCompleteScreenState();
}

class _QuizCompleteScreenState extends State<QuizCompleteScreen>
    with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _cardController;
  late AnimationController _characterController;
  late AnimationController _buttonController;

  late Animation<double> _logoScale;
  late Animation<double> _cardScale;
  late Animation<Offset> _cardSlide;
  late Animation<double> _characterScale;
  late Animation<double> _characterBounce;
  late Animation<double> _buttonFade;
  late Animation<Offset> _buttonSlide;

  @override
  void initState() {
    super.initState();

    // Logo animation
    _logoController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _logoScale = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _logoController, curve: Curves.elasticOut),
    );

    // Card animation
    _cardController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _cardScale = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _cardController, curve: Curves.easeOutBack),
    );
    _cardSlide = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _cardController, curve: Curves.easeOut));

    // Character animation
    _characterController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat(reverse: true);
    _characterScale = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _cardController,
        curve: const Interval(0.3, 0.8, curve: Curves.elasticOut),
      ),
    );
    _characterBounce = Tween<double>(begin: 0.0, end: 8.0).animate(
      CurvedAnimation(parent: _characterController, curve: Curves.easeInOut),
    );

    // Button animation
    _buttonController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _buttonFade = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _buttonController, curve: Curves.easeIn),
    );
    _buttonSlide = Tween<Offset>(
      begin: const Offset(0, 0.5),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _buttonController, curve: Curves.easeOut));

    // Start animations sequentially
    _logoController.forward();
    Future.delayed(const Duration(milliseconds: 200), () {
      _cardController.forward();
    });
    Future.delayed(const Duration(milliseconds: 700), () {
      _buttonController.forward();
    });
  }

  @override
  void dispose() {
    _logoController.dispose();
    _cardController.dispose();
    _characterController.dispose();
    _buttonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>;
    final result = args['result'] as QuizResult;
    final materialTitle = args['materialTitle'] as String;
    final chapterName = args['chapterName'] as String;
    final topikId = args['topikId'] as int?;
    final questions = args['questions'] as List<Question>?;
    final userAnswers = args['userAnswers'] as List<String>?;

    final isPassed = result.passed;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg2.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40), // Space for half of logo
                  // Stack for logo positioning
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      // Main card with animation
                      SlideTransition(
                        position: _cardSlide,
                        child: ScaleTransition(
                          scale: _cardScale,
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.fromLTRB(40, 60, 40, 40),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.2),
                                  blurRadius: 15,
                                  offset: const Offset(0, 8),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                // Title with shake animation for success
                                TweenAnimationBuilder<double>(
                                  tween: Tween(begin: 0.0, end: 1.0),
                                  duration: const Duration(milliseconds: 800),
                                  curve: Curves.elasticOut,
                                  builder: (context, value, child) {
                                    return Transform.scale(
                                      scale: value,
                                      child: child,
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        isPassed ? 'SELAMAT' : 'YUK COBA LAGI',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.montserrat(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w900,
                                          color: const Color(0xFF1D4B8B),
                                          height: 1.2,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        isPassed
                                            ? 'MISI BERHASIL'
                                            : 'MISI BELUM BERHASIL',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.montserrat(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w900,
                                          color: const Color(0xFF1D4B8B),
                                          height: 1.2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const SizedBox(height: 40),

                                // Character illustration with bounce animation
                                AnimatedBuilder(
                                  animation: _characterBounce,
                                  builder: (context, child) {
                                    return Transform.translate(
                                      offset: Offset(0, -_characterBounce.value),
                                      child: child,
                                    );
                                  },
                                  child: ScaleTransition(
                                    scale: _characterScale,
                                    child: Image.asset(
                                      isPassed
                                          ? 'assets/images/success_character.png'
                                          : 'assets/images/failed_character.png',
                                      height: 250,
                                      fit: BoxFit.contain,
                                      errorBuilder: (context, error, stackTrace) {
                                        return Container(
                                          height: 250,
                                          alignment: Alignment.center,
                                          child: Icon(
                                            isPassed
                                                ? Icons.celebration
                                                : Icons.menu_book,
                                            size: 150,
                                            color: isPassed
                                                ? Colors.green.withValues(alpha: 0.5)
                                                : Colors.orange.withValues(alpha: 0.5),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 40),

                                // Buttons with slide and fade animation
                                SlideTransition(
                                  position: _buttonSlide,
                                  child: FadeTransition(
                                    opacity: _buttonFade,
                                    child: Row(
                                      children: [
                                        // Lihat Hasil button
                                        Expanded(
                                          child: _AnimatedButton(
                                            onPressed: () {
                                              Get.offNamed(
                                                '/quiz-result',
                                                arguments: {
                                                  'result': result,
                                                  'materialTitle': materialTitle,
                                                  'chapterName': chapterName,
                                                  'topikId': topikId,
                                                  'questions': questions,
                                                  'userAnswers': userAnswers,
                                                },
                                              );
                                            },
                                            backgroundColor: Colors.black,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                const Icon(Icons.visibility, size: 20),
                                                const SizedBox(width: 8),
                                                Text(
                                                  'Lihat Hasil',
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                        const SizedBox(width: 15),

                                        // Lanjut / Belajar Lagi button
                                        Expanded(
                                          child: _AnimatedButton(
                                            onPressed: () {
                                              if (isPassed) {
                                                Get.offAllNamed(
                                                  '/dashboard-student',
                                                  arguments: {'refresh': true},
                                                );
                                              } else {
                                                Get.offNamed(
                                                  '/video-material',
                                                  arguments: {
                                                    'topikId': topikId,
                                                    'videoUrl':
                                                        'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
                                                    'materialTitle': materialTitle,
                                                    'chapterName': chapterName,
                                                  },
                                                );
                                              }
                                            },
                                            backgroundColor: isPassed
                                                ? const Color(0xFFFFC107)
                                                : const Color(0xFFCD3551),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  isPassed ? Icons.arrow_forward : Icons.replay,
                                                  size: 20,
                                                ),
                                                const SizedBox(width: 8),
                                                Text(
                                                  isPassed ? 'Lanjut' : 'Belajar Lagi',
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Logo positioned absolutely at top center with bounce animation
                      Positioned(
                        top: -40,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: ScaleTransition(
                            scale: _logoScale,
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.orange.shade300,
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
                              child: const ClipOval(
                                child: Image(
                                  image: AssetImage('assets/images/logo.png'),
                                  fit: BoxFit.cover,
                                  width: 80,
                                  height: 80,
                                ),
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
      ),
    );
  }
}

// Animated button widget with tap effect
class _AnimatedButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Widget child;

  const _AnimatedButton({
    required this.onPressed,
    required this.backgroundColor,
    required this.child,
  });

  @override
  State<_AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<_AnimatedButton> {
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
          padding: const EdgeInsets.symmetric(vertical: 18),
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: widget.backgroundColor.withValues(alpha: 0.4),
                blurRadius: _isPressed ? 5 : 10,
                offset: Offset(0, _isPressed ? 2 : 5),
              ),
            ],
          ),
          child: DefaultTextStyle(
            style: const TextStyle(color: Colors.white),
            child: IconTheme(
              data: const IconThemeData(color: Colors.white),
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
