import 'dart:io';

void main() {
  List<Map<String, dynamic>> pegawai = [
    {'id': 1, 'nama': 'Andi', 'jabatan': 'Manager', 'gaji': 7000000},
    {'id': 2, 'nama': 'Ali', 'jabatan': 'Staff', 'gaji': 5000000},
    {'id': 3, 'nama': 'Aji', 'jabatan': 'Staff', 'gaji': 5000000},
    {'id': 4, 'nama': 'Ari', 'jabatan': 'Staff', 'gaji': 5000000},
    {'id': 5, 'nama': 'Ardi', 'jabatan': 'Staff', 'gaji': 5000000},
  ];

  print('\n===== Daftar Pegawai ====');

  pegawai.forEach((p) {
    print('${p['id']}. ${p['nama']} - ${p['jabatan']} - Rp${p['gaji']}');
  });

  // tambah data pegawai
  tambahPegawai(pegawai, {
    'id': 6,
    'nama': 'Ahmad',
    'jabatan': 'Staff',
    'gaji': 5000000,
  });

  int jumlahGajiTinggi = pegawai.where((p) => p['gaji'] > 5000000).length;
  print('\nJumlah Pegawai dengan Gaji diatas 5 Juta: $jumlahGajiTinggi');

  // pencarian pegawai berdasarkan nama
  stdout.write('\nMasukkan Nama Pegawai: ');

  String cariNama = stdin.readLineSync()!;
  cariPegawai(pegawai, cariNama);
}

void tambahPegawai(
  List<Map<String, dynamic>> pegawai,
  Map<String, dynamic> pegawaiBaru,
) {
  pegawai.add(pegawaiBaru);
  print('\n===== Pegawai Baru =====');
  print(
    '${pegawaiBaru['id']}. ${pegawaiBaru['nama']} - ${pegawaiBaru['jabatan']} - Rp${pegawaiBaru['gaji']}',
  );
}

void cariPegawai(List<Map<String, dynamic>> pegawai, String nama) {
  bool ditemukan = false;

  pegawai.forEach((p) {
    if (p['nama'].toLowerCase() == nama.toLowerCase()) {
      print(
        '\nPegawai ditemukan: ${p['id']}. ${p['nama']} - ${p['jabatan']} - Rp${p['gaji']}',
      );
      ditemukan = true;
    }
  });

  if (!ditemukan) {
    print("\nPegawai dengan nama '$nama' tidak ditemukan");
  }
}
