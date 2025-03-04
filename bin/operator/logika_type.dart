void main() {
  dynamic variable1 = 10;

  var variable2 = variable1 as int;

  print(variable1);
  print(variable2);
  print(variable1 is int); // true
  print(variable1 is! int); // false
}
