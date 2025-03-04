void main() {
  Map<String, String> buah = {
    'Apel': 'Merah',
    'Jeruk': "Orange",
    'Mangga': "Hijau",
    "Pisang": "Kuning",
  };

  // tambah data
  buah['Bluberry'] = "Ungu";

  // update data
  buah["Jeruk"] = "Orange Muda";

  print(buah);
  print(buah["Apel"]);

  Map<String, double> hargaBuah = {
    'Apel': 50000,
    'Jeruk': 10000,
    'Mangga': 20000,
    "Pisang": 30000,
  };

  print('Tampilkan semua key ${hargaBuah.keys}');
  print('Tampilkan semua value ${hargaBuah.values}');
  print("Apakah data map tersedia? ${hargaBuah.isEmpty}");
  print("Apakah data map tersedia? ${hargaBuah.isNotEmpty}");
  print("Berapa panjang maps: ${hargaBuah.length}");
}
