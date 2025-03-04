void main() {
  print('Hello World');

  // deklarasi menggunakan tipe data
  String name = "Jimmy";
  int age = 45;
  print(name);
  print(age);

  // deklarasi menggunakan var
  var firstName = 'John';
  print(firstName);

  // deklarasi menggunakan final
  final lastName = 'Doe';
  print(lastName);

  // deklarasi menggunakan const
  const phi = 3.14;
  print(phi);

  // deklarasi menggunakan late
  /**
   * 1. pendefinisian nama variabel
   * 2. pendefinisian value variabel
   */
  late String address;
  address = 'Columbia';
  print(address);
}
