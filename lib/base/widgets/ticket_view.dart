// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  // map to display the ticket data
  final Map<String, dynamic> ticket;

  // wholeScreen variable determines the position of tickets
  // all_tickets >> is true (is centered)
  // ticket_view >> is true (is 0) or is false (16)
  final bool wholeScreen;

  // if isColor is true, return blue/red ticket
  // if isColor is false, return white ticket
  final bool? isColor;

  const TicketView({
    super.key,
    required this.ticket,
    this.wholeScreen = false,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width * 0.85;
    return SizedBox(
      height: 188,
      width: size,
      child: Container(
        margin: EdgeInsets.only(
          // using ternery operators... if condition is met, right margin is 0, if condition is not met, right margin is 16
          right: wholeScreen ? 0 : 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // TOP PART of ticket section (blue)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                //
                color: isColor == null
                    ? AppStyle.ticketBlue
                    : AppStyle.ticketWhite,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  // first line - show departure and destination locations with icons
                  Row(
                    children: [
                      TextStyleThird(
                        // Text to display departure location
                        // TextStyleThird requires text property
                        text: ticket['from']['code'],
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      // BigDot... re-usable widget to display circular dot
                      BigDot(
                        isColor: isColor,
                      ),

                      Expanded(
                        // Expanded wraps a Stack widget
                        // Stack is used for layout, placing widgets on top of each other.
                        child: Stack(
                          children: [
                            // SizedBox wraps the (custom) AppLayoutBuilderWidget
                            // the height sets the position of the AppLayoutBuilderWidget
                            const SizedBox(
                              height: 24,
                              // AppLayoutBuilderWidget is a customer widget
                              // randomDivider variable
                              child: AppLayoutBuilderWidget(randomDivider: 7),
                            ),
                            // plane icon display
                            Center(
                                child: Transform.rotate(
                              angle: 1.57,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : AppStyle.altIconColor,
                              ),
                            ))
                          ],
                        ),
                      ),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      // Text to display destination location
                      TextStyleThird(
                        text: ticket['to']['code'],
                        isColor: isColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // second line - show departure and destination names with time
                  Row(
                    children: [
                      SizedBox(
                        // Text to display departure location
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket['from']['name'],
                          isColor: isColor,
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      TextStyleFourth(
                        // display flight time
                        text: ticket['flying_time'],
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      SizedBox(
                        // Text to display destination location
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket['to']['name'],
                          // align - argument set to 'start' by default.
                          // add align argument to set to other than default option
                          align: TextAlign.end,
                          isColor: isColor,
                        ),
                      ),
                    ],
                  ),
                  // const Row(
                  //   children: [],
                  // ),
                ],
              ),
            ),
            // MIDDLE PART of ticket section (orange)
            Container(
              color: isColor == null
                  ? AppStyle.ticketOrange
                  : AppStyle.ticketWhite,
              child: Row(
                children: [
                  BigCircle(
                    // bool argument isRight set to false - displays decoration to the left
                    isRight: false,
                    isColor: isColor,
                  ),
                  // using Expanded with SizedBox (or another widget) takes up the space between
                  // the BigCircle widgets in the Row
                  // re-using AppLayoutBuilderWidget to create the dots effect
                  Expanded(
                    child: AppLayoutBuilderWidget(
                      randomDivider: 10,
                      dashWidth: 6,
                      isColor: isColor,
                    ),
                  ),
                  BigCircle(
                    // bool argument isRight set to true - displays decoration to the right
                    isRight: true,
                    isColor: isColor,
                  ),
                ],
              ),
            ),
            // BOTTOM PART of ticket section (orange)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyle.ticketOrange
                    : AppStyle.ticketWhite,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 30 : 0),
                    bottomRight: Radius.circular(isColor == null ? 30 : 0)),
              ),
              child: Column(
                children: [
                  // Row contains data and lables
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // first AppColumnTextLayout - date data and label
                      AppColumnTextLayout(
                        // topText = data
                        topText: ticket['date'],
                        isColor: isColor,

                        // bottomText = label
                        bottomText: 'Date',

                        // alignment position
                        alignment: CrossAxisAlignment.start,
                      ),
                      // middle AppColumnTextLayout - departure time data and label
                      AppColumnTextLayout(
                        // topText = data
                        topText: ticket['departure_time'],
                        isColor: isColor,
                        // bottomText = label
                        bottomText: 'Departure Time',
                        // alignment position
                        alignment: CrossAxisAlignment.center,
                      ),
                      // end AppColumnTextLayout - seat number data and label
                      AppColumnTextLayout(
                        // topText = data
                        topText: ticket['number'].toString(),
                        isColor: isColor,
                        // bottomText = label
                        bottomText: 'Seat No.',
                        // alignment position
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
