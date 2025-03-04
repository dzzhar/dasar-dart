import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();

  int angkaBenar = random.nextInt(10) + 1;
  int tebakan;

  print('Selamat Datang di Permainan Tebak Angka!');
  print('Saya telah memilih angka 1 hingga 10. Coba Tebak');

  do {
    stdout.write('Masukkan tebakan anda: ');
    tebakan = int.parse(stdin.readLineSync()!);

    if (tebakan < angkaBenar) {
      print('Tebakan terlalu kecil, coba lagi');
    } else if (tebakan > angkaBenar) {
      print('Tebakan terlalu besar, coba lagi');
    } else {
      print('Selamat tebakan Anda benar!');
    }
  } while (tebakan != angkaBenar);
}
