import 'dart:io';

void main() {
  stdout.write('Masukkan Jumlah Pegawai: ');
  int jumlahPegawai = int.parse(stdin.readLineSync()!);

  // menyimpan data pegawai dalam list
  List<Map<String, dynamic>> daftarPegawai = [];

  for (var i = 0; i < jumlahPegawai; i++) {
    print('\n===== Masukkan Data Pegawai =====');

    // input data pegawai
    stdout.write('Nama Pegawai: ');
    String? namaPegawai = stdin.readLineSync();
    stdout.write('Jabatan Pegawai: ');
    String jabatanPegawai = stdin.readLineSync()!;
    stdout.write('ID Pegawai: ');
    int idPegawai = int.parse(stdin.readLineSync()!);
    stdout.write('Jumlah Tahun Kerja: ');
    int tahunKerja = int.parse(stdin.readLineSync()!);
    stdout.write('Gaji Pegawai: ');
    double gajiPegawai = double.parse(stdin.readLineSync()!);

    // add ke list daftarPegawai
    daftarPegawai.add({
      'nama': namaPegawai,
      'id': idPegawai,
      'jabatan': jabatanPegawai,
      'tahunKerja': tahunKerja,
      'gaji': gajiPegawai,
    });
  }

  // menampilkan nomor pegawai berurutan
  print('\n===== Daftar ID Pegawai Berurutan =====');
  for (var i = 0; i < daftarPegawai.length; i++) {
    print('${i + 1}. ${daftarPegawai[i]['nama']} (${daftarPegawai[i]['id']})');
  }

  // menampilkan id pegawai genap
  var printGenap = false;
  var printGanjil = false;
  for (var pegawai in daftarPegawai) {
    if (pegawai['id'] % 2 == 0) {
      if (!printGenap) {
        print('\n===== Pegawai Dengan ID Genap =====');
        printGenap = true;
      }
      print(
        '${pegawai['nama']} (${pegawai['jabatan']}): ${pegawai['id']} (${pegawai['tahunKerja']} tahun) - Rp.${pegawai['gaji']}',
      );
    } else {
      if (!printGanjil) {
        print('\n===== Pegawai Dengan ID Ganjil =====');
        printGanjil = true;
      }
      print(
        '${pegawai['nama']} (${pegawai['jabatan']}): ${pegawai['id']} (${pegawai['tahunKerja']} tahun) - Rp.${pegawai['gaji']}',
      );
    }
  }

  // mencetak seluruh data pegawai dan tunjangan
  print('\n===== Daftar Pegawai =====');
  daftarPegawai.forEach((pegawai) {
    // memanggil fungsi tunjanganPegawai dan bonusTahunan
    double tunjangan = tunjanganPegawai(pegawai['jabatan']);
    double bonus = bonusTahunan(pegawai['tahunKerja']);
    print(
      '${pegawai['nama']} (${pegawai['jabatan']}): ${pegawai['id']} (${pegawai['tahunKerja']} tahun)',
    );
    print(
      'Gaji: Rp.${pegawai['gaji']}\nTunjangan: Rp.$tunjangan\nBonus Tahunan: Rp.$bonus\n',
    );
  });

  double totalGaji = totalGajiPegawai(daftarPegawai);
  print('Total Gaji Pegawai: Rp.$totalGaji');
}

// menghitung total gaji pegawai
double totalGajiPegawai(List<dynamic> daftarPegawai) {
  double total = 0;
  for (var pegawai in daftarPegawai) {
    total += pegawai['gaji'];
  }
  return total;
}

// menentukan tunjangan pegawai berdasarkan jabatan
double tunjanganPegawai(String jabatan, [double tunjanganStaff = 100000]) {
  switch (jabatan.toLowerCase()) {
    case 'direktur':
      return tunjanganStaff + 50000;
    default:
      return tunjanganStaff;
  }
}

// menghitung bonus tahunan berdasarkan jumlah tahun kerja
double bonusTahunan(int tahunKerja) {
  if (tahunKerja <= 0) return 0;
  return 100000 + bonusTahunan(tahunKerja - 1);
}

// menghitung gaji bersih setelah pajak
double gajiBersih(double gajiPegawai) => gajiPegawai * 0.10;
