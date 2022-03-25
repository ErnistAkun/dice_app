import 'package:dice_app/data/services/math_services.dart';

class MathRepository {
  static int getRandomNumber() {
    return MathServices.getRandomNumber();
  }
}
