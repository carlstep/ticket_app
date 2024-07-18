import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width * 0.85;
    return SizedBox(
      height: 178,
      width: size,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: AppStyle.ticketBlue,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Column(
          children: [
            Row(
              children: [
                // Text to display origin location
                Text(
                  'NYC',
                  style: AppStyle.headlineStyle3.copyWith(color: Colors.white),
                ),
                Expanded(
                  child: Container(),
                ),
                // BigDot... re-usable widget to display circular dot
                const BigDot(),
                // Expanded wraps a Stack widget
                const Expanded(
                  // Stack is used for layout, placing widgets on top of each other.
                  child: Stack(
                    children: [
                      // SizedBox wraps the (custom) AppLayoutBuilderWidget
                      // the height sets the position of the AppLayoutBuilderWidget
                      SizedBox(
                        height: 24,
                        // AppLayoutBuilderWidget is a customer widget
                        // randomDivider variable
                        child: AppLayoutBuilderWidget(randomDivider: 6),
                      ),
                      Center(child: Text('plane'))
                    ],
                  ),
                ),
                const BigDot(),
                Expanded(
                  child: Container(),
                ),
                // Text to display destination location
                Text(
                  'LDN',
                  style: AppStyle.headlineStyle3.copyWith(color: Colors.white),
                ),
              ],
            ),
            const Row(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
