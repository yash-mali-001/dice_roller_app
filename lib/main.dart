import 'package:flutter/material.dart'; //package:package_name
import './gradient_container.dart'; // import 'package:diceroller/gradient_container.dart';

void main() {
  runApp(const DiceRoller());
}

class DiceRoller extends StatelessWidget {
  const DiceRoller({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
            colors1: Color.fromARGB(255, 13, 95, 175),
            colors2: Color.fromARGB(255, 7, 26, 161),
            colors3: Color.fromARGB(255, 13, 95, 175)),
      ),
    );
  }
}
