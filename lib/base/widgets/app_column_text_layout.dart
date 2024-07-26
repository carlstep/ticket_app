// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'text_style_fourth.dart';
import 'text_style_third.dart';

// widget to arrange ticket data (orange section) lower section.
// display data into a column and re-use

class AppColumnTextLayout extends StatelessWidget {
  // topText, bottomText, alignment >> are passed thru
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  const AppColumnTextLayout({
    super.key,
    required this.topText,
    required this.bottomText,
    required this.alignment,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        // top element DATA
        TextStyleFourth(
          text: topText,
          isColor: isColor,
        ),
        const SizedBox(
          height: 5,
        ),
        // bottom element LABELS
        TextStyleThird(
          text: bottomText,
          isColor: isColor,
        ),
      ],
    );
  }
}
