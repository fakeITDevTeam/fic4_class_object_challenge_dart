import 'dart:io';
import 'package:fic4_class_object_challenge_dart/kucing.dart';
import 'package:fic4_class_object_challenge_dart/mahasiswa.dart';
import 'package:fic4_class_object_challenge_dart/bank.dart';

void main(List<String> arguments) {
  print('** tentang kucing **');  
  Kucing kucing1 = Kucing(); 
  kucing1.nama = 'Meong';
  kucing1.umur = 3;

  String kNama = kucing1.nama;
  String kUmur = kucing1.umur.toString();
  print("Seekor kucing bernama $kNama berumur $kUmur tahun.");
  print('------------------------');

  print('**tentang mahasiswa**');
  print('nama: ');
  String nama = stdin.readLineSync();
  print('jurusan: ');
  String jurusan = stdin.readLineSync();
  print('angkatan: ');
  int angkatan = int.tryParse(stdin.readLineSync());
  // parametered constructor
  print('result using parametered constructor: ');
  Mahasiswa mahasiswa = Mahasiswa(nama, jurusan, angkatan);
  print('nama: ${mahasiswa.nama} | jurusan: ${mahasiswa.jurusan} | angkatan: ${mahasiswa.angkatan}');
  // named constructor
  print('result using named constructor: ');
  String strJsonMhs1 = '{"nama": "$nama", "jurusan": "$jurusan", "angkatan": $angkatan }';
  Mahasiswa mahasiswa1 = Mahasiswa.fromJson(strJsonMhs1); 
  print('nama: ${mahasiswa1.nama} | jurusan: ${mahasiswa1.jurusan} | angkatan: ${mahasiswa1.angkatan}');
  print('------------------------');

  print('**tentang bank**');
  print('nama: ');
  String namaNasabah = stdin.readLineSync();
  print('alamat: ');
  String alamatNasabah = stdin.readLineSync();  
  Nasabah nasabah1 = Nasabah(namaNasabah, alamatNasabah);
  print('nama: ${nasabah1.nama} | alamat: ${nasabah1.alamat} | saldo: ${nasabah1.saldo}');
  print('jumlah setoran: ');
  double setorNasabah = double.tryParse(stdin.readLineSync());
  nasabah1.simpan(setorNasabah);
  print('nama: ${nasabah1.nama} | alamat: ${nasabah1.alamat} | saldo: ${nasabah1.saldo}');
  print('jumlah tarik: ');
  double tarikNasabah = double.tryParse(stdin.readLineSync());
  nasabah1.ambil(tarikNasabah);
  print('nama: ${nasabah1.nama} | alamat: ${nasabah1.alamat} | saldo: ${nasabah1.saldo}');
  print('*****');
  print('nama: ');
  String namaNasabah2 = stdin.readLineSync();
  print('alamat: ');
  String alamatNasabah2 = stdin.readLineSync();  
  Nasabah nasabah2 = Nasabah(namaNasabah2, alamatNasabah2);
  print('nama: ${nasabah2.nama} | alamat: ${nasabah2.alamat} | saldo: ${nasabah2.saldo}');
  print('jumlah setoran: ');
  double setorNasabah2 = double.tryParse(stdin.readLineSync());
  nasabah2.simpan(setorNasabah2);
  print('nama: ${nasabah2.nama} | alamat: ${nasabah2.alamat} | saldo: ${nasabah2.saldo}');
  print('jumlah tarik: ');
  double tarikNasabah2 = double.tryParse(stdin.readLineSync());
  nasabah2.ambil(tarikNasabah2);
  print('nama: ${nasabah2.nama} | alamat: ${nasabah2.alamat} | saldo: ${nasabah2.saldo}');
  print('------------------------');

} 

