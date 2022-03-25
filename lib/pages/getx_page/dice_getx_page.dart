import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/constants/text_styles/app_text_styles.dart';
import 'package:dice_app/data/getx_data/controllers/dice_controller.dart';
import 'package:dice_app/widgets/dice_page_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiceGetXPage extends StatelessWidget {
  DiceGetXPage({Key key}) : super(key: key);

  final DiceController _diceController = Get.put(DiceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      appBar: AppBar(
        backgroundColor: AppColors.yellow,
        centerTitle: true,
        title: const Text(
          'Dice GetX',
          style: AppTextStyles.appBarTitle,
        ),
      ),
      body: Obx(() {
        return DicePageContent(
          onTap: () => _diceController.getRandomNumber(),
          leftDice: _diceController.leftDice.value,
          rightDice: _diceController.rightDice.value,
        );
      }),
    );
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
