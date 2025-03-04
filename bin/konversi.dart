void main() {
  var inputanString = '10';
  var inputanInt = int.parse(inputanString);
  var inputanDouble = double.parse(inputanString);

  print(inputanString);
  print(inputanInt);
  print(inputanDouble);

  // mengubah dari tipe data int ke double
  var intToDouble = inputanInt.toDouble();
  // mengubah dari tipe data double ke int
  var doubleToInt = inputanDouble.toInt();

  print(intToDouble);
  print(doubleToInt);
}
