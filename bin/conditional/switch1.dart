void main() {
  var nilai = 'A';

  switch (nilai) {
    case 'A':
      print('Anda Lulus dengan Nilai A');
      // memberhentikan case yang sedang berjalan
      break;
    case 'B':
      print('Anda Lulus dengan Nilai B');
      break;
    case 'C':
      print('Anda Lulus dengan Nilai C');
      break;
    case 'D':
      print('Anda Lulus dengan Nilai D');
      break;

    // jika seluruh kondisi tidak terpenuhi
    default:
      print('Nilai Tidak Ditemukan');
  }
}
