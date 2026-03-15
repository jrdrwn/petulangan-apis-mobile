import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoMaterialController extends GetxController {
  VideoPlayerController? videoController;
  YoutubePlayerController? youtubeController;
  
  final isYoutubeVideo = false.obs;
  final isInitialized = false.obs;
  final isPlaying = false.obs;
  final isLoading = true.obs;
  final currentPosition = Duration.zero.obs;
  final totalDuration = Duration.zero.obs;
  final showControls = true.obs;
  final isFullscreen = false.obs;
  final isVideoCompleted = false.obs; // Track if video is completed
  final videoProgress = 0.0.obs; // Track video progress (0.0 to 1.0)

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
    initializePlayer();
  }

  Future<void> initializePlayer() async {
    try {
      isLoading.value = true;
      
      // Check if URL is YouTube
      final videoId = YoutubePlayer.convertUrlToId(videoUrl);
      
      if (videoId != null) {
        // It's a YouTube video
        isYoutubeVideo.value = true;
        youtubeController = YoutubePlayerController(
          initialVideoId: videoId,
          flags: const YoutubePlayerFlags(
            autoPlay: true,
            mute: false,
            enableCaption: false,
            controlsVisibleAtStart: false,
            hideControls: false,
            disableDragSeek: false,
            loop: false,
            forceHD: false,
            showLiveFullscreenButton: true,
            useHybridComposition: false
          ),
        );
        
        // Listen to YouTube player state
        youtubeController!.addListener(() {
          if (youtubeController!.value.playerState == PlayerState.ended) {
            isVideoCompleted.value = true;
            videoProgress.value = 1.0;
          }
          // Update progress
          final position = youtubeController!.value.position;
          final duration = youtubeController!.metadata.duration;
          if (duration.inSeconds > 0) {
            videoProgress.value = position.inSeconds / duration.inSeconds;
            // Check if video is near end (90% watched)
            if (position.inSeconds >= (duration.inSeconds * 0.90)) {
              isVideoCompleted.value = true;
            }
          }
        });
        
        isInitialized.value = true;
        isLoading.value = false;
      } else {
        // It's a regular video URL
        isYoutubeVideo.value = false;
        await initializeVideoPlayer();
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar(
        'Error',
        'Gagal memuat video: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  Future<void> initializeVideoPlayer() async {
    try {
      videoController = VideoPlayerController.networkUrl(Uri.parse(videoUrl));

      await videoController!.initialize();
      isInitialized.value = true;
      isLoading.value = false;
      totalDuration.value = videoController!.value.duration;

      // Listen to video player state changes
      videoController!.addListener(() {
        isPlaying.value = videoController!.value.isPlaying;
        currentPosition.value = videoController!.value.position;
        
        // Update progress
        if (totalDuration.value.inSeconds > 0) {
          videoProgress.value = currentPosition.value.inSeconds / totalDuration.value.inSeconds;
          // Check if video is completed (90% watched)
          if (currentPosition.value.inSeconds >= (totalDuration.value.inSeconds * 0.90)) {
            isVideoCompleted.value = true;
          }
        }
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
    if (isYoutubeVideo.value) {
      // YouTube player iframe handles its own play/pause through UI
      // No need for manual control
    } else {
      if (videoController?.value.isPlaying ?? false) {
        videoController?.pause();
      } else {
        videoController?.play();
      }
    }
  }

  void seekTo(Duration position) {
    if (!isYoutubeVideo.value) {
      videoController?.seekTo(position);
    }
  }

  void skipForward() {
    if (isYoutubeVideo.value) {
      // YouTube player handles this internally
      return;
    }
    final newPosition = currentPosition.value + const Duration(seconds: 10);
    if (newPosition < totalDuration.value) {
      videoController?.seekTo(newPosition);
    } else {
      videoController?.seekTo(totalDuration.value);
    }
  }

  void skipBackward() {
    if (isYoutubeVideo.value) {
      // YouTube player handles this internally
      return;
    }
    final newPosition = currentPosition.value - const Duration(seconds: 10);
    if (newPosition > Duration.zero) {
      videoController?.seekTo(newPosition);
    } else {
      videoController?.seekTo(Duration.zero);
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
        'videoUrl': videoUrl,
        'materialTitle': materialTitle,
        'chapterName': chapterName,
      },
    );
  }

  @override
  void onClose() {
    videoController?.dispose();
    super.onClose();
  }
}
