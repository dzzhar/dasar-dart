void main() {
  var nilai = 70;
  var absen = 80;
  int angka = 7;
  int angka1 = 5;

  if (angka1 >= 0) {
    if (angka1 % 2 == 0) {
      print('Angka Positif dan Genap');
    } else {
      print('Angka Positif dan Ganjil');
    }
  } else {
    print('Angka Negatif dan Ganjil');
  }

  String hasil = (angka % 2 == 0) ? 'Genap' : 'Ganjil';
  print('Hasil: $hasil');

  if (nilai >= 80 && absen >= 80) {
    // ouput ditampilkan jika bernilai true
    print('Nilai Anda A!');
  } else if (nilai >= 70 && absen >= 70) {
    print('Nilai Anda B!');
  } else if (nilai >= 60 && absen >= 60) {
    print('Nilai Anda C!');
  } else if (nilai >= 50 && absen >= 50) {
    print('Nilai Anda D!');
  } else {
    // output ditampilkan jika kondisi tidak terpenuhi bernilai false
    print('Anda Tidak Lulus');
  }
}
