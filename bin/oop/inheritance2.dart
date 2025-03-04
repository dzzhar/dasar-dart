// Super Class
class Pegawai {
  // atribut atau properti
  String nama;
  double gajiPokok;
  double tunjangan;
  double potongan;

  // constructor
  Pegawai(this.nama, this.gajiPokok, this.tunjangan, this.potongan);

  double hitungGajiBersih() {
    return gajiPokok + tunjangan - potongan;
  }

  void tampilkanInfo() {
    print('\n===============');
    print('Nama: $nama');
    print('Gaji Pokok: $gajiPokok');
    print('Tunjangan: $tunjangan');
    print('Potongan: $potongan');
    print('Gaji Bersih: ${hitungGajiBersih()}\n');
  }
}

class Manager extends Pegawai {
  double bonus;

  // constructor diambil dari pegawai dan tambahan bonus
  Manager(
    String nama,
    double gajiPokok,
    double tunjangan,
    double potongan,
    this.bonus,
  ) : super(nama, gajiPokok, tunjangan, potongan);

  @override
  double hitungGajiBersih() {
    // TODO: implement hitungGajiBersih
    return super.hitungGajiBersih() + bonus;
  }

  @override
  void tampilkanInfo() {
    // TODO: implement tampilkanInfo
    super.tampilkanInfo();
    print('Bonus: Rp, $bonus');
    print('Total Gaji Bersih: Rp. ${hitungGajiBersih()}');
  }
}

class Staff extends Pegawai {
  double uangMakan;

  Staff(
    String nama,
    double gajiPokok,
    double tunjangan,
    double potongan,
    this.uangMakan,
  ) : super(nama, gajiPokok, tunjangan, potongan);

  @override
  double hitungGajiBersih() {
    // TODO: implement hitungGajiBersih
    return super.hitungGajiBersih() + uangMakan;
  }

  @override
  void tampilkanInfo() {
    // TODO: implement tampilkanInfo
    super.tampilkanInfo();
    print('Uang Makan: Rp. $uangMakan');
    print('Total Gaji Bersih: Rp. ${hitungGajiBersih()}');
  }
}

void main() {
  Manager manager1 = Manager('Ardi', 7000000, 400000, 500000, 400000);
  Manager staff1 = Manager('Galih', 1000000, 200000, 100000, 200000);

  manager1.tampilkanInfo();
  staff1.tampilkanInfo();
}
