import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../controllers/video_material_controller.dart';

class VideoMaterialScreen extends StatefulWidget {
  const VideoMaterialScreen({super.key});

  @override
  State<VideoMaterialScreen> createState() => _VideoMaterialScreenState();
}

class _VideoMaterialScreenState extends State<VideoMaterialScreen> {
  @override
  void dispose() {
    // Reset orientation to portrait when leaving screen
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Transparent status bar
        statusBarIconBrightness:
            Brightness.dark, // Dark icons for light background
        statusBarBrightness: Brightness.light, // For iOS
        systemNavigationBarColor: Colors.white, // White navigation bar
        systemNavigationBarIconBrightness:
            Brightness.dark, // Dark icons for navigation bar
      ),
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get arguments passed from dashboard
    final args = Get.arguments as Map<String, dynamic>;
    final topikId = args['topikId'] as int;
    final videoUrl = args['videoUrl'] as String;
    final materialTitle = args['materialTitle'] as String;
    final chapterName = args['chapterName'] as String;

    // Initialize controller with arguments
    final controller = Get.put(
      VideoMaterialController(
        topikId: topikId,
        videoUrl: videoUrl,
        materialTitle: materialTitle,
        chapterName: chapterName,
      ),
    );

    return Obx(() {
      // If YouTube video, use YoutubePlayerBuilder wrapper
      if (controller.isYoutubeVideo.value) {
        return _buildYoutubeScreen(controller);
      }

      // Regular video player
      return _buildRegularVideoScreen(controller);
    });
  }

  // YouTube video screen with YoutubePlayerBuilder
  Widget _buildYoutubeScreen(VideoMaterialController controller) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller.youtubeController!,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.red,
        progressColors: const ProgressBarColors(
          playedColor: Colors.red,
          handleColor: Colors.redAccent,
        ),
      ),
      builder: (context, player) {
        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildHeader(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          _buildTitle(),
                          const SizedBox(height: 30),
                          // YouTube player widget
                          Obx(() {
                            if (controller.isLoading.value) {
                              return _buildLoadingContainer();
                            }
                            if (!controller.isInitialized.value) {
                              return _buildErrorContainer();
                            }
                            return Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(17),
                                child: player,
                              ),
                            );
                          }),
                          const SizedBox(height: 40),
                          _buildStartButton(controller),
                          const SizedBox(height: 15),
                          _buildDescription(),
                          const SizedBox(height: 20),
                          _buildCharacterImage(),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  // Regular video screen
  Widget _buildRegularVideoScreen(VideoMaterialController controller) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: GestureDetector(
            onTap: () {
              if (controller.isInitialized.value &&
                  controller.showControls.value) {
                controller.showControls.value = false;
              }
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildHeader(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        _buildTitle(),
                        const SizedBox(height: 30),
                        // Video player container
                        Obx(() {
                          if (controller.isLoading.value) {
                            return _buildLoadingContainer();
                          }
                          if (!controller.isInitialized.value) {
                            return _buildErrorContainer();
                          }
                          // Regular Video Player
                          return _buildVideoPlayer(controller);
                        }),
                        const SizedBox(height: 40),
                        _buildStartButton(controller),
                        const SizedBox(height: 15),
                        _buildDescription(),
                        const SizedBox(height: 20),
                        _buildCharacterImage(),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Get.back(),
          ),
          const Spacer(),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.orange.shade300,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3),
            ),
            child: const Center(
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      'Sebelum Menyelesaikan Misi Persiapkan Dirimu Dengan Video Yang Kami Berikan',
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
        fontSize: 22,
        fontWeight: FontWeight.w900,
        color: Colors.white,
        shadows: [
          const Shadow(
            blurRadius: 4,
            color: Colors.black45,
            offset: Offset(1, 2),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingContainer() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 3),
      ),
      child: const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildErrorContainer() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 3),
      ),
      child: const Center(child: Text('Video tidak dapat dimuat')),
    );
  }

  Widget _buildVideoPlayer(VideoMaterialController controller) {
    return GestureDetector(
      onTap: controller.toggleControls,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white, width: 3),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(17),
          child: AspectRatio(
            aspectRatio: controller.videoController!.value.aspectRatio,
            child: Stack(
              alignment: Alignment.center,
              children: [
                VideoPlayer(controller.videoController!),
                // Video Controls Overlay
                Obx(
                  () => AnimatedOpacity(
                    opacity: controller.showControls.value ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 300),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withValues(alpha: 0.7),
                            Colors.transparent,
                            Colors.black.withValues(alpha: 0.7),
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Top controls
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    controller.isFullscreen.value
                                        ? Icons.fullscreen_exit
                                        : Icons.fullscreen,
                                  ),
                                  iconSize: 28,
                                  color: Colors.white,
                                  onPressed: controller.toggleFullscreen,
                                ),
                              ],
                            ),
                          ),
                          // Center play/pause
                          Expanded(
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.replay_10),
                                    iconSize: 40,
                                    color: Colors.white,
                                    onPressed: controller.skipBackward,
                                  ),
                                  const SizedBox(width: 20),
                                  IconButton(
                                    icon: Icon(
                                      controller.isPlaying.value
                                          ? Icons.pause_circle_filled
                                          : Icons.play_circle_filled,
                                    ),
                                    iconSize: 64,
                                    color: Colors.white,
                                    onPressed: controller.togglePlayPause,
                                  ),
                                  const SizedBox(width: 20),
                                  IconButton(
                                    icon: const Icon(Icons.forward_10),
                                    iconSize: 40,
                                    color: Colors.white,
                                    onPressed: controller.skipForward,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Bottom controls
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: Column(
                              children: [
                                Obx(
                                  () => SliderTheme(
                                    data: SliderThemeData(
                                      trackHeight: 3,
                                      thumbShape: const RoundSliderThumbShape(
                                        enabledThumbRadius: 6,
                                      ),
                                      overlayShape:
                                          const RoundSliderOverlayShape(
                                            overlayRadius: 14,
                                          ),
                                    ),
                                    child: Slider(
                                      value: controller
                                          .currentPosition
                                          .value
                                          .inSeconds
                                          .toDouble(),
                                      max: controller
                                          .totalDuration
                                          .value
                                          .inSeconds
                                          .toDouble(),
                                      activeColor: const Color(0xFFCD3551),
                                      inactiveColor: Colors.white.withValues(
                                        alpha: 0.3,
                                      ),
                                      onChanged: (value) {
                                        controller.seekTo(
                                          Duration(seconds: value.toInt()),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Obx(
                                  () => Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          controller.formatDuration(
                                            controller.currentPosition.value,
                                          ),
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          controller.formatDuration(
                                            controller.totalDuration.value,
                                          ),
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
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
      ),
    );
  }

  Widget _buildStartButton(VideoMaterialController controller) {
    return Obx(() {
      final isEnabled = controller.isVideoCompleted.value;
      return ElevatedButton(
        onPressed: isEnabled
            ? () => _showStartMissionDialog(controller)
            : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: isEnabled
              ? const Color(0xFFEF4444)
              : Colors.grey.shade400,
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              color: isEnabled ? Colors.white : Colors.grey.shade300,
              width: 3,
            ),
          ),
          elevation: isEnabled ? 5 : 0,
        ),
        child: Text(
          'Mulai Misi',
          style: GoogleFonts.montserrat(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: isEnabled ? Colors.white : Colors.grey.shade600,
          ),
        ),
      );
    });
  }

  void _showStartMissionDialog(VideoMaterialController controller) {
    Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Text(
          'Siap Memulai Misi?',
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.rocket_launch,
              size: 60,
              color: Colors.orange.shade400,
            ),
            const SizedBox(height: 16),
            Text(
              'Kamu akan memulai kuis untuk menguji pemahamanmu. Pastikan kamu sudah siap!',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text(
              'Belum Siap',
              style: GoogleFonts.montserrat(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
              controller.startMission();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFEF4444),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: Text(
              'Mulai!',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescription() {
    return Obx(() {
      final controller = Get.find<VideoMaterialController>();
      if (controller.isVideoCompleted.value) {
        return Text(
          'Video selesai! Kamu siap untuk memulai misi.',
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 12,
            color: Colors.greenAccent.shade200,
            fontWeight: FontWeight.w500,
          ),
        );
      }
      return Text(
        'Tonton video sampai selesai untuk membuka tombol Mulai Misi',
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
          fontSize: 12,
          color: Colors.white70,
          fontWeight: FontWeight.w500,
        ),
      );
    });
  }

  Widget _buildCharacterImage() {
    return Image.asset(
      'assets/images/ivideo.png',
      height: 250,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          height: 250,
          alignment: Alignment.center,
          child: Icon(
            Icons.person,
            size: 250,
            color: Colors.white.withValues(alpha: 0.5),
          ),
        );
      },
    );
  }
}
