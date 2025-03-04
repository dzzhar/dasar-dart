import 'dart:io';

void main() {
  print('Program Penjumlahan Sederhana');
  print('=============================\n');

  // membuat input
  stdout.write('Nama Barang: ');
  var nama = stdin.readLineSync();
  stdout.write('Harga Barang: ');
  var harga = stdin.readLineSync();
  stdout.write('Jumlah Barang: ');
  var jumlah = stdin.readLineSync();

  // konversi dan definisi variabel
  double konversiHarga = double.parse('$harga');
  double konversiJumlah = double.parse('$jumlah');
  double total = konversiHarga * konversiJumlah;
  double diskon = 0.0;
  double bayar = 0.0;

  // pengkondisian
  if (total >= 1000000) {
    diskon = 0.1 * total;
  }
  bayar = total - diskon;

  // print hasil
  print('Nama Barang: $nama');
  print('Harga Barang: $harga');
  print('Jumlah Barang: $jumlah');
  print('Diskon: $diskon');
  print('Bayar: $bayar');
  print('Total Harga: $total');
}
