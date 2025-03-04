// kendaraan.dart - berisi abstract class Kendaraan
abstract class Kendaraan {
  String nama;
  int tahun;

  Kendaraan(this.nama, this.tahun);

  void informasiKendaraan();
  void servisKendaraan();
}
