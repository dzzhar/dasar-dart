double calculateAverage(List<int> scores) {
  int total = scores.reduce((a, b) => a + b);
  return total / scores.length;
}

void printResults(List<String> students, List<int> scores) {
  for (var i = 0; i < students.length; i++) {
    print('${students[i]}: ${scores[i]}');
  }
}

double calculateDiscount(double price, double discountPercentage) {
  return price = (price * discountPercentage / 100);
}

void printItemsWithDiscount(
  Map<String, double> items,
  double discountPercentage,
) {
  items.forEach((itemName, price) {
    double discountPrice = calculateDiscount(price, discountPercentage);
    print('Nama Barang: $itemName');
    print('Harga Awal - Rp.$price\nHarga Setelah Diskon - Rp.$discountPrice\n');
  });
}

void main() {
  Map<String, double> items = {
    'Laptop': 1500000,
    'Smartphone': 2000000,
    'Headphone': 1000000,
  };

  printItemsWithDiscount(items, 10);
}
