import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class BigDot extends StatelessWidget {
  final bool? isColor;

  const BigDot({
    super.key,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding determines the size of BigDot
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        // width determines the thickness of the line
        border: Border.all(
          width: 2.5,
          color: isColor == null ? Colors.white : AppStyle.altDotColor,
        ),
        // borderRadius creates the circle effect
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
