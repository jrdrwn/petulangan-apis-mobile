class KelasModel {
  final String id;
  final String name;
  final String displayName;
  final String description;

  KelasModel({
    required this.id,
    required this.name,
    required this.displayName,
    required this.description,
  });

  // Static list of available classes
  static List<KelasModel> getAvailableClasses() {
    return [
      KelasModel(
        id: 'kelas_4',
        name: 'Kelas IV',
        displayName: 'Kelas IV',
        description: 'Kelas 4 - Petualangan IPAS',
      ),
      KelasModel(
        id: 'kelas_5',
        name: 'Kelas V',
        displayName: 'Kelas V',
        description: 'Kelas 5 - Petualangan IPAS',
      ),
    ];
  }
}
