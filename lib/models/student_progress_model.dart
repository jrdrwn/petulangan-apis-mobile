// Model untuk progress bab dan topik
class ChapterProgress {
  final String chapterId;
  final String chapterNumber;
  final String chapterTitle;
  final String status; // 'completed', 'in-progress', 'locked'
  final int? score; // null jika belum selesai
  final List<TopicProgress> topics;

  ChapterProgress({
    required this.chapterId,
    required this.chapterNumber,
    required this.chapterTitle,
    required this.status,
    this.score,
    required this.topics,
  });

  // Status icon dan warna
  String get statusIcon {
    switch (status) {
      case 'completed':
        return '✓'; // Lulus
      case 'in-progress':
        return '⚠'; // Belum Tuntas
      case 'locked':
        return '🔒'; // Terkunci
      default:
        return '';
    }
  }

  String get statusText {
    switch (status) {
      case 'completed':
        return 'Lulus';
      case 'in-progress':
        return 'Belum Tuntas';
      case 'locked':
        return 'Terkunci';
      default:
        return '';
    }
  }
}

class TopicProgress {
  final String topicId;
  final String topicTitle;
  final String status; // 'completed', 'failed', 'locked'
  final int stars; // 0-3 bintang
  final int? score; // null jika belum dikerjakan

  TopicProgress({
    required this.topicId,
    required this.topicTitle,
    required this.status,
    required this.stars,
    this.score,
  });
}

// Model untuk student detail dengan progress
class StudentDetailModel {
  final String nisn;
  final String name;
  final List<ChapterProgress> chapters;

  StudentDetailModel({
    required this.nisn,
    required this.name,
    required this.chapters,
  });

  // Sample data untuk Ahmad Iqbal
  static StudentDetailModel getSampleDetail(String nisn, String name) {
    return StudentDetailModel(
      nisn: nisn,
      name: name,
      chapters: [
        ChapterProgress(
          chapterId: 'bab_5',
          chapterNumber: 'BAB V',
          chapterTitle: 'Cerita Tentang Daerahku',
          status: 'completed',
          score: 85,
          topics: [
            TopicProgress(
              topicId: 'topik_a',
              topicTitle: 'Topik A: Keunikan Kebiasaan...',
              status: 'completed',
              stars: 3,
              score: 90,
            ),
            TopicProgress(
              topicId: 'topik_b',
              topicTitle: 'Topik B: Sejarah Daerahku',
              status: 'completed',
              stars: 2,
              score: 80,
            ),
            TopicProgress(
              topicId: 'topik_c',
              topicTitle: 'Topik C: Ekonomi Daerahku',
              status: 'completed',
              stars: 3,
              score: 85,
            ),
          ],
        ),
        ChapterProgress(
          chapterId: 'bab_6',
          chapterNumber: 'BAB VI',
          chapterTitle: 'Indonesia Kaya Raya',
          status: 'in-progress',
          score: 60,
          topics: [
            TopicProgress(
              topicId: 'topik_a',
              topicTitle: 'Topik A: Kekayaan Alam',
              status: 'completed',
              stars: 2,
              score: 70,
            ),
            TopicProgress(
              topicId: 'topik_b',
              topicTitle: 'Topik B: Kekayaan Budaya',
              status: 'failed',
              stars: 0,
              score: 50,
            ),
            TopicProgress(
              topicId: 'topik_c',
              topicTitle: 'Topik C: -- (Terkunci)',
              status: 'locked',
              stars: 0,
              score: null,
            ),
          ],
        ),
        ChapterProgress(
          chapterId: 'bab_7',
          chapterNumber: 'BAB VII',
          chapterTitle: 'Daerahku Kebanggaanku',
          status: 'locked',
          score: null,
          topics: [],
        ),
        ChapterProgress(
          chapterId: 'bab_8',
          chapterNumber: 'BAB VIII',
          chapterTitle: 'Bumiku Sayang',
          status: 'locked',
          score: null,
          topics: [],
        ),
      ],
    );
  }
}
