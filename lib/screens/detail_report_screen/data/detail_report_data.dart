class DetailData {
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  DetailData(this.receiptNo, this.month, this.date, this.paymentStatus,
      this.totalAmount, this.btnStatus);
}

List<DetailData> fee = [
  DetailData('90871', 'November', '8 Nov 2020', 'Pending', '980\$', 'PAY NOW'),
  DetailData('90870', 'September', '8 Sep 2020', 'Paid', '1080\$', 'DOWNLOAD'),
  DetailData('908869', 'August', '8 Aug 2020', 'Paid', '950\$', 'DOWNLOAD'),
];
