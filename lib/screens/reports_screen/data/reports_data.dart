class ReportData {
  final String subjectName;
  final String topicName;
  final String status;

  ReportData(this.subjectName,this.topicName,this.status);
}

List<ReportData> reports = [
  ReportData('Wali Kelas', 'Laporan Penangan Siswa', 'Laporan baru'),
  ReportData('Kehadiran', 'Laporan Kehadiran Bulanan','Tidak ada laporan baru'),
  ReportData('Komunikasi', 'Laporan Kartu Komunikasi', 'Laporan baru'),
  ReportData('Siswa', 'Laporan Masalah Siswa', 'Laporan Baru'),
];
