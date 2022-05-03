import 'Bangun_Datar.dart';

class Persegi extends Bangun_Datar {
  late double sisi;
  //constructor
  Persegi(double sisi) {
    this.sisi = sisi;
  }

  @override
  double Luas() {
    // TODO: implement Luas
    return sisi * sisi;
  }

  @override
  double keliling() {
    // TODO: implement keliling
    return 4 * sisi;
  }
}
