class SiswaData {
  final String subjectName;
  final String topicName;
  final String tanggal;
  final String status;

  SiswaData(this.subjectName,this.topicName,this.tanggal,this.status);
}

List<SiswaData> siswareports = [
  SiswaData('Anonym', 'Bingung','17 April 2023', 'Diproses'),
  SiswaData('Kevin', 'Terkena Bully','20 Maret 2023','Belum Diproses'),
  SiswaData('Anif', 'Terkena Bully', '20 Maret 2023', 'Selesai'),
  SiswaData('Fien', 'Terkena Bully','20 Maret 2023', 'Selesai'),
];
