import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding determines the size of BigDot
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        // width determines the thickness of the line
        border: Border.all(width: 2.5, color: Colors.white),
        // borderRadius creates the circle effect
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
