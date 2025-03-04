abstract class Kendaraan {
  String nama;
  Kendaraan(this.nama);

  void hidupkanMesin();
  void matikanMesin();

  void info() {
    print('Nama: $nama');
    hidupkanMesin();
    matikanMesin();
  }
}

class Mobil extends Kendaraan {
  Mobil(String nama) : super(nama);

  @override
  void hidupkanMesin() {
    // TODO: implement hidupkanMesin
    print('$nama: Mesin Mmbil dinyalankan');
  }

  @override
  void matikanMesin() {
    // TODO: implement matikanMesin
    print('$nama: Mesin mobil dimatikan');
  }
}

class Motor extends Kendaraan {
  Motor(String nama) : super(nama);
  @override
  void hidupkanMesin() {
    // TODO: implement hidupkanMesin
    print('$nama: Mesin motor dinyalakan');
  }

  @override
  void matikanMesin() {
    // TODO: implement matikanMesin
    print('$nama: Mesin motor dimatikan');
  }
}

void main() {
  var avanza = Mobil('Toyota Avanza');
  var beat = Motor('Honda Beat');

  avanza.info();
  beat.info();
}
