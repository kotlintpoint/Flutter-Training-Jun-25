import 'package:dice_app/dice_roller.dart';
import 'package:dice_app/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    const topAlignment = Alignment.topLeft;
    const bottomAlignment = Alignment.bottomRight;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: topAlignment,
          end: bottomAlignment,
        ),
      ),
      child: DiceRoller()
    );
  }
}
