import './dice_roller.dart';
import 'package:flutter/material.dart'; // here flutter and dice roller are the names of the packages

class GradientContainer extends StatelessWidget {
  final Color colors1;
  final Color colors2;
  final Color colors3;

  const GradientContainer(
      {super.key,
      required this.colors1,
      required this.colors2,
      required this.colors3}); //super refers  to parent clael[ss

  @override //Annotation to tell that we are overriding build() method
  Widget build(
      BuildContext
          context) // Context has some metadata about the widget tree to build
  {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colors1, colors2, colors3],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

//() {
//   // anonymous function , this function is defined here itself which on receiving a click executes the definition
// },
