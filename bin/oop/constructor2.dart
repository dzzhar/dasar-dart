class Pegawai {
  // atribut (properti)
  String nama;
  String jabatan;
  double gajiPokok;
  double tunjangan;
  double potongan;

  // constructor
  Pegawai(
    this.nama,
    this.jabatan,
    this.gajiPokok,
    this.tunjangan,
    this.potongan,
  );

  double hitunganGajiBersih() {
    return gajiPokok + tunjangan - potongan;
  }

  void tampilkanInfo() {
    print('\n=====================');
    print('Nama: $nama');
    print('Jabatan: $jabatan');
    print('Gaji Pokok: Rp.$gajiPokok');
    print('Tunjangan: Rp.$tunjangan');
    print('Potongan: Rp.$potongan');
    print('Gaji Bersih: Rp.${hitunganGajiBersih()}');
  }
}

void main() {
  Pegawai pegawai1 = Pegawai('Budi', 'Manager', 12000000, 200000, 400000);
  Pegawai pegawai2 = Pegawai('Andi', 'Direktur', 40000000, 400000, 800000);

  pegawai1.tampilkanInfo();
  pegawai2.tampilkanInfo();
}
