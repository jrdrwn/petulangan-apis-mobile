import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import '../controllers/video_material_controller.dart';

class VideoMaterialScreen extends StatelessWidget {
  const VideoMaterialScreen({super.key});

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

    // Listen for fullscreen changes
    ever(controller.isFullscreen, (isFullscreen) {
      if (isFullscreen) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => _buildFullscreenVideoPlayer(controller),
        );
      }
    });

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
            children: [
              // Header with back button and logo
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Get.back(),
                    ),
                    const Spacer(),
                    // Logo placeholder (you can add your logo here)
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
              ),

              // Main content
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    // Hide controls when tapping outside video frame
                    if (controller.isInitialized.value &&
                        controller.showControls.value) {
                      controller.showControls.value = false;
                    }
                  },
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),

                        // Title
                        Text(
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
                        ),

                        const SizedBox(height: 30),

                        // Video player container
                        Obx(() {
                          if (controller.isLoading.value) {
                            return Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                              ),
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          }

                          if (!controller.isInitialized.value) {
                            return Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                              ),
                              child: const Center(
                                child: Text('Video tidak dapat dimuat'),
                              ),
                            );
                          }

                          return GestureDetector(
                            onTap: controller.toggleControls,
                            child: Container(
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
                                child: AspectRatio(
                                  aspectRatio: controller
                                      .videoController
                                      .value
                                      .aspectRatio,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      VideoPlayer(controller.videoController),
                                      // Video Controls Overlay
                                      Obx(
                                        () => AnimatedOpacity(
                                          opacity: controller.showControls.value
                                              ? 1.0
                                              : 0.0,
                                          duration: const Duration(
                                            milliseconds: 300,
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Colors.black.withValues(
                                                    alpha: 0.7,
                                                  ),
                                                  Colors.transparent,
                                                  Colors.black.withValues(
                                                    alpha: 0.7,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                // Top controls with fullscreen button
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        horizontal: 16,
                                                        vertical: 8,
                                                      ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(
                                                          controller
                                                                  .isFullscreen
                                                                  .value
                                                              ? Icons
                                                                    .fullscreen_exit
                                                              : Icons
                                                                    .fullscreen,
                                                        ),
                                                        iconSize: 28,
                                                        color: Colors.white,
                                                        onPressed: controller
                                                            .toggleFullscreen,
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                                // Center play/pause button
                                                Expanded(
                                                  child: Center(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        // Skip backward button
                                                        IconButton(
                                                          icon: const Icon(
                                                            Icons.replay_10,
                                                          ),
                                                          iconSize: 40,
                                                          color: Colors.white,
                                                          onPressed: controller
                                                              .skipBackward,
                                                        ),
                                                        const SizedBox(
                                                          width: 20,
                                                        ),
                                                        // Play/Pause button
                                                        IconButton(
                                                          icon: Icon(
                                                            controller
                                                                    .isPlaying
                                                                    .value
                                                                ? Icons
                                                                      .pause_circle_filled
                                                                : Icons
                                                                      .play_circle_filled,
                                                          ),
                                                          iconSize: 64,
                                                          color: Colors.white,
                                                          onPressed: controller
                                                              .togglePlayPause,
                                                        ),
                                                        const SizedBox(
                                                          width: 20,
                                                        ),
                                                        // Skip forward button
                                                        IconButton(
                                                          icon: const Icon(
                                                            Icons.forward_10,
                                                          ),
                                                          iconSize: 40,
                                                          color: Colors.white,
                                                          onPressed: controller
                                                              .skipForward,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),

                                                // Bottom controls (progress bar and time)
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        horizontal: 16,
                                                        vertical: 8,
                                                      ),
                                                  child: Column(
                                                    children: [
                                                      // Progress bar
                                                      Obx(
                                                        () => SliderTheme(
                                                          data: SliderThemeData(
                                                            trackHeight: 3,
                                                            thumbShape:
                                                                const RoundSliderThumbShape(
                                                                  enabledThumbRadius:
                                                                      6,
                                                                ),
                                                            overlayShape:
                                                                const RoundSliderOverlayShape(
                                                                  overlayRadius:
                                                                      14,
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
                                                            activeColor:
                                                                const Color(
                                                                  0xFFCD3551,
                                                                ),
                                                            inactiveColor:
                                                                Colors.white
                                                                    .withValues(
                                                                      alpha:
                                                                          0.3,
                                                                    ),
                                                            onChanged: (value) {
                                                              controller.seekTo(
                                                                Duration(
                                                                  seconds: value
                                                                      .toInt(),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      // Time display
                                                      Obx(
                                                        () => Padding(
                                                          padding:
                                                              const EdgeInsets.symmetric(
                                                                horizontal: 8,
                                                              ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                controller
                                                                    .formatDuration(
                                                                      controller
                                                                          .currentPosition
                                                                          .value,
                                                                    ),
                                                                style: const TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                              Text(
                                                                controller
                                                                    .formatDuration(
                                                                      controller
                                                                          .totalDuration
                                                                          .value,
                                                                    ),
                                                                style: const TextStyle(
                                                                  color: Colors
                                                                      .white,
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
                        }),

                        const SizedBox(height: 40),

                        // "Mulai Misi" button
                        ElevatedButton(
                          onPressed: controller.startMission,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFCD3551),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 15,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 5,
                          ),
                          child: Text(
                            'Mulai Misi',
                            style: GoogleFonts.montserrat(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Character illustration at bottom
                        Image.asset(
                          'assets/images/ivideo.png',
                          height: 300,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            // Fallback if image not found
                            return Container(
                              height: 300,
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.person,
                                size: 300,
                                color: Colors.white.withValues(alpha: 0.5),
                              ),
                            );
                          },
                        ),

                        const SizedBox(height: 20),
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

  Widget _buildFullscreenVideoPlayer(VideoMaterialController controller) {
    return Dialog(
      backgroundColor: Colors.black,
      insetPadding: EdgeInsets.zero,
      child: Stack(
        children: [
          Center(
            child: AspectRatio(
              aspectRatio: controller.videoController.value.aspectRatio,
              child: VideoPlayer(controller.videoController),
            ),
          ),
          // Video Controls Overlay
          Obx(
            () => AnimatedOpacity(
              opacity: controller.showControls.value ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 300),
              child: GestureDetector(
                onTap: controller.toggleControls,
                child: Container(
                  color: Colors.transparent,
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
                        // Top controls with exit fullscreen button
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.fullscreen_exit),
                                iconSize: 32,
                                color: Colors.white,
                                onPressed: () {
                                  controller.toggleFullscreen();
                                  Get.back();
                                },
                              ),
                            ],
                          ),
                        ),
                        // Center play/pause button
                        Expanded(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Skip backward button
                                IconButton(
                                  icon: const Icon(Icons.replay_10),
                                  iconSize: 50,
                                  color: Colors.white,
                                  onPressed: controller.skipBackward,
                                ),
                                const SizedBox(width: 30),
                                // Play/Pause button
                                IconButton(
                                  icon: Icon(
                                    controller.isPlaying.value
                                        ? Icons.pause_circle_filled
                                        : Icons.play_circle_filled,
                                  ),
                                  iconSize: 80,
                                  color: Colors.white,
                                  onPressed: controller.togglePlayPause,
                                ),
                                const SizedBox(width: 30),
                                // Skip forward button
                                IconButton(
                                  icon: const Icon(Icons.forward_10),
                                  iconSize: 50,
                                  color: Colors.white,
                                  onPressed: controller.skipForward,
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Bottom controls (progress bar and time)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Column(
                            children: [
                              // Progress bar
                              Obx(
                                () => SliderTheme(
                                  data: SliderThemeData(
                                    trackHeight: 4,
                                    thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 8,
                                    ),
                                    overlayShape: const RoundSliderOverlayShape(
                                      overlayRadius: 16,
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
                              // Time display
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
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        controller.formatDuration(
                                          controller.totalDuration.value,
                                        ),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
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
            ),
          ),
        ],
      ),
    );
  }
}
