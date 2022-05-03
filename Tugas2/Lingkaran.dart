import 'Bangun_Datar.dart';

class Lingkaran extends Bangun_Datar {
  late double r;
  Lingkaran(double r) {
    this.r = r;
  }
  @override
  double keliling() {
    // TODO: implement keliling
    return 2 * 3.14 * r;
  }

  @override
  double Luas() {
    // TODO: implement Luas
    return 3.14 * r * r;
  }
}
