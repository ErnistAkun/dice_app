import 'package:dice_app/data/repositories/math_repository.dart';
import 'package:get/get.dart';

class DiceController extends GetxController {
  RxInt leftDice = 1.obs;
  RxInt rightDice = 4.obs;
  RxInt count = 0.obs;

  void getRandomNumber() {
    leftDice.value = MathRepository.getRandomNumber();
    rightDice.value = MathRepository.getRandomNumber();
    count.value++;
  }
}
