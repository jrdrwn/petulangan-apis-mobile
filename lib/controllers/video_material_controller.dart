import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoMaterialController extends GetxController {
  late VideoPlayerController videoController;
  final isInitialized = false.obs;
  final isPlaying = false.obs;
  final isLoading = true.obs;
  final currentPosition = Duration.zero.obs;
  final totalDuration = Duration.zero.obs;
  final showControls = true.obs;
  final isFullscreen = false.obs;

  final int topikId;
  final String videoUrl;
  final String materialTitle;
  final String chapterName;

  VideoMaterialController({
    required this.topikId,
    required this.videoUrl,
    required this.materialTitle,
    required this.chapterName,
  });

  @override
  void onInit() {
    super.onInit();
    initializeVideoPlayer();
  }

  Future<void> initializeVideoPlayer() async {
    try {
      isLoading.value = true;
      videoController = VideoPlayerController.networkUrl(Uri.parse(videoUrl));

      await videoController.initialize();
      isInitialized.value = true;
      isLoading.value = false;
      totalDuration.value = videoController.value.duration;

      // Listen to video player state changes
      videoController.addListener(() {
        isPlaying.value = videoController.value.isPlaying;
        currentPosition.value = videoController.value.position;
      });
    } catch (e) {
      isLoading.value = false;
      Get.snackbar(
        'Error',
        'Gagal memuat video: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void togglePlayPause() {
    if (videoController.value.isPlaying) {
      videoController.pause();
    } else {
      videoController.play();
    }
  }

  void seekTo(Duration position) {
    videoController.seekTo(position);
  }

  void skipForward() {
    final newPosition = currentPosition.value + const Duration(seconds: 10);
    if (newPosition < totalDuration.value) {
      videoController.seekTo(newPosition);
    } else {
      videoController.seekTo(totalDuration.value);
    }
  }

  void skipBackward() {
    final newPosition = currentPosition.value - const Duration(seconds: 10);
    if (newPosition > Duration.zero) {
      videoController.seekTo(newPosition);
    } else {
      videoController.seekTo(Duration.zero);
    }
  }

  void toggleControls() {
    showControls.value = !showControls.value;
  }

  void toggleFullscreen() {
    isFullscreen.value = !isFullscreen.value;
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);

    if (hours > 0) {
      return '$hours:${twoDigits(minutes)}:${twoDigits(seconds)}';
    }
    return '${twoDigits(minutes)}:${twoDigits(seconds)}';
  }

  void startMission() {
    Get.back();
    // Navigate to quiz screen
    Get.toNamed(
      '/quiz',
      arguments: {
        'topikId': topikId,
        'materialTitle': materialTitle,
        'chapterName': chapterName,
      },
    );
  }

  @override
  void onClose() {
    videoController.dispose();
    super.onClose();
  }
}
