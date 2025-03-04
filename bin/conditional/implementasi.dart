import 'dart:io';

void main() {
  print('Program Perhitungan Total Harga');
  print('===============================');

  // deklarasi input
  stdout.write('Nama Barang: ');
  String? namaBarang = stdin.readLineSync();
  stdout.write('Harga Barang (Per Unit): ');
  String? hargaInput = stdin.readLineSync();
  stdout.write('Jumlah Barang: ');
  String? jumlahInput = stdin.readLineSync();

  // kondisional
  if (hargaInput == null || jumlahInput == null || namaBarang == null) {
    print('Inputan Tidak Valid');
    return;
  }

  // konversi tipe data
  int konversiHarga = int.parse(hargaInput);
  int konversiJumlah = int.parse(jumlahInput);
  int totalHarga = konversiHarga * konversiJumlah;

  print('\nPilih Kategori Barang: ');
  print('1. Elektronik\n2. Fashion\n3. Makanan\n4. Lainnya');

  stdout.write('Masukkan Nomor Kategori (1-4): ');
  String? kategoriInput = stdin.readLineSync();

  // definisi variabel
  double diskon = 0.0;
  String kategori = '';

  // kondisi switch case untuk mengubah angka ke dalam sebuah case/kategori
  switch (kategoriInput) {
    case "1":
      kategori = "Elektronik";
      diskon = totalHarga * 0.10;
      break;
    case "2":
      kategori = "Fashion";
      diskon = totalHarga * 0.20;
      break;
    case "3":
      kategori = "Makanan";
      diskon = totalHarga * 0.05;
      break;
    case "4":
      kategori = "Lainnya";
      diskon = totalHarga * 0.02;
      break;

    default:
      print('Kategori Tidak Valid');
      return;
  }

  // proses untuk total harga
  double totalSetelahDiskon = totalHarga - diskon;
  double diskonTambahan = 0.0;

  if (totalHarga > 10000000) {
    diskonTambahan = totalSetelahDiskon * 0.05;
    print(
      'Anda Mendapatkan Tambahan Diskon 5% karena Pembelian diatas 10000000',
    );
  }

  double totalBayar = totalSetelahDiskon - diskonTambahan;
  print('================');
  print('Detail Transaksi');
  print('Nama Barang: $namaBarang');
  print('Kategori: $kategori');
  print('Harga Barang: $hargaInput');
  print('Jumlah Barang: $jumlahInput');
  print('Total Harga: $totalBayar');
  print('Diskon Kategori: ${diskon.toStringAsFixed(2)}');

  if (diskonTambahan > 0) {
    print('Diskon Tambahan: ${diskon.toStringAsFixed(2)}');
  }

  print('Total Bayar: ${totalBayar.toStringAsFixed(2)}');
}
