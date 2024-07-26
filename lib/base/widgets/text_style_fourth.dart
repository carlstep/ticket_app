// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool? isColor;

  const TextStyleFourth({
    super.key,
    required this.text,
    this.align = TextAlign.start,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      // text property is passed to the widget
      text,
      textAlign: align,
      style: isColor == null
          ? AppStyle.headlineStyle4.copyWith(
              color: Colors.white,
            )
          : AppStyle.headlineStyle4,
    );
  }
}
