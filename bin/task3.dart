import 'dart:io';

void main() {
  print('===== Evaluasi Nilai Mahasiswa =====');

  // definisi inputan
  stdout.write('Masukkan Nama: ');
  String? namaMahasiswa = stdin.readLineSync();
  stdout.write('Masukkan Nilai: ');
  String? nilaiMahasiswa = stdin.readLineSync();

  // validasi nilai input
  if (namaMahasiswa == null || nilaiMahasiswa == null) {
    print('Inputan Tidak Valid');
    return;
  }

  // konversi nilai
  int konversiNilai = int.parse(nilaiMahasiswa);

  // pengkondisian nilai
  String grade;
  if (konversiNilai >= 0 && konversiNilai <= 100) {
    if (konversiNilai >= 90) {
      grade = 'A - Sangat Baik';
    } else if (konversiNilai >= 80) {
      grade = 'B - Baik';
    } else if (konversiNilai >= 70) {
      grade = 'C - Cukup';
    } else if (konversiNilai >= 60) {
      grade = 'D - Kurang';
    } else {
      grade = 'E - Gagal';
    }
  } else {
    print('Nilai Harus Dalam Rentang 0 - 100');
    return;
  }

  // pengkondisian kategori nilai
  String kategori;
  switch (grade) {
    case 'A - Sangat Baik':
      kategori = 'A';
      break;
    case 'B - Baik':
      kategori = 'B';
      break;
    case 'C - Cukup':
      kategori = 'C';
      break;
    case 'D - Kurang':
      kategori = 'D';
      break;
    default:
      kategori = 'E';
  }

  // output yang dihasilkan
  print('\n===== Hasil Evaluasi Mahasiswa =====');
  print('Nama: $namaMahasiswa');
  print('Nilai: $nilaiMahasiswa');
  print('Kategori: $kategori');
}
