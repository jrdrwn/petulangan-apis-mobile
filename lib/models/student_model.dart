class StudentModel {
  final String nisn;
  final String name;
  final String? avatar;

  StudentModel({required this.nisn, required this.name, this.avatar});

  // Sample data for demonstration
  static List<StudentModel> getSampleStudents(String kelasId) {
    return [
      StudentModel(nisn: '2321647212', name: 'Ahmad Iqbal'),
      StudentModel(nisn: '2321647202', name: 'Zaenal Baidin'),
      StudentModel(nisn: '2321647203', name: 'Siti Nurhaliza'),
      StudentModel(nisn: '2321647204', name: 'Budi Santoso'),
      StudentModel(nisn: '2321647205', name: 'Dewi Kartika'),
      StudentModel(nisn: '2321647206', name: 'Rudi Hartono'),
      StudentModel(nisn: '2321647207', name: 'Linda Wijaya'),
      StudentModel(nisn: '2321647208', name: 'Andi Pratama'),
      StudentModel(nisn: '2321647208', name: 'Andi Pratama'),
      StudentModel(nisn: '2321647208', name: 'Andi Pratama'),
      StudentModel(nisn: '2321647208', name: 'Andi Pratama'),
      StudentModel(nisn: '2321647208', name: 'Andi Pratama'),
      StudentModel(nisn: '2321647208', name: 'Andi Pratama'),
      StudentModel(nisn: '2321647208', name: 'Andi Pratama'),
      StudentModel(nisn: '2321647208', name: 'Andi Pratama'),
      StudentModel(nisn: '2321647208', name: 'Andi Pratama'),
    ];
  }
}
