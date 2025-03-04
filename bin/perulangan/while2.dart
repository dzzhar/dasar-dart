import 'dart:io';

void main() {
  // deklarasi logic
  String usernameBenar = 'admin';
  String passwordBenar = '12345';
  int percobaan = 0;
  int maxPercobaan = 3;
  bool loginBerhasil = false;

  while (percobaan < maxPercobaan && !loginBerhasil) {
    stdout.write('Masukkan Username: ');
    String? username = stdin.readLineSync();
    stdout.write('Masukkan Password: ');
    String? password = stdin.readLineSync();

    if (username == usernameBenar && password == passwordBenar) {
      print('Login Berhasil! Selamat Datang, $username');
      loginBerhasil = true;
    } else {
      percobaan++;
      print('Login Gagal! Percobaan ke-$percobaan dari $maxPercobaan');

      if (percobaan == maxPercobaan) {
        print('Anda Telah Mencapai Batas Percobaan, Akun Terkunci');
      }
    }
  }
}
