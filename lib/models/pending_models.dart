class PendingModel {
  String companyName;
  String orderId;
  String orderDate;

  bool isPending;

  PendingModel(this.companyName, this.orderDate, this.orderId, this.isPending);

  static List<PendingModel> getPendingList() {
    return [
      PendingModel("Bihani Suppliers", "3/12/2078", "#12345", true),
      PendingModel("K&K Trading ", "10/12/2078", "#12345", false),
      PendingModel("Himalayan", "27/12/2078", "#12345", true),
      PendingModel("Kanika Traders", "30/05/2078", "#12345", false),
      PendingModel("M&K Trading ", "28/12/2078", "#12345", false),
      PendingModel("XYZ Company", "3/09/2078", "#12345", true),
      PendingModel("Ghar Samam", "15/12/2078", "#12345", false),
    ];
  }
}
