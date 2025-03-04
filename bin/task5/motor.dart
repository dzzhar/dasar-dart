// motor.dart - berisi class Motor, turunan dari Kendaraan
import 'kendaraan.dart';

class Motor extends Kendaraan {
  bool keranjang;

  Motor(String nama, int tahun, this.keranjang) : super(nama, tahun);

  @override
  void informasiKendaraan() {
    var berkeranjang = keranjang == true ? 'Keranjang' : 'Tanpa Keranjang';

    // TODO: implement informasiKendaraan
    print('- Motor: $nama ($tahun) - $berkeranjang');
  }

  @override
  void servisKendaraan() {
    // TODO: implement servisKendaraan
    print('Servis motor $nama dilakukan.');
  }
}
