// class
class Sepeda {
  // atribut(properti)
  String? warna;
  int? ukuran;
  int? kecepatan;

  void changeGear(int newValue) {
    kecepatan = newValue;
  }

  void display() {
    print('Warna: $warna');
    print('Ukuran: $ukuran');
    print('Kecepatan: $kecepatan');
  }
}

// object
void main() {
  Sepeda bicycle = Sepeda();
  bicycle.warna = 'Red';
  bicycle.ukuran = 26;
  bicycle.kecepatan = 0;
  bicycle.changeGear(5);
  bicycle.display();
}
