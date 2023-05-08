class Nasabah {
  String nama;
  String alamat;
  double saldo;

  Nasabah(String pNama, String pAlamat, {double pSaldo=0}) {
    nama = pNama;
    alamat = pAlamat;
    saldo = pSaldo;
  }

  void simpan(double pJumlah) {
    saldo += pJumlah;
  }

  void ambil(double pJumlah) {
    saldo -= pJumlah;
  }
}