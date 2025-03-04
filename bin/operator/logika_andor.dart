void main() {
  var nilaiAkhir = 70;
  var nilaiTugas = 80;

  var apakahNilaiAkhirBagus = nilaiAkhir >= 75;
  var apakahNilaiTugasBagus = nilaiTugas >= 75;
  var operatorAnd = apakahNilaiAkhirBagus && apakahNilaiTugasBagus;
  var operatorOr = apakahNilaiAkhirBagus || apakahNilaiTugasBagus;

  print(apakahNilaiAkhirBagus); // false
  print(apakahNilaiTugasBagus); // true
  print(operatorAnd); // false
  print(operatorOr); // true
}
