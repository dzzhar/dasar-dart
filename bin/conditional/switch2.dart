import 'dart:io';

void main() {
  print('===== Lampu Lalu Lintas =====');

  stdout.write('Masukkan Warna: ');
  var warna = stdin.readLineSync();

  String arti;

  switch (warna) {
    case 'merah':
      arti = 'Berhenti';
      break;
    case 'kuning':
      arti = 'Hati Hati';
      break;
    case 'hijau':
      arti = 'Jalan';
      break;
    default:
      arti = 'Lampu Lalu Lintas Tidak Ada';
  }

  print('Arti Warna: $arti');
}
