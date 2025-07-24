import 'dart:math';

import 'package:dice_app/styled_text.dart';
import 'package:flutter/material.dart';


final randomise = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = 2;

  void rollDice(){
    setState(() {
 activeDiceImage = randomise.nextInt(6)+1;
    });
    print("Changing Dice");
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            Image.asset("assets/images/dice_image-1.png", width: 200),
      SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: const StyledText(text: 'Roll Dice'),),

        ],
      ),
    );
  }
}