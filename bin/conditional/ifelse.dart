import 'dart:io';

void main() {
  print('Menghitung Nilai Akhir');
  print('=====================\n');

  stdout.write('Nama Mahasiswa: ');
  stdin.readLineSync();
  stdout.write('Nilai Tugas: ');
  var tugas = stdin.readLineSync();
  stdout.write('Nilai UTS: ');
  var uts = stdin.readLineSync();
  stdout.write('Nilai UAS: ');
  var uas = stdin.readLineSync();

  int konversiTugas = int.parse('$tugas');
  int konversiUts = int.parse('$uts');
  int konversiUas = int.parse('$uas');

  double nilaiAkhir =
      0.4 * konversiTugas + 0.3 * konversiUts + 0.3 * konversiUas;
  print('Nilai Akhir: $nilaiAkhir');

  if (nilaiAkhir >= 70) {
    print('Anda Lulus');
  } else {
    print('Anda Tidak Lulus');
  }
}
