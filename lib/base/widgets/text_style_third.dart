// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool? isColor;

  const TextStyleThird({
    super.key,
    required this.text,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      // text property is passed to the widget
      text,
      style: isColor == null
          ? AppStyle.headlineStyle3.copyWith(color: Colors.white)
          : AppStyle.headlineStyle3,
    );
  }
}
