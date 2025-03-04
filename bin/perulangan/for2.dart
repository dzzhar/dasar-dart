void main() {
  // deklarasi data
  List<Map<String, dynamic>> mahasiswa = [
    {'nama': 'Andi', 'nim': '011022', 'jurusan': 'Informatika'},
    {'nama': 'Aji', 'nim': '011023', 'jurusan': 'Sistem Informasi'},
    {'nama': 'Ardi', 'nim': '011024', 'jurusan': 'Bisnis Digital'},
  ];

  // menampilkan data
  print('Data Mahasiswa');
  for (int i = 0; i < mahasiswa.length; i++) {
    print('Mahasiswa ${i + 1}');
    print('Nama: ${mahasiswa[i]['nama']}');
    print('NIM: ${mahasiswa[i]['nim']}');
    print('Jurusan: ${mahasiswa[i]['jurusan']}\n');
  }
}
