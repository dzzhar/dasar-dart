void main() {
  // operator aritmatika
  var operand1 = 10;
  var operand2 = 7;
  var operand3 = 10;

  print(operand1 + operand2);
  print(operand1 - operand2);
  print(-operand1);
  print(operand1 * operand2);
  print(operand1 / operand2);
  print(operand1 ~/ operand2);
  print(operand1 % operand2);

  // operator kegunaan
  var preIncrement = 5;
  var postIncrement = 5;
  var preDecrement = 5;
  var postDecrement = 5;

  print(++preIncrement);
  print(postIncrement++);
  print(postIncrement);
  print(--preDecrement);
  print(postDecrement--);
  print(postDecrement);

  // operator perbandingan
  print(operand1 > operand2); // true
  print(operand1 < operand2); // false
  print(operand1 >= operand2); // true
  print(operand1 >= operand3); // true
  print(operand1 <= operand2); // false
  print(operand1 == operand2); // false
  print(operand1 != operand2); // true
  print(operand1 == operand3); // true
}
