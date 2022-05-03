import 'dart:io';

void main(List<String> args) {
  NomerSatu();
  NomerDua();
  NomerTiga();
  NomerEmpat();
  NomerLima();
  NomerEnam("Faisal", "Tidur");
}

void NomerSatu() {
  var pertama = "Flutter";
  var kedua = "is";
  var ketiga = "awesome";

  // print(pertama + " " + kedua + " " + ketiga);
  print("$pertama $kedua $ketiga");
}

void NomerDua() {
  var kalimat = "Belajar Flutter";
  var contoh = kalimat[2] + kalimat[3];
  var kata1 = kalimat[0] +
      kalimat[1] +
      kalimat[2] +
      kalimat[3] +
      kalimat[4] +
      kalimat[5] +
      kalimat[6];
  var kata2 = kalimat.substring(8, 15);

  print("Contoh: $contoh");
  print("Kata 1: $kata1");
  print("Kata 2: $kata2");
}

void NomerTiga() {
  stdout.write("Masukkan nama depan: ");
  String? depan = stdin.readLineSync();
  stdout.write("Masukkan nama belakang: ");
  String? belakang = stdin.readLineSync();

  print("Nama lengkap : $depan $belakang");
}

void NomerEmpat() {
  var tinggi = 4;
  for (var i = 0; i < tinggi; i++) {
    for (var j = 0; j < i + 1; j++) {
      stdout.write("*");
    }
    print("");
  }
}

void NomerLima() {
  for (var i = 1; i <= 20; i++) {
    if (i % 2 == 0 && i % 3 == 0) {
      print("$i - Skip");
    } else if (i % 2 == 0) {
      print("$i - Genap");
    } else {
      print("$i - Ganjil");
    }
  }
}

NomerEnam(nama, hoby) {
  print("Nama saya $nama, saya memiliki hobby $hoby");
}
