import 'dart:math';

class MathServices {
  static int getRandomNumber() {
    return Random().nextInt(6) + 1;
  }
}
