import 'Lingkaran.dart';
import 'Persegi.dart';

void main(List<String> args) {
  //nomer 1
  List<int> a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(angka(a));

  //nomer 2
  List<List<String>> multi = [
    ["001", "Akhmal Dimas", "Sleman", "Gaming"],
    ["002", "Dimas Pratama", "Yogyakata", "Berkebun"],
    ["003", "Joni Kontinoe", "Yogyakata", "Ngding"]
  ];
  for (var item in multi) {
    print(item);
  }

  //nomer 3
  var luaslingkaran = LuasLingkaran();
  luaslingkaran._phi = 3.14;
  luaslingkaran.radius = 7;
  print(luaslingkaran.hitungLuas());

  //nomer 4
  var lingkaran = Lingkaran(7);
  print(lingkaran.Luas());
  print(lingkaran.keliling());

  var persegi = Persegi(10);
  print(persegi.Luas());
  print(persegi.keliling());

  // //nomer 5
  // //future delay
  // print("Nama");
  // Future.delayed(Duration(seconds: 2), () => print("Faisal"));
  // print("Saya");

  //nomer 6
  print("Menyanyi Mulai, ");
  print(line1());
  print(line2());
  print(line3());
}

//***********************************************
//nomer 1
List angka(List<int> a) {
  return a;
}

//nomer 3
class LuasLingkaran {
  double _phi = 0;
  double _radius = 0;

  //setter
  set phi(double phi) => _phi = phi;
  set radius(double radius) => _radius = radius;

  //getter
  double get phi => _phi;
  double get radius => _radius;

  double hitungLuas() {
    return _phi * _radius * _radius;
  }
}

Future<void> line1() {
  return Future.delayed(
      Duration(seconds: 1), () => print("Pelangi - Pelangi alangkah indahmu"));
}

Future<void> line2() {
  return Future.delayed(
      Duration(seconds: 3), () => print("Merah Kuning Hijau"));
}

Future<void> line3() {
  return Future.delayed(
      Duration(seconds: 4), () => print("Dilangit yang Biru"));
}
