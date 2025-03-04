// main.dart - program utama menjalankan sistem
import 'garasi.dart';
import 'mobil.dart';
import 'motor.dart';

void main() {
  Garasi myGarasi = Garasi();

  Mobil kendaraan1 = Mobil("Toyota Camry", 2022, 4);
  Motor kendaraan2 = Motor("Yamaha R15", 2020, false);

  myGarasi.addKendaraan(kendaraan1);
  myGarasi.addKendaraan(kendaraan2);

  myGarasi.displayKendaraan();
  myGarasi.servisKendaraan();
}
