import 'dart:io';

void main() {
  print('======= Program Grade =======');

  // membuat inputan
  stdout.write('Masukkan Nilai: ');
  var nilai = stdin.readLineSync();

  // konversi variable nilai
  double konversiNilai = double.parse('$nilai');
  String grade;

  // pengkondisian
  if (konversiNilai >= 90)
    grade = 'A+';
  else if (konversiNilai >= 80)
    grade = 'A';
  else if (konversiNilai >= 70)
    grade = 'B+';
  else if (konversiNilai >= 60)
    grade = 'B';
  else if (konversiNilai >= 50)
    grade = 'C+';
  else if (konversiNilai >= 40)
    grade = 'C';
  else if (konversiNilai >= 30)
    grade = 'D';
  else
    grade = 'E';

  // mengambil output grade
  print('Grade: $grade');
}
