void main() {
  String namaDepan = 'Budi';
  String namaBelakang = "Purnomo";

  var namaLengkap = '$namaDepan $namaBelakang';
  var namaLengkap2 = '${namaDepan} ${namaBelakang}';

  print(namaLengkap);
  print(namaLengkap2);
  print(namaDepan + namaBelakang);

  // string multiline
  var kalimat =
      '''ini adalah contoh kalimat yang terdiri dari beberapa baris.''';
  print(kalimat);

  // tipe data dynamic
  dynamic nama = "Andi";
  print(nama);
  nama = 10;
  print(nama);
  nama = true;
  print(nama);
}
