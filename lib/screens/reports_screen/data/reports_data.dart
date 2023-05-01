class ReportData {
  final String topicName;
  final String status;

  ReportData(this.topicName,this.status);
}

List<ReportData> reports = [
  ReportData('Laporan Penangan Siswa', 'Laporan baru'),
  ReportData('Laporan Kehadiran Bulanan','Tidak ada laporan baru'),
  ReportData('Laporan Kartu Komunikasi', 'Laporan baru'),
  ReportData('Laporan Masalah Siswa', 'Laporan Baru'),
];
