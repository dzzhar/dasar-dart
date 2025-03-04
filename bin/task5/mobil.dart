// mobil.dart - berisi class Mobil, turunan dari Kendaraan
import 'kendaraan.dart';

class Mobil extends Kendaraan {
  int pintu;

  Mobil(String nama, int tahun, this.pintu) : super(nama, tahun);

  @override
  void informasiKendaraan() {
    // TODO: implement informasiKendaraan
    print('- Mobil: $nama ($tahun) - $pintu Pintu');
  }

  @override
  void servisKendaraan() {
    // TODO: implement servisKendaraan
    print('Servis mobil $nama dilakukan.');
  }
}
