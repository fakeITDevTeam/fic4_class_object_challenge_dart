import 'dart:convert';

class Mahasiswa {
  String nama;
  String jurusan;
  int angkatan;
  
  //Mahasiswa();

  Mahasiswa(String pNama, String pJurusan, int pAngkatan) {
    nama = pNama;
    pJurusan = pJurusan;
    pAngkatan = pAngkatan;
  }
  Mahasiswa.fromJson(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    nama = json['nama'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];
  }
}