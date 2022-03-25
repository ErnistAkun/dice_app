import 'dart:math' as math;
import 'dart:developer' as dev;
import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/constants/text_styles/app_text_styles.dart';
import 'package:dice_app/data/repositories/math_repository.dart';
import 'package:dice_app/widgets/dice_page_content.dart';
import 'package:dice_app/widgets/dice_widget.dart';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftDice = 1;
  int _rightDice = 3;
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      appBar: AppBar(
        backgroundColor: AppColors.yellow,
        centerTitle: true,
        title: Text(
          'Dice $_count',
          style: AppTextStyles.appBarTitle,
        ),
      ),
      body: DicePageContent(
        onTap: _getRandomNumber,
        leftDice: _leftDice,
        rightDice: _rightDice,
      ),
    );
  }

  void _getRandomNumber() {
    _leftDice = MathRepository.getRandomNumber();
    _rightDice = MathRepository.getRandomNumber();
    _count++;
    setState(() {});
  }

  void change() {
    math.Random random = math.Random();
    setState(() {
      _leftDice = random.nextInt(6) + 1;
      _rightDice = random.nextInt(6) + 1;
    });
  }
}
