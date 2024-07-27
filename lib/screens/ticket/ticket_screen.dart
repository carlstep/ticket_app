import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

import '../../base/widgets/app_column_text_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Tickets',
            style: AppStyle.headlineStyle1,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            firstTab: 'Upcoming',
            secondTab: 'Previous',
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: TicketView(
              ticket: ticketList[0],
              isColor: true,
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          // bottom section of TicketView on TicketScreen
          // shows passenger details
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: AppStyle.ticketWhite,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Passenger Data
                    AppColumnTextLayout(
                      topText: 'Flutter DB',
                      bottomText: 'Passenger',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    // Passport Data
                    AppColumnTextLayout(
                      topText: '50344556',
                      bottomText: 'Passport',
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppLayoutBuilderWidget(
                  randomDivider: 15,
                  dashWidth: 5,
                  isColor: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                // display E-Ticket Number and Booking Code
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: '884533299000-01',
                      bottomText: 'E-Ticket Number',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      topText: 'KE3245',
                      bottomText: 'Booking Code',
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppLayoutBuilderWidget(
                  randomDivider: 15,
                  dashWidth: 5,
                  isColor: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                // Display Payment Method and Price data
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // display the visa card logo and digits
                        Row(
                          children: [
                            // scale - higher number decreases the image size
                            Image.asset(
                              AppMedia.visaCard,
                              scale: 11,
                            ),
                            const Text('*** 2562'),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Payment Method',
                          style: AppStyle.headlineStyle3,
                        ),
                      ],
                    ),
                    // display the price data and label
                    const AppColumnTextLayout(
                      topText: '\$349.49',
                      bottomText: 'Price',
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          // display of Barcode
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: AppStyle.ticketWhite,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(21),
                bottomLeft: Radius.circular(21),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: BarcodeWidget(
                    height: 90,
                    data: 'https://pub.dev',
                    barcode: Barcode.code128(),
                    drawText: false,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: TicketView(
              ticket: ticketList[0],
            ),
          ),
        ],
      ),
    );
  }
}
