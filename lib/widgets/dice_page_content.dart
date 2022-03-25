import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/widgets/dice_widget.dart';
import 'package:flutter/material.dart';

class DicePageContent extends StatelessWidget {
  final GestureTapCallback onTap;
  final int leftDice;
  final int rightDice;
  const DicePageContent({
    @required this.onTap,
    @required this.leftDice,
    @required this.rightDice,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          splashColor: AppColors.goldDark,
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DiceWidget(diceNumber: leftDice),
              const SizedBox(width: 24.0),
              DiceWidget(diceNumber: rightDice),
            ],
          ),
        ),
      ),
    );
  }
}
