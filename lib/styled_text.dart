import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String
      text; // final insures that no reassignment of a variable will take place  // const is also known as compile time constant
  const StyledText(this.text, {super.key});

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
        letterSpacing: 2,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
