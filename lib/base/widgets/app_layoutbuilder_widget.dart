// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  // randomDivider variable passed to parent widget
  final int randomDivider;

  const AppLayoutBuilderWidget({
    super.key,
    required this.randomDivider,
  });

  @override
  Widget build(BuildContext context) {
    // LayoutBuilder adjusts the layout based on the constraints provided by the parent widget
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      print('${(constraints.constrainWidth() / randomDivider).floor()}');
      // Flex controls the distribution of available space
      // must have a direction property
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        // List.generate is used to generate a list of widgets based on a given condition
        children: List.generate(
          // (constraints.constrainWidth() / randomDivider).floor(), - this expression calculates the number of dividers to generate
          // constraints.constrainWidth() >> retrieves the available width
          // / randomDivider >> divides the available width by the given value, 6 in this case.
          // .floor() >> method to round down the result to an integer (the integer is divided by randomDivider)
          (constraints.constrainWidth() / randomDivider).floor(),
          // at each index, returns a SizedBox
          (index) => const SizedBox(
            // width defines the length of the divider
            // height defines the thickness
            width: 4,
            height: 2,
            child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
          ),
          // The AppLayoutBuilderWidget allows for dynamic generation of dividers based on the available space.
        ),
      );
    });
  }
}
