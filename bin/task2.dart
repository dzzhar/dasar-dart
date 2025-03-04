void main() {
  // list nama mahasiswa
  var namaMahasiswa = ["Zharifah", "Dzikra", "Purnomo", "Asep", "Jamal"];

  // set mata kuliah
  Set<String> mataKuliah = {
    "Web Programming",
    "Basis Data",
    "Big Data",
    "Etika Profesi",
    "Keamanan Web",
  };

  // map untuk menyimpan data mahasiswa
  Map<String, Map<String, dynamic>> dataMahasiswa = {};

  // membuat data tiap mahasiswa
  for (var i = 0; i < namaMahasiswa.length; i++) {
    dataMahasiswa[namaMahasiswa[i]] = {
      "nim": 262492420 + i,
      "matkul": mataKuliah.toList(),
    };
  }

  // menambahkan satu mahasiswa baru
  dataMahasiswa['Zidan'] = {'nim': 262492425, 'matkul': mataKuliah.toList()};

  // menghapus satu mahasiswa
  dataMahasiswa.remove('Zharifah');

  // tampilkan daftar mahasiswa
  dataMahasiswa.forEach((mahasiswa, data) {
    print('$mahasiswa (${data['nim']}): ${data['matkul']}');
  });
}
