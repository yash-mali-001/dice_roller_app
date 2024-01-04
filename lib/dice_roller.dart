import 'dart:math';
import './styled_text.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentNumber = 2;

  void rollDice() {
    setState(() {
      // setState is a function provided by State class
      currentNumber = randomizer.nextInt(6) +
          1; // Random value from 0 to 6      (6) max limit .. 0 to 5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/$currentNumber.png',
            width: 200,
            height: 200,
          ),
        ),

        const SizedBox(
          height: 50,
        ),

        // 2nd children of Column
        Container(
          color: Colors.red,
          child: TextButton(
            onPressed: rollDice,
            child: const StyledText("ROLL"),
          ),
        )
      ],
    );
  }
}
