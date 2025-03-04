// garasi.dart - berisi class Garasi, turunan dari Kendaraan
import 'kendaraan.dart';

class Garasi {
  List<Kendaraan> kendaraans = [];

  void addKendaraan(Kendaraan kendaraan) {
    print('Menambahkan kendaraan ke garasi...');
    kendaraans.add(kendaraan);
  }

  void displayKendaraan() {
    print('\nDaftar Kendaraan di Garasi:');
    for (var kendaraan in kendaraans) {
      kendaraan.informasiKendaraan();
    }
  }

  void servisKendaraan() {
    print('\nMelakukan servis untuk semua kendaraan...');
    for (var kendaraan in kendaraans) {
      kendaraan.servisKendaraan();
    }
  }
}
