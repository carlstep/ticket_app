// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ticket_app/base/res/styles/app_styles.dart';

// a reusable widget to display section text headings
// passes bigText variable and smallText variable
//
class AppDoubleText extends StatelessWidget {
  const AppDoubleText({
    super.key,
    required this.bigText,
    required this.smallText,
    required this.func,
  });

  final String bigText;
  final String smallText;

  // callback function variable
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyle.headlineStyle2,
        ),
        InkWell(
          // func passes the function as a property to its parent
          // creating a function variable means different functions can be used
          onTap: func,
          child: Text(
            smallText,
            // use copyWith() method... copy some properties of the
            // class, but can change or add other properties
            // AppStyle.textStyle references the main style, copyWith() allows
            // for the color to be changed.
            style: AppStyle.textStyle.copyWith(color: AppStyle.primaryColor),
          ),
        )
      ],
    );
  }
}
