void main() {
  Map<String, double> expenses = {"Sun": 30000, "Mon": 30000, "Tue": 40000};

  print("Cetak seluruh key ${expenses.keys}");
  print("Cetak seluruh value ${expenses.values}");

  print("Cetak seluruh key kedalam List: ${expenses.keys.toList()}");
  print("Cetak seluruh value kedalam list: ${expenses.values.toList()}");
}
