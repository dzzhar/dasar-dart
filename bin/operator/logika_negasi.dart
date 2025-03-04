void main() {
  var nilaiAkhir = 80;
  var nilaiTugas = 70;

  var apakahNilaiAkhirBagus = nilaiAkhir >= 75;
  var apakahNilaiTugasBagus = nilaiTugas >= 75;

  print('Apakah nilai akhirnya bagus? $apakahNilaiAkhirBagus'); // true
  print('Apakah nilai tugasnya bagus? $apakahNilaiTugasBagus'); // false

  var apakahLulus = apakahNilaiAkhirBagus && apakahNilaiTugasBagus;
  print('Apakah lulus? $apakahLulus'); // false

  var apakahTidakLulus = !apakahLulus;
  print('Apakah tidak lulus? $apakahTidakLulus'); // true

  print('Apakah nilai akhir tidak bagus? ${!apakahNilaiAkhirBagus}'); // false
  print('Apakah nilai tugas tidak bagus? ${!apakahNilaiTugasBagus}'); // true
}
