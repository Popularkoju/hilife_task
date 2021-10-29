class Stock {
  String productName;
  String productId;
  String productRate;
  String quantity;
  String unit;

  Stock(this.productName, this.productId, this.productRate, this.quantity,
      this.unit);

  static List<Stock> generateStock() {
    return [
      Stock("Chiura", "001", "120", "100", "kg"),
      Stock("Choco Plus", "002", "95", "0", "pkts"),
      Stock("Superfine Chiura", "003", "120", "23", "kg"),
      Stock("Nutri Nuggets", "004", "123", "5", "pkts"),
      Stock("Green Tea", "005", "699", "12", "pkts"),
      Stock("Instant oats", "006", "500", "55", "pkts"),
      Stock("Corn Flakes", "007", "120", "99", "pkts"),
      Stock("Plain Rice", "007", "450", "0", "pkts"),
      Stock("ChocoPie", "007", "221", "55", "boxes"),
      Stock("Wheat flour", "007", "330", "2", "pkts"),
      Stock("Soyabean Masyaura", "007", "1000", "0", "pkts"),
      Stock("kurum kurum chiura", "007", "1452", "55", "boxes")
    ];
  }
}
