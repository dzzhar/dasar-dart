void main(List<String> arguments) {
  var daftarBuah = List<String>.filled(3, "", growable: false);

  // mengisi data
  daftarBuah[0] = "Mangga";
  daftarBuah[1] = "Jeruk";
  daftarBuah[2] = "Apel";

  print("Daftar buah $daftarBuah");

  var daftarBuahLain = ["Pisang", "Semangka", "Durian"];
  print("Daftar buah lain $daftarBuahLain");

  /**
   * menggabungkan kedua variabel dengan spread operator
   * spread operator => memanggil variabel menggunakan symbol ...
   */
  var semuaBuah = [...daftarBuah, ...daftarBuahLain];
  print('Semua buah $semuaBuah');

  // menghapus berdasarkan nama
  semuaBuah.remove("Jeruk");
  print("Setelah menghapus Jeruk: $semuaBuah");

  // menambahkan data
  semuaBuah.add("Nanas");
  print("Setelah menambahkan Nanas: $semuaBuah");

  // mengurutkan ascending
  semuaBuah.sort();
  print("Setelah diurutkan: $semuaBuah");
}
