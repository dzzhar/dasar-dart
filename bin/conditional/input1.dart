import 'dart:io';

void main() {
  // input data
  stdout.write('Masukkan Nama Anda: ');

  // menyimpan inputan data
  String? nama = stdin.readLineSync();

  // output yang dikeluarkan
  print('Hallo $nama!');

  // dengan baris baru
  print('Hallo');
  // tanpa baris
  stdout.write("Hallo");
  stdout.write("Hallo");
}
