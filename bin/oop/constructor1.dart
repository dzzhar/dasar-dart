class Car {
  String brand;
  int year;

  // deklarasi constructor
  Car(this.brand, this.year);

  void showInfo() {
    print('Mobile $brand Tahun $year');
  }
}

void main() {
  Car myCar = Car('Toyota', 2023);
  myCar.showInfo();
}
